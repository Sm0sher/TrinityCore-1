-- Archive model-less templates with only typed non-NPC parameter matches.
START TRANSACTION;
CREATE TEMPORARY TABLE unsupported_models (id INT UNSIGNED NOT NULL PRIMARY KEY, build INT NOT NULL);
INSERT INTO unsupported_models (id,build) VALUES
    (16973,69497),(16994,69497),(18634,69497),(19456,69497),(19916,69497),(20787,69497),(22920,69497),(23169,69497),(23746,69497),(24086,69497),
    (24089,69497),(24332,69497),(24643,69497),(24644,69497),(26402,69497),(26620,69497),(27224,69497),(27225,69497),(27476,69497),(27492,69497),
    (27535,69497),(29478,69497),(32163,69497),(34520,69497),(34782,69497),(34877,69497),(39446,69497),(42333,69497),(43214,69497),(43391,69497),
    (43438,69497),(60183,69497),(114247,69497),(114462,69497),(115491,69497),(122450,69497),(122773,69497),(122778,69497),(126199,69497),(128332,69497),
    (156501,69497),(156814,69497),(157300,69497),(208743,69497),(210108,69497),(210149,69497),(210156,69497),(210797,69497),(213217,69497),(214502,69497),
    (214506,69497),(215657,69497),(216320,69497),(216648,69497),(216649,69497),(216658,69497),(219778,69497),(219853,69497),(223779,69497),(224552,69497),
    (228470,69497),(229191,69497),(234647,69497),(234648,69497),(234649,69497),(234660,69497),(234893,69497),(234933,69497),(236190,69497),(237415,69497),
    (241375,69497),(247283,69497);
DELETE b FROM unsupported_models b LEFT JOIN creature_template d ON d.entry=b.id AND d.VerifiedBuild=b.build WHERE d.entry IS NULL;
DELETE b FROM unsupported_models b JOIN creature d ON d.id=b.id;
DELETE b FROM unsupported_models b JOIN creature_template_model d ON d.CreatureID=b.id;
DELETE b FROM unsupported_models b JOIN quest_objectives q ON q.ObjectID=b.id AND q.Type IN (0,3,11);
DELETE b FROM unsupported_models b JOIN creature_template d ON d.entry=b.id WHERE d.StringId<>'';
DELETE d FROM smart_scripts d JOIN unsupported_models b ON b.id=d.entryorguid WHERE d.source_type=0;
DELETE d FROM creature_equip_template d JOIN unsupported_models b ON b.id=d.CreatureID;
DELETE d FROM creature_template_addon d JOIN unsupported_models b ON b.id=d.entry;
DELETE d FROM creature_template_difficulty d JOIN unsupported_models b ON b.id=d.Entry;
DELETE d FROM creature_template_locale d JOIN unsupported_models b ON b.id=d.entry;
DELETE d FROM creature_template_spell d JOIN unsupported_models b ON b.id=d.CreatureID;
DELETE d FROM creature_template_gossip d JOIN unsupported_models b ON b.id=d.CreatureID;
DELETE d FROM creature_text d JOIN unsupported_models b ON b.id=d.CreatureID;
DELETE d FROM npc_spellclick_spells d JOIN unsupported_models b ON b.id=d.npc_entry;
DELETE d FROM creature_summon_groups d JOIN unsupported_models b ON b.id=d.summonerId WHERE d.summonerType=0;
DELETE d FROM conditions d JOIN unsupported_models b ON b.id=d.SourceEntry WHERE (d.SourceTypeOrReferenceId=16 OR (d.SourceTypeOrReferenceId=22 AND d.SourceId=0));
DELETE d FROM creature_template d JOIN unsupported_models b ON b.id=d.entry;
DELETE FROM conditions WHERE SourceTypeOrReferenceId IN (18,21,23) AND SourceGroup IN (16973,16994,18634,19456,19916,20787,22920,23169,23746,24086,24089,24332,24643,24644,26402,26620,27224,27225,27476,27492,27535,29478,32163,34520,34782,34877,39446,42333,43214,43391,43438,60183,114247,114462,115491,122450,122773,122778,126199,128332,156501,156814,157300,208743,210108,210149,210156,210797,213217,214502,214506,215657,216320,216648,216649,216658,219778,219853,223779,224552,228470,229191,234647,234648,234649,234660,234893,234933,236190,237415,241375,247283);
COMMIT;
