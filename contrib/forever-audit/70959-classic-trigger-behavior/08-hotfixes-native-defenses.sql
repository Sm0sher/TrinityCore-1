-- Retain native damage-shield and school-immunity handlers without unrelated combat proc flags.
INSERT IGNORE INTO `spell_aura_options` (`ID`, `DifficultyID`, `CumulativeAura`, `ProcCategoryRecovery`, `ProcChance`, `ProcCharges`, `SpellProcsPerMinuteID`, `ProcTypeMask1`, `ProcTypeMask2`, `SpellID`, `VerifiedBuild`) VALUES
(235439, 0, 0, 0, 100, 0, 0, 0, 0, 435901, 70959),
(234072, 0, 0, 0, 101, 0, 0, 0, 0, 424553, 70959),
(234362, 0, 0, 0, 101, 0, 0, 0, 0, 426764, 70959),
(225177, 0, 0, 0, 101, 0, 0, 0, 0, 421322, 70959);
