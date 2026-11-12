-- Persist loader defaults and archive unusable records in Forever 70888.
START TRANSACTION;
DELETE d FROM conditions d WHERE (d.SourceTypeOrReferenceId=15 AND d.SourceGroup=17269 AND d.SourceEntry=0 AND d.ConditionTypeOrReference=56 AND d.ConditionValue1=81408 AND d.ScriptName='') OR
(d.SourceTypeOrReferenceId=19 AND d.SourceGroup=0 AND d.SourceEntry=29547 AND d.ConditionTypeOrReference=56 AND d.ConditionValue1=85466 AND d.ScriptName='') OR
(d.SourceTypeOrReferenceId=19 AND d.SourceGroup=0 AND d.SourceEntry=29611 AND d.ConditionTypeOrReference=56 AND d.ConditionValue1=85466 AND d.ScriptName='') OR
(d.SourceTypeOrReferenceId=19 AND d.SourceGroup=0 AND d.SourceEntry=29612 AND d.ConditionTypeOrReference=56 AND d.ConditionValue1=85466 AND d.ScriptName='') OR
(d.SourceTypeOrReferenceId=19 AND d.SourceGroup=0 AND d.SourceEntry=90630 AND d.ConditionTypeOrReference=56 AND d.ConditionValue1=138492 AND d.ScriptName='') OR
(d.SourceTypeOrReferenceId=19 AND d.SourceGroup=0 AND d.SourceEntry=90631 AND d.ConditionTypeOrReference=56 AND d.ConditionValue1=138492 AND d.ScriptName='') OR
(d.SourceTypeOrReferenceId=19 AND d.SourceGroup=0 AND d.SourceEntry=90632 AND d.ConditionTypeOrReference=56 AND d.ConditionValue1=138493 AND d.ScriptName='') OR
(d.SourceTypeOrReferenceId=19 AND d.SourceGroup=0 AND d.SourceEntry=90633 AND d.ConditionTypeOrReference=56 AND d.ConditionValue1=138495 AND d.ScriptName='') OR
(d.SourceTypeOrReferenceId=19 AND d.SourceGroup=0 AND d.SourceEntry=90634 AND d.ConditionTypeOrReference=56 AND d.ConditionValue1=138495 AND d.ScriptName='') OR
(d.SourceTypeOrReferenceId=19 AND d.SourceGroup=0 AND d.SourceEntry=90635 AND d.ConditionTypeOrReference=56 AND d.ConditionValue1=138496 AND d.ScriptName='') OR
(d.SourceTypeOrReferenceId=19 AND d.SourceGroup=0 AND d.SourceEntry=90636 AND d.ConditionTypeOrReference=56 AND d.ConditionValue1=138499 AND d.ScriptName='') OR
(d.SourceTypeOrReferenceId=19 AND d.SourceGroup=0 AND d.SourceEntry=90637 AND d.ConditionTypeOrReference=56 AND d.ConditionValue1=138499 AND d.ScriptName='') OR
(d.SourceTypeOrReferenceId=19 AND d.SourceGroup=0 AND d.SourceEntry=90638 AND d.ConditionTypeOrReference=56 AND d.ConditionValue1=138500 AND d.ScriptName='') OR
(d.SourceTypeOrReferenceId=19 AND d.SourceGroup=0 AND d.SourceEntry=90665 AND d.ConditionTypeOrReference=56 AND d.ConditionValue1=138504 AND d.ScriptName='') OR
(d.SourceTypeOrReferenceId=19 AND d.SourceGroup=0 AND d.SourceEntry=90666 AND d.ConditionTypeOrReference=56 AND d.ConditionValue1=138505 AND d.ScriptName='') OR
(d.SourceTypeOrReferenceId=19 AND d.SourceGroup=0 AND d.SourceEntry=91142 AND d.ConditionTypeOrReference=56 AND d.ConditionValue1=138497 AND d.ScriptName='') OR
(d.SourceTypeOrReferenceId=19 AND d.SourceGroup=0 AND d.SourceEntry=91143 AND d.ConditionTypeOrReference=56 AND d.ConditionValue1=138501 AND d.ScriptName='') OR
(d.SourceTypeOrReferenceId=19 AND d.SourceGroup=0 AND d.SourceEntry=92330 AND d.ConditionTypeOrReference=56 AND d.ConditionValue1=138503 AND d.ScriptName='') OR
(d.SourceTypeOrReferenceId=35 AND d.SourceGroup=0 AND d.SourceEntry=44889 AND d.ConditionTypeOrReference=56 AND d.ConditionValue1=83446 AND d.ScriptName='') OR
(d.SourceTypeOrReferenceId=35 AND d.SourceGroup=0 AND d.SourceEntry=46050 AND d.ConditionTypeOrReference=56 AND d.ConditionValue1=94589 AND d.ScriptName='') OR
(d.SourceTypeOrReferenceId=35 AND d.SourceGroup=0 AND d.SourceEntry=46614 AND d.ConditionTypeOrReference=56 AND d.ConditionValue1=94589 AND d.ScriptName='') OR
(d.SourceTypeOrReferenceId=35 AND d.SourceGroup=0 AND d.SourceEntry=46623 AND d.ConditionTypeOrReference=56 AND d.ConditionValue1=94589 AND d.ScriptName='') OR
(d.SourceTypeOrReferenceId=35 AND d.SourceGroup=0 AND d.SourceEntry=46727 AND d.ConditionTypeOrReference=56 AND d.ConditionValue1=96275 AND d.ScriptName='');
DELETE d FROM creature_loot_template d WHERE (d.Entry=256035 AND d.QuestRequired=0) OR
(d.Entry=5983 AND d.QuestRequired=0);
DELETE d FROM gameobject_loot_template d WHERE (d.Entry=407566 AND d.QuestRequired=0) OR
(d.Entry=578937 AND d.QuestRequired=0) OR
(d.Entry=578959 AND d.QuestRequired=0) OR
(d.Entry=613238 AND d.QuestRequired=0) OR
(d.Entry=613286 AND d.QuestRequired=0) OR
(d.Entry=616466 AND d.QuestRequired=0) OR
(d.Entry=616467 AND d.QuestRequired=0) OR
(d.Entry=616468 AND d.QuestRequired=0) OR
(d.Entry=616907 AND d.QuestRequired=0) OR
(d.Entry=617674 AND d.QuestRequired=0) OR
(d.Entry=617675 AND d.QuestRequired=0) OR
(d.Entry=617839 AND d.QuestRequired=0) OR
(d.Entry=619450 AND d.QuestRequired=0) OR
(d.Entry=623295 AND d.QuestRequired=0) OR
(d.Entry=626718 AND d.QuestRequired=0) OR
(d.Entry=626752 AND d.QuestRequired=0) OR
(d.Entry=630871 AND d.QuestRequired=0) OR
(d.Entry=630885 AND d.QuestRequired=0) OR
(d.Entry=656161 AND d.QuestRequired=0) OR
(d.Entry=661092 AND d.QuestRequired=0) OR
(d.Entry=661093 AND d.QuestRequired=0) OR
(d.Entry=661448 AND d.QuestRequired=0) OR
(d.Entry=661449 AND d.QuestRequired=0) OR
(d.Entry=664122 AND d.QuestRequired=0) OR
(d.Entry=671154 AND d.QuestRequired=0);
DELETE d FROM gameobject_template d WHERE (d.entry=185881 AND COALESCE(d.StringId,'')='' AND d.ScriptName='' AND NOT EXISTS (SELECT 1 FROM gameobject g WHERE g.id=d.entry)) OR
(d.entry=190478 AND COALESCE(d.StringId,'')='' AND d.ScriptName='' AND NOT EXISTS (SELECT 1 FROM gameobject g WHERE g.id=d.entry)) OR
(d.entry=203964 AND COALESCE(d.StringId,'')='' AND d.ScriptName='' AND NOT EXISTS (SELECT 1 FROM gameobject g WHERE g.id=d.entry)) OR
(d.entry=205153 AND COALESCE(d.StringId,'')='' AND d.ScriptName='' AND NOT EXISTS (SELECT 1 FROM gameobject g WHERE g.id=d.entry)) OR
(d.entry=207256 AND COALESCE(d.StringId,'')='' AND d.ScriptName='' AND NOT EXISTS (SELECT 1 FROM gameobject g WHERE g.id=d.entry)) OR
(d.entry=209615 AND COALESCE(d.StringId,'')='' AND d.ScriptName='' AND NOT EXISTS (SELECT 1 FROM gameobject g WHERE g.id=d.entry)) OR
(d.entry=211597 AND COALESCE(d.StringId,'')='' AND d.ScriptName='' AND NOT EXISTS (SELECT 1 FROM gameobject g WHERE g.id=d.entry)) OR
(d.entry=211601 AND COALESCE(d.StringId,'')='' AND d.ScriptName='' AND NOT EXISTS (SELECT 1 FROM gameobject g WHERE g.id=d.entry)) OR
(d.entry=211602 AND COALESCE(d.StringId,'')='' AND d.ScriptName='' AND NOT EXISTS (SELECT 1 FROM gameobject g WHERE g.id=d.entry)) OR
(d.entry=223089 AND COALESCE(d.StringId,'')='' AND d.ScriptName='' AND NOT EXISTS (SELECT 1 FROM gameobject g WHERE g.id=d.entry)) OR
(d.entry=235313 AND COALESCE(d.StringId,'')='' AND d.ScriptName='' AND NOT EXISTS (SELECT 1 FROM gameobject g WHERE g.id=d.entry)) OR
(d.entry=235859 AND COALESCE(d.StringId,'')='' AND d.ScriptName='' AND NOT EXISTS (SELECT 1 FROM gameobject g WHERE g.id=d.entry)) OR
(d.entry=235860 AND COALESCE(d.StringId,'')='' AND d.ScriptName='' AND NOT EXISTS (SELECT 1 FROM gameobject g WHERE g.id=d.entry)) OR
(d.entry=236279 AND COALESCE(d.StringId,'')='' AND d.ScriptName='' AND NOT EXISTS (SELECT 1 FROM gameobject g WHERE g.id=d.entry)) OR
(d.entry=243698 AND COALESCE(d.StringId,'')='' AND d.ScriptName='' AND NOT EXISTS (SELECT 1 FROM gameobject g WHERE g.id=d.entry)) OR
(d.entry=247348 AND COALESCE(d.StringId,'')='' AND d.ScriptName='' AND NOT EXISTS (SELECT 1 FROM gameobject g WHERE g.id=d.entry)) OR
(d.entry=252830 AND COALESCE(d.StringId,'')='' AND d.ScriptName='' AND NOT EXISTS (SELECT 1 FROM gameobject g WHERE g.id=d.entry)) OR
(d.entry=290532 AND COALESCE(d.StringId,'')='' AND d.ScriptName='' AND NOT EXISTS (SELECT 1 FROM gameobject g WHERE g.id=d.entry)) OR
(d.entry=297790 AND COALESCE(d.StringId,'')='' AND d.ScriptName='' AND NOT EXISTS (SELECT 1 FROM gameobject g WHERE g.id=d.entry)) OR
(d.entry=303149 AND COALESCE(d.StringId,'')='' AND d.ScriptName='' AND NOT EXISTS (SELECT 1 FROM gameobject g WHERE g.id=d.entry)) OR
(d.entry=303150 AND COALESCE(d.StringId,'')='' AND d.ScriptName='' AND NOT EXISTS (SELECT 1 FROM gameobject g WHERE g.id=d.entry)) OR
(d.entry=303151 AND COALESCE(d.StringId,'')='' AND d.ScriptName='' AND NOT EXISTS (SELECT 1 FROM gameobject g WHERE g.id=d.entry)) OR
(d.entry=307028 AND COALESCE(d.StringId,'')='' AND d.ScriptName='' AND NOT EXISTS (SELECT 1 FROM gameobject g WHERE g.id=d.entry)) OR
(d.entry=310663 AND COALESCE(d.StringId,'')='' AND d.ScriptName='' AND NOT EXISTS (SELECT 1 FROM gameobject g WHERE g.id=d.entry)) OR
(d.entry=316899 AND COALESCE(d.StringId,'')='' AND d.ScriptName='' AND NOT EXISTS (SELECT 1 FROM gameobject g WHERE g.id=d.entry)) OR
(d.entry=317051 AND COALESCE(d.StringId,'')='' AND d.ScriptName='' AND NOT EXISTS (SELECT 1 FROM gameobject g WHERE g.id=d.entry)) OR
(d.entry=317054 AND COALESCE(d.StringId,'')='' AND d.ScriptName='' AND NOT EXISTS (SELECT 1 FROM gameobject g WHERE g.id=d.entry)) OR
(d.entry=317055 AND COALESCE(d.StringId,'')='' AND d.ScriptName='' AND NOT EXISTS (SELECT 1 FROM gameobject g WHERE g.id=d.entry)) OR
(d.entry=317056 AND COALESCE(d.StringId,'')='' AND d.ScriptName='' AND NOT EXISTS (SELECT 1 FROM gameobject g WHERE g.id=d.entry)) OR
(d.entry=327587 AND COALESCE(d.StringId,'')='' AND d.ScriptName='' AND NOT EXISTS (SELECT 1 FROM gameobject g WHERE g.id=d.entry)) OR
(d.entry=327588 AND COALESCE(d.StringId,'')='' AND d.ScriptName='' AND NOT EXISTS (SELECT 1 FROM gameobject g WHERE g.id=d.entry)) OR
(d.entry=330141 AND COALESCE(d.StringId,'')='' AND d.ScriptName='' AND NOT EXISTS (SELECT 1 FROM gameobject g WHERE g.id=d.entry)) OR
(d.entry=353687 AND COALESCE(d.StringId,'')='' AND d.ScriptName='' AND NOT EXISTS (SELECT 1 FROM gameobject g WHERE g.id=d.entry)) OR
(d.entry=375982 AND COALESCE(d.StringId,'')='' AND d.ScriptName='' AND NOT EXISTS (SELECT 1 FROM gameobject g WHERE g.id=d.entry)) OR
(d.entry=376103 AND COALESCE(d.StringId,'')='' AND d.ScriptName='' AND NOT EXISTS (SELECT 1 FROM gameobject g WHERE g.id=d.entry)) OR
(d.entry=382289 AND COALESCE(d.StringId,'')='' AND d.ScriptName='' AND NOT EXISTS (SELECT 1 FROM gameobject g WHERE g.id=d.entry)) OR
(d.entry=384762 AND COALESCE(d.StringId,'')='' AND d.ScriptName='' AND NOT EXISTS (SELECT 1 FROM gameobject g WHERE g.id=d.entry)) OR
(d.entry=390139 AND COALESCE(d.StringId,'')='' AND d.ScriptName='' AND NOT EXISTS (SELECT 1 FROM gameobject g WHERE g.id=d.entry)) OR
(d.entry=527509 AND COALESCE(d.StringId,'')='' AND d.ScriptName='' AND NOT EXISTS (SELECT 1 FROM gameobject g WHERE g.id=d.entry));
DELETE d FROM gameobject_template_addon d WHERE (d.entry=185881) OR
(d.entry=190478) OR
(d.entry=203964) OR
(d.entry=205153) OR
(d.entry=207256) OR
(d.entry=209615) OR
(d.entry=211597) OR
(d.entry=211601) OR
(d.entry=211602) OR
(d.entry=223089) OR
(d.entry=235313) OR
(d.entry=235859) OR
(d.entry=235860) OR
(d.entry=236279) OR
(d.entry=243698) OR
(d.entry=247348) OR
(d.entry=252830) OR
(d.entry=290532) OR
(d.entry=297790) OR
(d.entry=303149) OR
(d.entry=303150) OR
(d.entry=303151) OR
(d.entry=307028) OR
(d.entry=310663) OR
(d.entry=316899) OR
(d.entry=317051) OR
(d.entry=317054) OR
(d.entry=317055) OR
(d.entry=317056) OR
(d.entry=327587) OR
(d.entry=327588) OR
(d.entry=330141) OR
(d.entry=353687) OR
(d.entry=375982) OR
(d.entry=376103) OR
(d.entry=382289) OR
(d.entry=384762) OR
(d.entry=390139) OR
(d.entry=527509);
DELETE d FROM gameobject_template_locale d WHERE (d.entry=185881) OR
(d.entry=190478) OR
(d.entry=203964) OR
(d.entry=205153) OR
(d.entry=207256) OR
(d.entry=209615) OR
(d.entry=211597) OR
(d.entry=211601) OR
(d.entry=211602) OR
(d.entry=223089) OR
(d.entry=235313) OR
(d.entry=235859) OR
(d.entry=235860) OR
(d.entry=236279) OR
(d.entry=243698) OR
(d.entry=247348) OR
(d.entry=252830) OR
(d.entry=290532) OR
(d.entry=297790) OR
(d.entry=303149) OR
(d.entry=303150) OR
(d.entry=303151) OR
(d.entry=307028) OR
(d.entry=310663) OR
(d.entry=316899) OR
(d.entry=317051) OR
(d.entry=317054) OR
(d.entry=317055) OR
(d.entry=317056) OR
(d.entry=327587) OR
(d.entry=327588) OR
(d.entry=330141) OR
(d.entry=353687) OR
(d.entry=375982) OR
(d.entry=376103) OR
(d.entry=382289) OR
(d.entry=384762) OR
(d.entry=390139) OR
(d.entry=527509);
UPDATE jump_charge_params d SET d.progressCurveId=NULL WHERE d.id=2 AND d.progressCurveId=1636;
UPDATE jump_charge_params d SET d.progressCurveId=NULL WHERE d.id=9 AND d.progressCurveId=1717;
UPDATE jump_charge_params d SET d.spellVisualId=NULL WHERE d.id=17 AND d.spellVisualId=50217;
UPDATE jump_charge_params d SET d.spellVisualId=NULL WHERE d.id=18 AND d.spellVisualId=47819;
UPDATE jump_charge_params d SET d.spellVisualId=NULL WHERE d.id=557 AND d.spellVisualId=109373;
UPDATE jump_charge_params d SET d.spellVisualId=NULL WHERE d.id=566 AND d.spellVisualId=108168;
UPDATE jump_charge_params d SET d.spellVisualId=NULL WHERE d.id=574 AND d.spellVisualId=108414;
UPDATE jump_charge_params d SET d.spellVisualId=NULL WHERE d.id=592 AND d.spellVisualId=109373;
UPDATE jump_charge_params d SET d.spellVisualId=NULL WHERE d.id=658 AND d.spellVisualId=116541;
UPDATE jump_charge_params d SET d.progressCurveId=NULL WHERE d.id=661 AND d.progressCurveId=392;
UPDATE jump_charge_params d SET d.spellVisualId=NULL WHERE d.id=693 AND d.spellVisualId=93595;
UPDATE jump_charge_params d SET d.spellVisualId=NULL WHERE d.id=700 AND d.spellVisualId=119220;
UPDATE jump_charge_params d SET d.progressCurveId=NULL WHERE d.id=852 AND d.progressCurveId=68736;
UPDATE jump_charge_params d SET d.progressCurveId=NULL WHERE d.id=1466 AND d.progressCurveId=88051;
UPDATE jump_charge_params d SET d.spellVisualId=NULL WHERE d.id=1466 AND d.spellVisualId=164063;
UPDATE npc_text d SET d.Probability0=0 WHERE d.ID=2953 AND d.Probability0=1;
UPDATE npc_text d SET d.Probability0=0 WHERE d.ID=2955 AND d.Probability0=1;
UPDATE npc_text d SET d.Probability0=0 WHERE d.ID=2956 AND d.Probability0=1;
UPDATE npc_text d SET d.Probability0=0 WHERE d.ID=2957 AND d.Probability0=1;
UPDATE npc_text d SET d.Probability1=0 WHERE d.ID=11428 AND d.Probability1=1;
UPDATE npc_text d SET d.Probability2=0 WHERE d.ID=11428 AND d.Probability2=1;
UPDATE npc_text d SET d.Probability3=0 WHERE d.ID=11428 AND d.Probability3=1;
UPDATE npc_text d SET d.Probability4=0 WHERE d.ID=11428 AND d.Probability4=1;
UPDATE npc_text d SET d.Probability5=0 WHERE d.ID=11428 AND d.Probability5=1;
UPDATE npc_text d SET d.Probability6=0 WHERE d.ID=11428 AND d.Probability6=1;
UPDATE npc_text d SET d.Probability7=0 WHERE d.ID=11428 AND d.Probability7=1;
UPDATE npc_text d SET d.BroadcastTextID0=0 WHERE d.ID=40902 AND d.BroadcastTextID0=199338;
UPDATE npc_text d SET d.Probability0=0 WHERE d.ID=40902 AND d.Probability0=1;
UPDATE npc_text d SET d.BroadcastTextID0=0 WHERE d.ID=40918 AND d.BroadcastTextID0=199476;
UPDATE npc_text d SET d.Probability0=0 WHERE d.ID=40918 AND d.Probability0=1;
UPDATE npc_text d SET d.BroadcastTextID0=0 WHERE d.ID=40921 AND d.BroadcastTextID0=199492;
UPDATE npc_text d SET d.Probability0=0 WHERE d.ID=40921 AND d.Probability0=1;
UPDATE npc_text d SET d.BroadcastTextID0=0 WHERE d.ID=40922 AND d.BroadcastTextID0=199494;
UPDATE npc_text d SET d.Probability0=0 WHERE d.ID=40922 AND d.Probability0=1;
UPDATE npc_text d SET d.BroadcastTextID0=0 WHERE d.ID=40923 AND d.BroadcastTextID0=199495;
UPDATE npc_text d SET d.Probability0=0 WHERE d.ID=40923 AND d.Probability0=1;
UPDATE npc_text d SET d.BroadcastTextID0=0 WHERE d.ID=40927 AND d.BroadcastTextID0=199516;
UPDATE npc_text d SET d.Probability0=0 WHERE d.ID=40927 AND d.Probability0=1;
UPDATE npc_text d SET d.BroadcastTextID5=0 WHERE d.ID=41520 AND d.BroadcastTextID5=202725;
UPDATE npc_text d SET d.Probability5=0 WHERE d.ID=41520 AND d.Probability5=1;
UPDATE npc_text d SET d.BroadcastTextID0=0 WHERE d.ID=42409 AND d.BroadcastTextID0=205983;
UPDATE npc_text d SET d.Probability0=0 WHERE d.ID=42409 AND d.Probability0=1;
UPDATE npc_text d SET d.BroadcastTextID2=0 WHERE d.ID=42410 AND d.BroadcastTextID2=205978;
UPDATE npc_text d SET d.Probability2=0 WHERE d.ID=42410 AND d.Probability2=1;
DELETE d FROM skinning_loot_template d WHERE (d.Entry=10116 AND d.QuestRequired=0) OR
(d.Entry=10240 AND d.QuestRequired=0) OR
(d.Entry=15286 AND d.QuestRequired=0) OR
(d.Entry=15288 AND d.QuestRequired=0) OR
(d.Entry=15413 AND d.QuestRequired=0) OR
(d.Entry=5432 AND d.QuestRequired=0);
COMMIT;
