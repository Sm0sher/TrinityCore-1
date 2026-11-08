-- Match ObjectMgr's allowed masks and remove map markers for quests absent from the world database.
START TRANSACTION;

UPDATE `creature_template`
SET `unit_flags` = `unit_flags` & 0x02002340
WHERE (`unit_flags` & 0xFDFFDCBF) <> 0;

UPDATE `creature_template`
SET `unit_flags3` = `unit_flags3` & 0x014DE0B6
WHERE (`unit_flags3` & 0xFEB21F49) <> 0;

DELETE `p`
FROM `quest_poi_points` AS `p`
LEFT JOIN `quest_template` AS `q` ON `q`.`ID` = `p`.`QuestID`
WHERE `q`.`ID` IS NULL;

DELETE `p`
FROM `quest_poi` AS `p`
LEFT JOIN `quest_template` AS `q` ON `q`.`ID` = `p`.`QuestID`
WHERE `q`.`ID` IS NULL;

COMMIT;
