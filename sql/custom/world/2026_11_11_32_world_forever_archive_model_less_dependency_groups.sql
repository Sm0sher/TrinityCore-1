-- Archive model-less templates with only typed non-NPC parameter matches.
START TRANSACTION;
CREATE TEMPORARY TABLE unsupported_models (id INT UNSIGNED NOT NULL PRIMARY KEY, build INT NOT NULL);
INSERT INTO unsupported_models (id,build) VALUES
    (16808,69497),(17507,69497),(17695,69497),(20381,69497),(20382,69497),(20383,69497),(25185,69497),(25537,15595),(26683,69497),(26684,69497),
    (26685,69497),(26686,69497),(26687,69497),(28684,69497),(28729,69497),(28730,69497),(28731,69497),(28733,69497),(28734,69497),(28921,69497),
    (28922,69497),(29117,69497),(29118,69497),(29119,69497),(29120,69497),(29308,69497),(29310,69497),(30111,69497),(30114,69497),(30234,69497),
    (30245,69497),(30248,69497),(30249,69497),(32930,69497),(32933,69497),(33060,69497),(33067,69497),(33109,69497),(33167,69497),(33214,69497),
    (33218,69497),(33414,69497),(33432,69497),(33433,69497),(33437,69497),(33441,69497),(33442,69497),(33495,69497),(33523,69497),(33536,69497),
    (33552,69497),(33567,69497),(33620,69497),(33651,69497),(33890,69497),(33962,69497),(34071,69497),(34496,69497),(34497,69497),(34567,69497),
    (34568,69497),(34701,69497),(34702,69497),(34705,69497),(34796,69497),(34800,69497),(34996,69497),(35451,69497),(35491,69497),(35569,69497),
    (35570,69497),(35571,69497),(35572,69497),(35633,69497),(35635,69497),(35637,69497),(35638,69497),(35640,69497),(35641,69497),(35768,69497),
    (36476,69497),(36477,69497),(36661,69497),(36678,69497),(36794,69497),(38308,69497),(38309,69497),(38588,69497),(48820,15595),(48821,15595),
    (48939,15595),(52363,69497),(53786,69497),(53791,69497),(55183,69497),(64736,69497),(72953,69497),(87642,69497),(98542,69497),(99664,69497),
    (114323,69497),(122965,69497),(125977,69497),(131383,69497),(131817,69497),(131824,69497),(132137,69497),(139127,69497),(144306,69497),(173943,69497),
    (175732,69497),(176532,69497),(176533,69497),(177292,69497),(178081,69497);
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
DELETE d FROM creature_template_movement d JOIN unsupported_models b ON b.id=d.CreatureId;
DELETE d FROM creature_template_spell d JOIN unsupported_models b ON b.id=d.CreatureID;
DELETE d FROM creature_template_gossip d JOIN unsupported_models b ON b.id=d.CreatureID;
DELETE d FROM creature_text_locale d JOIN unsupported_models b ON b.id=d.CreatureID;
DELETE d FROM creature_text d JOIN unsupported_models b ON b.id=d.CreatureID;
DELETE d FROM npc_spellclick_spells d JOIN unsupported_models b ON b.id=d.npc_entry;
DELETE d FROM battlemaster_entry d JOIN unsupported_models b ON b.id=d.entry;
DELETE d FROM vehicle_template_accessory d JOIN unsupported_models b ON b.id=d.entry;
DELETE d FROM creature_summon_groups d JOIN unsupported_models b ON b.id=d.summonerId WHERE d.summonerType=0;
DELETE d FROM creature_template d JOIN unsupported_models b ON b.id=d.entry;
COMMIT;
