"""Remove graph edges proven to belong only to unbound lazy spell classes."""
from pathlib import Path
from collections import defaultdict
import re,json,hashlib
import tree_sitter,tree_sitter_cpp

def walk(node):
    yield node
    for child in node.named_children:yield from walk(child)

def inside(offset,node):return node.start_byte<=offset<node.end_byte

def has_runtime_static_work(node):
    # Static members can initialize before any script instance is requested.
    # Permit constant initialization and the literal data containers verified in
    # this core; custom types and expressions remain opaque.
    scalar_types={'uint8','uint16','uint32','uint64','int8','int16','int32','int64','int','unsigned','bool','float','double'}
    literal_containers={'std::vector<uint32>','std::unordered_map<Races,std::array<uint32,2>>'}
    for field in walk(node):
        if field.type!='field_declaration' or not any(child.type=='storage_class_specifier' and child.text==b'static' for child in field.named_children):continue
        if any(child.text in (b'constexpr',b'constinit') for child in field.named_children):continue
        typ=field.child_by_field_name('type')
        if typ is None or re.sub(rb'\s+',b'',typ.text).decode() not in scalar_types|literal_containers:return True
        if any(child.type in ('call_expression','new_expression','lambda_expression','subscript_expression','field_expression','assignment_expression','update_expression') for child in walk(field)):return True
        initializer=field.child_by_field_name('default_value')
        if initializer is not None and any(child.type=='identifier' and not re.fullmatch(rb'RACE_\w+',child.text) for child in walk(initializer)):return True
    return False

def refine(facts,repo,out,query):
    bindings=set();binding_sources=[]
    for table,column in query("SELECT c.TABLE_NAME,c.COLUMN_NAME FROM information_schema.columns c JOIN information_schema.tables t ON t.TABLE_SCHEMA=c.TABLE_SCHEMA AND t.TABLE_NAME=c.TABLE_NAME WHERE c.TABLE_SCHEMA='world' AND t.TABLE_TYPE='BASE TABLE' AND LOWER(c.COLUMN_NAME) IN ('scriptname','script')"):
        assert re.fullmatch(r'\w+',table) and re.fullmatch(r'\w+',column)
        bindings.update(row[0] for row in query('SELECT DISTINCT `'+column+'` FROM `'+table+'` WHERE `'+column+"`<>''"))
        binding_sources.append([table,column])
    parser=tree_sitter.Parser(tree_sitter.Language(tree_sitter_cpp.language()))
    proof=[];unused=set()
    for file,row in facts['files'].items():
        if not file.startswith('src/server/scripts/') or not file.endswith('.cpp'):continue
        raw=(Path(repo)/file).read_bytes()
        tree=parser.parse(raw);nodes=list(walk(tree.root_node))
        if tree.root_node.has_error:continue
        clean=bytearray(raw)
        for node in nodes:
            if node.type=='comment':clean[node.start_byte:node.end_byte]=b' '*(node.end_byte-node.start_byte)
        clean=bytes(clean)
        registrations=defaultdict(list)
        aliases={}
        for match in re.finditer(rb'\bRegister(?:SpellScript|CreatureAI|GameObjectAI|AreaTriggerAI|ConversationAI)\s*\(\s*(\w+)\s*\)',clean):
            registrations[match[1].decode()].append((match.start(),match.end()))
            aliases[match[1].decode()]=match[1].decode()
        # Older spell wrappers are also lazy, but their constructor itself runs
        # at startup. Accept only a field-free, empty constructor with one fixed
        # SpellScriptLoader name; all other constructors remain opaque.
        wrappers=set()
        for node in nodes:
            if node.type!='class_specifier':continue
            name_node=node.child_by_field_name('name');body=node.child_by_field_name('body')
            bases=next((child for child in node.named_children if child.type=='base_class_clause'),None)
            if name_node is None or body is None or bases is None or not re.fullmatch(rb':\s*(?:public\s+)?(?:SpellScriptLoader|CreatureScript|GameObjectScript|AreaTriggerScript|ConditionScript)\s*',bases.text):continue
            name=name_node.text.decode()
            fields=[child for child in body.named_children if child.type=='field_declaration' and child.child_by_field_name('declarator') is not None and child.child_by_field_name('declarator').type!='function_declarator']
            if fields:continue
            constructors=[];destructor=False
            for fn in body.named_children:
                if fn.type!='function_definition':continue
                decl=fn.child_by_field_name('declarator');decl=decl.child_by_field_name('declarator') if decl else None
                if decl and decl.text==('~'+name).encode():destructor=True
                if decl and decl.text==name.encode():constructors.append(fn)
            if destructor or len(constructors)!=1:continue
            ctor=constructors[0];ctor_body=ctor.child_by_field_name('body')
            initializer=next((child for child in ctor.named_children if child.type=='field_initializer_list'),None)
            if ctor_body is None or any(child.type!='comment' for child in ctor_body.named_children) or initializer is None:continue
            alias=re.fullmatch(rb':\s*(?:SpellScriptLoader|CreatureScript|GameObjectScript|AreaTriggerScript|ConditionScript)\s*\(\s*"(\w+)"\s*\)\s*',initializer.text)
            if not alias:continue
            occurrences=list(re.finditer(rb'\bnew\s+'+re.escape(name.encode())+rb'\s*\(\s*\)',clean))
            if not occurrences:continue
            aliases[name]=alias[1].decode();wrappers.add(name)
            registrations[name].extend((match.start(),match.end()) for match in occurrences)
        inactive={}
        for node in nodes:
            if node.type not in ('class_specifier','struct_specifier'):continue
            name=node.child_by_field_name('name')
            if not name:continue
            name=name.text.decode()
            if aliases.get(name,name) in bindings or name not in registrations:continue
            if set(facts['tokens'].get(name,[]))-{file}:continue
            if has_runtime_static_work(node):continue
            bases=next((child for child in node.named_children if child.type=='base_class_clause'),None)
            if name not in wrappers and (bases is None or not re.fullmatch(rb':\s*(?:public\s+)?(?:SpellScript|AuraScript|ScriptedAI|BossAI|PassiveAI|NullCreatureAI|CombatAI|CasterAI|FollowerAI|PetAI|VehicleAI|PossessedAI|ArcherAI|TurretAI|GuardAI|GameObjectAI|AreaTriggerAI|ConversationAI)\s*',bases.text)):continue
            uses=list(re.finditer(rb'\b'+re.escape(name.encode())+rb'\b',clean))
            if any(not inside(use.start(),node) and not any(start<=use.start()<end for start,end in registrations[name]) for use in uses):continue
            inactive[name]=node
        if not inactive:continue
        ranges=list(inactive.values())
        def dead(offset):return any(inside(offset,node) for node in ranges)
        constants={}
        cpp_is_included=any(file in other.get('includes',[]) for name,other in facts['files'].items() if name!=file)
        for node in nodes:
            if node.type!='enumerator':continue
            value=node.child_by_field_name('value');name=node.child_by_field_name('name')
            if value is None or name is None or value.type!='number_literal' or not re.fullmatch(rb'\d+[uUlL]*',value.text):continue
            symbol=name.text.decode()
            if cpp_is_included:continue  # Included implementation can expose its enumerators to another unit.
            uses=list(re.finditer(rb'\b'+re.escape(symbol.encode())+rb'\b',clean))
            if all(inside(use.start(),node) or dead(use.start()) for use in uses):constants[value.start_byte]=(node,symbol)
        candidate=set().union(*(set(row.get(key,[])) for key in ['npc_numbers','quest_numbers','gameobject_numbers','numbers']))
        occurrences=defaultdict(list)
        for match in re.finditer(rb'(?<![\w.])\d+[uUlL]*(?![\w.])',clean):
            value=int(match[0].rstrip(b'uUlL'))
            if value not in candidate:continue
            constant=constants.get(match.start())
            occurrences[value].append(dict(offset=match.start(),line=raw[:match.start()].count(b'\n')+1,reason='unbound lazy spell class' if dead(match.start()) else 'constant used only by unbound lazy spell classes' if constant else None,symbol=constant[1] if constant else None))
        # Other numeric representations are opaque; do not discard their value.
        opaque=set()
        for node in nodes:
            if node.type!='number_literal':continue
            try:value=int(node.text.rstrip(b'uUlL'),0)
            except ValueError:
                try:value=int(float(node.text.rstrip(b'uUlLfF')))
                except ValueError:continue
            if value in candidate and not re.fullmatch(rb'\d+[uUlL]*',node.text):opaque.add(value)
        discard={value for value,uses in occurrences.items() if value not in opaque and uses and all(use['reason'] for use in uses)}
        if not discard:continue
        for key in ['npc_numbers','quest_numbers','gameobject_numbers','numbers']:
            if key in row:row[key]=[value for value in row[key] if value not in discard]
        unused.update(aliases[name] for name in inactive)
        proof.append(dict(file=file,sha256=hashlib.sha256(raw).hexdigest(),unbound_classes=sorted(inactive),unbound_names=sorted(aliases[name] for name in inactive),removed_numbers=sorted(discard),occurrences={str(value):occurrences[value] for value in sorted(discard)}))
    result=dict(binding_sources=binding_sources,binding_names=sorted(bindings),protected_unbound_names=sorted(unused),proof=proof)
    (Path(out)/'inactive-spell-proof.json').write_text(json.dumps(result,indent=2),encoding='utf8')
    print('Unbound spell scopes:',len(proof),'files',sum(len(row['removed_numbers']) for row in proof),'file/value pairs',flush=True)
    return facts
