-- Supply the missing reputation condition before ObjectMgr loads vendor inventories.
-- The adjacent native conditions use ranks 4, 6 and 7 for the same faction.
-- Unrestricted signed fields use -1, consistent with the existing portal conditions.
INSERT INTO `player_condition` (`ID`, `FailureDescription`, `Flags`, `MinFactionID1`, `MinReputation1`,
  `Gender`, `NativeGender`, `MinExpansionLevel`, `MaxExpansionLevel`, `MinExpansionTier`,
  `MaxExpansionTier`, `ChrSpecializationIndex`, `ChrSpecializationRole`, `PowerType`, `VerifiedBuild`)
SELECT 160975, '', 1, 2758, 5, -1, -1, -1, -1, -1, -1, -1, -1, -1, 70959
WHERE NOT EXISTS (SELECT 1 FROM `player_condition` WHERE `ID` = 160975);
