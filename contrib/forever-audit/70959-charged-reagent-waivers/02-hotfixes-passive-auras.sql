-- Keep passive movement, immunity, flag and periodic effects independent of hit procs.
INSERT IGNORE INTO `spell_aura_options` (`ID`, `DifficultyID`, `CumulativeAura`, `ProcCategoryRecovery`, `ProcChance`, `ProcCharges`, `SpellProcsPerMinuteID`, `ProcTypeMask1`, `ProcTypeMask2`, `SpellID`, `VerifiedBuild`) VALUES
(186788, 0, 0, 0, 101, 0, 0, 0, 0, 364214, 70959),
(187113, 0, 0, 0, 101, 0, 0, 0, 0, 366590, 70959),
(187112, 0, 0, 0, 101, 0, 0, 0, 0, 366588, 70959),
(186787, 0, 0, 0, 101, 0, 0, 0, 0, 364212, 70959),
(118359, 0, 0, 0, 101, 0, 0, 0, 0, 3169, 70959),
(141461, 0, 0, 0, 100, 0, 0, 0, 0, 301089, 70959),
(141462, 0, 0, 0, 100, 0, 0, 0, 0, 301091, 70959),
(121579, 0, 0, 0, 100, 0, 0, 0, 0, 7331, 70959),
(120865, 0, 0, 0, 101, 0, 0, 0, 0, 7291, 70959),
(122196, 0, 5, 0, 100, 0, 0, 0, 0, 7288, 70959),
(240590, 0, 5, 0, 101, 0, 0, 0, 0, 1220836, 70959);
