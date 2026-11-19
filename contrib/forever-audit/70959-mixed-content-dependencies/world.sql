-- Restore verified Forever models, quest-object drops, vendor flags and an area-trigger action chain.
START TRANSACTION;
INSERT IGNORE INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`, `VerifiedBuild`) VALUES
(583, 0, 184, 1.0, 1.0, 70959),
(6866, 0, 2340, 1.0, 1.0, 70938),
(6866, 1, 2341, 1.0, 1.0, 70938);
INSERT IGNORE INTO `gameobject_loot_template` (`ItemType`, `Entry`, `Item`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) SELECT 0, 19431, 25863, 100.0, 1, 1, 0, 1, 1, CONVERT(UNHEX('4f6c656d626120526f6f74202d204f6c656d626120526f6f74') USING utf8mb4) WHERE NOT EXISTS (SELECT 1 FROM world.`gameobject_loot_template` WHERE `Entry`=19431 AND `ItemType`=0 AND `Item`=25863);
INSERT IGNORE INTO `gameobject_loot_template` (`ItemType`, `Entry`, `Item`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) SELECT 0, 20682, 29741, 100.0, 1, 1, 0, 1, 1, CONVERT(UNHEX('446961676e6f737469632045717569706d656e74202d20446961676e6f7374696320526573756c7473') USING utf8mb4) WHERE NOT EXISTS (SELECT 1 FROM world.`gameobject_loot_template` WHERE `Entry`=20682 AND `ItemType`=0 AND `Item`=29741);
INSERT IGNORE INTO `gameobject_loot_template` (`ItemType`, `Entry`, `Item`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) SELECT 0, 21867, 31697, 100.0, 1, 1, 0, 1, 1, CONVERT(UNHEX('4d617373697665205472656173757265204368657374202d2044726561642052656c6963') USING utf8mb4) WHERE NOT EXISTS (SELECT 1 FROM world.`gameobject_loot_template` WHERE `Entry`=21867 AND `ItemType`=0 AND `Item`=31697);
UPDATE world.`smart_scripts` SET `id`=1, `link`=0, `event_type`=61 WHERE `entryorguid`=160 AND `source_type`=12 AND `id`=0 AND `link`=1 AND `event_type`=46 AND `action_type`=152 AND `action_param1`=50804 AND `target_type`=7;
UPDATE world.`smart_scripts` SET `link`=1 WHERE `entryorguid`=160 AND `source_type`=12 AND `id`=0 AND `link`=0 AND `event_type`=46 AND `action_type`=33 AND `action_param1`=102086 AND `target_type`=7;
COMMIT;
