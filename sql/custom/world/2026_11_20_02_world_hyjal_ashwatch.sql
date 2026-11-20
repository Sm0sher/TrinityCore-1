-- Original Hyjal content: the Ashwatch camp (map 1, area 616).
-- Uses display IDs already supported by the client. All names, quests and placements are new.
START TRANSACTION;

INSERT IGNORE INTO `creature_template`
    (`entry`, `name`, `subname`, `faction`, `npcflag`, `type`, `unit_class`, `StringId`)
VALUES
    (910283, 'Мира Каменный След', 'Дозор Пепельной тропы', 35, 2, 7, 1, 'ashwatch_mira'),
    (910284, 'Ренн Тихий Горн', 'Смотритель маяка', 35, 2, 7, 1, 'ashwatch_renn'),
    (910285, 'Пепельный корнеход', '', 14, 0, 4, 1, 'ashwatch_rootwalker');

INSERT IGNORE INTO `creature_template_difficulty`
    (`Entry`, `DifficultyID`, `ContentTuningID`, `HealthModifier`, `DamageModifier`)
VALUES (910283, 0, 36, 1, 1), (910284, 0, 36, 1, 1), (910285, 0, 36, 1, 1);

INSERT IGNORE INTO `creature_template_model` (`CreatureID`, `Idx`, `CreatureDisplayID`, `DisplayScale`, `Probability`)
VALUES (910283, 0, 4841, 1, 1), (910284, 0, 1408, 1, 1), (910285, 0, 625, 1, 1);

INSERT IGNORE INTO `waypoint_path` (`PathId`, `MoveType`, `Flags`, `Comment`)
VALUES (917402102, 0, 0, 'Ashwatch rootwalker patrol');
INSERT IGNORE INTO `waypoint_path_node` (`PathId`, `NodeId`, `PositionX`, `PositionY`, `PositionZ`, `Delay`)
VALUES
    (917402102, 1, 5511, -2392, 1465.73, 1000),
    (917402102, 2, 5524, -2392, 1468.14, 0),
    (917402102, 3, 5525, -2383, 1468.94, 1500),
    (917402102, 4, 5511, -2384, 1466.23, 0);

INSERT IGNORE INTO `creature`
    (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `MovementType`)
VALUES
    (917402100, 910283, 1, 616, 616, '0', 5480, -2400, 1460.52, 0.0, 60, 0),
    (917402101, 910284, 1, 616, 616, '0', 5488, -2405, 1461.51, 0.2, 60, 0),
    (917402102, 910285, 1, 616, 616, '0', 5511, -2392, 1465.73, 0.0, 45, 2),
    (917402103, 910285, 1, 616, 616, '0', 5503, -2412, 1464.19, 1.1, 45, 0),
    (917402104, 910285, 1, 616, 616, '0', 5521, -2412, 1468.26, 2.0, 45, 0);
INSERT IGNORE INTO `creature_addon` (`guid`, `PathId`) VALUES (917402102, 917402102);

INSERT IGNORE INTO `gameobject_template`
    (`entry`, `type`, `displayId`, `name`, `castBarCaption`, `size`, `Data1`, `Data3`)
VALUES (910283, 10, 325, 'Маяк Пепельной тропы', 'Зажигается маяк', 1, 910284, 3000);
INSERT IGNORE INTO `gameobject`
    (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnDifficulties`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES (917402100, 910283, 1, 616, 616, '0', 5523, -2398, 1468.41, 0, 0, 0, 0, 1, 60, 255, 1);

INSERT IGNORE INTO `quest_template`
    (`ID`, `QuestType`, `QuestSortID`, `RewardXPDifficulty`, `RewardXPMultiplier`, `RewardItem1`, `RewardAmount1`,
     `AllowableRaces`, `LogTitle`, `LogDescription`, `QuestDescription`, `QuestCompletionLog`)
VALUES
    (910283, 2, 616, 4, 1, 0, 0, 18446744073709551615,
     'Корни под золой', 'Победите трёх пепельных корнеходов у дозора.',
     'Мы поставили лагерь на старой тропе, но по ночам из-под золы вылезают корнеходы. Трое бродят между нами и маяком. Расчисти путь — я пошлю Ренну знак.',
     'Вернитесь к Мире Каменный След.'),
    (910284, 2, 616, 3, 1, 13446, 2, 18446744073709551615,
     'Огонь для отставших', 'Зажгите маяк Пепельной тропы и вернитесь к Ренну.',
     'Ниже по склону ещё идут люди. Когда станет темно, они увидят только наш маяк. Поднимись к нему и зажги огонь.',
     'Доложите Ренну Тихому Горну, что маяк зажжён.');

INSERT IGNORE INTO `quest_template_classic_level` (`ID`, `LevelType`, `QuestLevel`)
VALUES (910283, 2, 55), (910284, 2, 55);
INSERT IGNORE INTO `quest_template_addon` (`ID`, `PrevQuestID`) VALUES (910284, 910283);
INSERT IGNORE INTO `quest_objectives`
    (`ID`, `QuestID`, `Type`, `Order`, `StorageIndex`, `ObjectID`, `Amount`, `Visible`, `Description`)
VALUES (910283, 910283, 0, 0, 0, 910285, 3, 1, 'Пепельные корнеходы'),
       (910284, 910284, 2, 0, 0, 910283, 1, 1, 'Зажгите маяк');
INSERT IGNORE INTO `creature_queststarter` (`id`, `quest`) VALUES (910283, 910283), (910284, 910284);
INSERT IGNORE INTO `creature_questender` (`id`, `quest`) VALUES (910283, 910283), (910284, 910284);
INSERT IGNORE INTO `quest_offer_reward` (`ID`, `RewardText`)
VALUES (910283, 'Тропа свободна. Ренн ждёт у костра, ему ещё нужна помощь.'),
       (910284, 'Огонь видно даже отсюда. Возьми эти зелья: на спуске они пригодятся.');

COMMIT;
