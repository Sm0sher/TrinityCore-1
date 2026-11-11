-- Archive unused model-less templates with only non-NPC or absent-instance source matches.
START TRANSACTION;
CREATE TEMPORARY TABLE unsupported_models (id INT UNSIGNED NOT NULL PRIMARY KEY, build INT NOT NULL);
INSERT INTO unsupported_models (id,build) VALUES
    (15493,69497),(16397,69497),(16553,69497),(17814,69497),(17815,69497),(17819,69497),(17820,69497),(17824,69497),(17825,69497),(17833,69497),
    (17860,69497),(18092,69497),(18094,69497),(18223,69497),(18359,69497),(18764,69497),(18798,69497),(19502,69497),(19632,69497),(19832,69497),
    (19983,69497),(20038,69497),(20623,15595),(20691,17658),(21117,69497),(21118,69497),(22279,69497),(22280,69497),(22281,69497),(22283,69497),
    (22285,69497),(22287,69497),(22433,69497),(22438,69497),(22440,69497),(23014,69497),(23023,69497),(23128,69497),(23153,69497),(23174,69497),
    (23175,69497),(23176,69497),(23177,69497),(23178,69497),(23179,69497),(23187,69497),(23198,69497),(23331,69497),(23340,69497),(23341,69497),
    (23342,69497),(23397,69497),(23401,69497),(23414,69497),(23427,69497),(23436,69497),(23461,69497),(23462,69497),(23513,69497),(23620,69497),
    (23658,69497),(23958,69497),(24180,69497),(24375,69497),(24693,15595),(24746,69497),(24748,69497),(25104,69497),(28418,69497),(29449,69497),
    (31204,69497),(34976,69497),(35410,15595),(35413,15595),(37800,69497),(40177,69497),(40319,69497),(40484,69497),(40586,69497),(40765,69497),
    (40788,69497),(41378,69497),(41442,69497),(41570,69497),(43296,69497),(43324,69497),(44566,69497),(44600,69497),(45213,69497),(45872,69497),
    (45900,69497),(46753,69497),(47002,69497),(52466,69497),(56692,69497),(57935,69497),(63294,69497),(63295,69497),(69422,69497),(70233,69497),
    (70234,69497),(70235,69497),(70322,69497),(71041,69497),(71317,69497),(72343,69497),(76343,69497),(83880,69497),(83881,69497),(91917,69497),
    (91959,24330),(91960,24330),(91961,24330),(91962,24330),(91963,24330),(103015,69497),(103016,69497),(143010,69497),(151098,69497),(176149,69497),
    (176964,69497),(176965,69497),(177000,69497),(177807,69497),(177808,69497),(178187,69497),(178188,69497),(178189,69497),(178190,69497),(178191,69497),
    (178192,69497),(178193,69497),(179115,69497),(179117,69497),(179364,69497),(179365,69497),(180024,69497),(180055,69497),(180803,69497),(182523,69497),
    (199659,69497),(200918,69497),(201320,69497),(201575,69497),(201579,69497),(201934,69497),(202416,69497),(202610,69497),(202637,69497),(204223,69497),
    (205319,69497);
DELETE b FROM unsupported_models b LEFT JOIN creature_template d ON d.entry=b.id AND d.VerifiedBuild=b.build WHERE d.entry IS NULL;
DELETE b FROM unsupported_models b JOIN creature d ON d.id=b.id;
DELETE b FROM unsupported_models b JOIN creature_template_model d ON d.CreatureID=b.id;
DELETE b FROM unsupported_models b JOIN quest_objectives q ON q.ObjectID=b.id AND q.Type IN (0,3,11);
DELETE b FROM unsupported_models b JOIN creature_template d ON d.entry=b.id WHERE d.StringId<>'' OR d.ScriptName<>'';
DELETE d FROM smart_scripts d JOIN unsupported_models b ON b.id=d.entryorguid WHERE d.source_type=0;
DELETE d FROM creature_equip_template d JOIN unsupported_models b ON b.id=d.CreatureID;
DELETE d FROM creature_template_addon d JOIN unsupported_models b ON b.id=d.entry;
DELETE d FROM creature_template_difficulty d JOIN unsupported_models b ON b.id=d.Entry;
DELETE d FROM creature_template_locale d JOIN unsupported_models b ON b.id=d.entry;
DELETE d FROM creature_template_spell d JOIN unsupported_models b ON b.id=d.CreatureID;
DELETE d FROM creature_template_gossip d JOIN unsupported_models b ON b.id=d.CreatureID;
DELETE d FROM creature_text d JOIN unsupported_models b ON b.id=d.CreatureID;
DELETE d FROM npc_vendor d JOIN unsupported_models b ON b.id=d.entry;
DELETE d FROM npc_spellclick_spells d JOIN unsupported_models b ON b.id=d.npc_entry;
DELETE d FROM creature_template d JOIN unsupported_models b ON b.id=d.entry;
COMMIT;
