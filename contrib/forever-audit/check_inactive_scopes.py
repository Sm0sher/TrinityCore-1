from pathlib import Path
from collections import defaultdict
from tempfile import TemporaryDirectory
import re,json
from inactive_scopes import refine

cases=[
    ('unbound', 'struct dead : SpellScript { void Go(){ SummonCreature(90001); } }; void AddSC_test(){ RegisterSpellScript(dead); }',[],False),
    ('bound', 'struct dead : SpellScript { void Go(){ SummonCreature(90001); } }; void AddSC_test(){ RegisterSpellScript(dead); }',['dead'],True),
    ('shared constant', 'enum { NPC_X=90001 }; struct dead : SpellScript { void Go(){ SummonCreature(NPC_X); } }; struct live : SpellScript { void Go(){ SummonCreature(NPC_X); } }; void AddSC_test(){ RegisterSpellScript(dead); RegisterSpellScript(live); }',['live'],True),
    ('dead constant', 'enum { NPC_X=90001 }; struct dead : SpellScript { void Go(){ SummonCreature(NPC_X); } }; void AddSC_test(){ RegisterSpellScript(dead); }',[],False),
    ('direct construction', 'struct dead : SpellScript { void Go(){ SummonCreature(90001); } }; void AddSC_test(){ RegisterSpellScript(dead); new dead(); }',[],True),
    ('unknown registration', 'struct dead : SpellScript { void Go(){ SummonCreature(90001); } }; void AddSC_test(){ RegisterCustom(dead); }',[],True),
    ('opaque representation', 'struct dead : SpellScript { void Go(){ SummonCreature(90001); } }; int other=0x15F91; void AddSC_test(){ RegisterSpellScript(dead); }',[],True),
    ('floating representation', 'struct dead : SpellScript { void Go(){ SummonCreature(90001); } }; float other=90001.0f; void AddSC_test(){ RegisterSpellScript(dead); }',[],True),
    ('unbound AI', 'struct dead : ScriptedAI { void Go(){ SummonCreature(90001); } }; void AddSC_test(){ RegisterCreatureAI(dead); }',[],False),
    ('bound AI', 'struct dead : ScriptedAI { void Go(){ SummonCreature(90001); } }; void AddSC_test(){ RegisterCreatureAI(dead); }',['dead'],True),
    ('lazy wrapper', 'class Wrap : public SpellScriptLoader { public: Wrap() : SpellScriptLoader("alias") {} struct Inner : SpellScript { void Go(){ SummonCreature(90001); } }; }; void AddSC_test(){ new Wrap(); }',[],False),
    ('bound wrapper alias', 'class Wrap : public SpellScriptLoader { public: Wrap() : SpellScriptLoader("alias") {} struct Inner : SpellScript { void Go(){ SummonCreature(90001); } }; }; void AddSC_test(){ new Wrap(); }',['alias'],True),
    ('startup work', 'class Wrap : public SpellScriptLoader { public: Wrap() : SpellScriptLoader("alias") { SummonCreature(90001); } }; void AddSC_test(){ new Wrap(); }',[],True),
    ('startup member', 'class Wrap : public SpellScriptLoader { public: Wrap() : SpellScriptLoader("alias") {} int x=SummonCreature(90001); }; void AddSC_test(){ new Wrap(); }',[],True),
    ('unbound creature wrapper', 'class Wrap : public CreatureScript { public: Wrap() : CreatureScript("alias") {} struct Inner : ScriptedAI { void Go(){ SummonCreature(90001); } }; }; void AddSC_test(){ new Wrap(); }',[],False),
    ('bound creature wrapper', 'class Wrap : public CreatureScript { public: Wrap() : CreatureScript("alias") {} struct Inner : ScriptedAI { void Go(){ SummonCreature(90001); } }; }; void AddSC_test(){ new Wrap(); }',['alias'],True),
    ('static startup call', 'struct dead : SpellScript { inline static int x=SummonCreature(90001); }; void AddSC_test(){ RegisterSpellScript(dead); }',[],True),
    ('static custom object', 'struct dead : SpellScript { inline static CustomObject x{90001}; }; void AddSC_test(){ RegisterSpellScript(dead); }',[],True),
    ('static constant', 'struct dead : SpellScript { inline static constexpr int x=90001; void Go(){ SummonCreature(x); } }; void AddSC_test(){ RegisterSpellScript(dead); }',[],False),
]
for name,source,bindings,retained in cases:
    with TemporaryDirectory() as temp:
        repo=Path(temp);file='src/server/scripts/test.cpp';path=repo/file;path.parent.mkdir(parents=True);path.write_text(source)
        tokens={token:[file] for token in set(re.findall(r'\b\w+\b',source))}
        facts=dict(files={file:dict(npc_numbers=[90001],numbers=[90001])},tokens=tokens)
        def query(sql):
            if sql.startswith('SELECT c.TABLE_NAME'):return [('spell_script_names','ScriptName')]
            return [[binding] for binding in bindings]
        result=refine(facts,repo,repo,query)
        assert (90001 in result['files'][file]['npc_numbers'])==retained,name
print('Scope safety checks:',len(cases),'passed')

for included in [False,True]:
    with TemporaryDirectory() as temp:
        repo=Path(temp);file='src/server/scripts/test.cpp';path=repo/file;path.parent.mkdir(parents=True)
        source='enum { NPC_X=90001 }; struct dead : SpellScript { void Go(){ SummonCreature(NPC_X); } }; void AddSC_test(){ RegisterSpellScript(dead); }'
        path.write_text(source)
        other='src/core.cpp'
        facts=dict(files={file:dict(npc_numbers=[90001],numbers=[90001]),other:dict(includes=[file] if included else [],npc_numbers=[90001])},tokens={token:[file] for token in set(re.findall(r'\b\w+\b',source))})
        facts['tokens']['NPC_X'].append(other)
        def query(sql):return [('spell_script_names','ScriptName')] if sql.startswith('SELECT c.TABLE_NAME') else []
        result=refine(facts,repo,repo,query)
        assert (90001 in result['files'][file]['npc_numbers'])==included
        assert result['files'][other]['npc_numbers']==[90001]
print('Cross-file constant safety checks: 2 passed')
