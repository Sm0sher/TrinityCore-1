-- Restore original lock requirements and supporting opening spells for WoW Forever 70959.
START TRANSACTION;
INSERT IGNORE INTO `spell_cast_times` (`ID`, `Base`, `Minimum`, `VerifiedBuild`) VALUES
(224, 6500, 6500, 70959);
INSERT IGNORE INTO `hotfix_data` (`Id`, `UniqueId`, `TableHash`, `RecordId`, `Status`, `VerifiedBuild`) VALUES
(4051559, 224, 4256848486, 224, 1, 70959),
(4051560, 61437, 1187407512, 61437, 1, 70959),
(4051561, 42052, 3322146344, 42052, 1, 70959),
(4051562, 55297, 4030871717, 55297, 1, 70959),
(4051563, 27947, 666345498, 27947, 1, 70959),
(4051564, 3638, 3764692828, 3638, 1, 70959),
(4051565, 12791, 1720692227, 12791, 1, 70959),
(4051566, 98322, 1187407512, 98322, 1, 70959),
(4051567, 75123, 3322146344, 75123, 1, 70959),
(4051568, 105271, 4030871717, 105271, 1, 70959),
(4051569, 38735, 666345498, 38735, 1, 70959),
(4051570, 6681, 3764692828, 6681, 1, 70959),
(4051571, 21941, 1720692227, 21941, 1, 70959),
(4051572, 23408, 3689412649, 23408, 1, 70959),
(4051573, 1353, 3163679255, 1353, 1, 70959),
(4051574, 98323, 1187407512, 98323, 1, 70959),
(4051575, 75124, 3322146344, 75124, 1, 70959),
(4051576, 105272, 4030871717, 105272, 1, 70959),
(4051577, 38736, 666345498, 38736, 1, 70959),
(4051578, 6682, 3764692828, 6682, 1, 70959),
(4051579, 21942, 1720692227, 21942, 1, 70959),
(4051580, 23409, 3689412649, 23409, 1, 70959),
(4051581, 1354, 3163679255, 1354, 1, 70959),
(4051582, 136386, 1187407512, 136386, 1, 70959),
(4051583, 110306, 3322146344, 110306, 1, 70959),
(4051584, 178432, 4030871717, 178432, 1, 70959),
(4051585, 56501, 666345498, 56501, 1, 70959),
(4051586, 15133, 3764692828, 15133, 1, 70959),
(4051587, 35174, 1720692227, 35174, 1, 70959),
(4051588, 21, 2471080772, 21, 1, 70959),
(4051589, 30, 2471080772, 30, 1, 70959),
(4051590, 1818, 3921595171, 1818, 1, 70959),
(4051591, 1956, 3921595171, 1956, 1, 70959),
(4051592, 1957, 3921595171, 1957, 1, 70959),
(4051593, 2112, 3921595171, 2112, 1, 70959),
(4051594, 2608, 3921595171, 2608, 1, 70959);
INSERT IGNORE INTO `spell_name` (`ID`, `Name`, `VerifiedBuild`) VALUES
(61437, CONVERT(UNHEX('4f70656e696e67') USING utf8mb4), 70959),
(98322, CONVERT(UNHEX('436170747572696e67') USING utf8mb4), 70959),
(98323, CONVERT(UNHEX('436170747572696e67') USING utf8mb4), 70959),
(136386, CONVERT(UNHEX('536b696e6e696e67') USING utf8mb4), 70959);
INSERT IGNORE INTO `spell_name_locale` (`ID`, `locale`, `Name_lang`, `VerifiedBuild`) VALUES
(61437, CONVERT(UNHEX('72755255') USING utf8mb4), CONVERT(UNHEX('d09ed182d0bad180d18bd0b2d0b0d0bdd0b8d0b5') USING utf8mb4), 70959),
(98322, CONVERT(UNHEX('72755255') USING utf8mb4), CONVERT(UNHEX('d097d0b0d185d0b2d0b0d182') USING utf8mb4), 70959),
(98323, CONVERT(UNHEX('72755255') USING utf8mb4), CONVERT(UNHEX('d097d0b0d185d0b2d0b0d182') USING utf8mb4), 70959),
(136386, CONVERT(UNHEX('72755255') USING utf8mb4), CONVERT(UNHEX('d0a1d0bdd18fd182d0b8d0b520d188d0bad183d180') USING utf8mb4), 70959);
INSERT IGNORE INTO `spell_misc` (`ID`, `Attributes1`, `Attributes2`, `Attributes3`, `Attributes4`, `Attributes5`, `Attributes6`, `Attributes7`, `Attributes8`, `Attributes9`, `Attributes10`, `Attributes11`, `Attributes12`, `Attributes13`, `Attributes14`, `Attributes15`, `Attributes16`, `Attributes17`, `DifficultyID`, `CastingTimeIndex`, `DurationIndex`, `PvPDurationIndex`, `RangeIndex`, `SchoolMask`, `Speed`, `LaunchDelay`, `MinDuration`, `SpellIconFileDataID`, `ActiveIconFileDataID`, `ContentTuningID`, `ShowFutureSpellPlayerConditionID`, `SpellVisualScript`, `ActiveSpellVisualScript`, `SpellID`, `VerifiedBuild`) VALUES
(42052, 16777616, 0, 0, 0, 32768, 0, 4096, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 12, 1, 0.0, 0.0, 0.0, 134237, 0, 0, 0, 0, 0, 61437, 70959),
(75123, 400, 0, 0, 0, 32768, 0, 0, 0, 0, 0, 0, 0, 0, 134217728, 0, 0, 0, 0, 32, 0, 0, 12, 1, 0.0, 0.0, 0.0, 132487, 0, 0, 0, 0, 0, 98322, 70959),
(75124, 400, 0, 0, 0, 32768, 0, 0, 0, 0, 0, 0, 0, 0, 134217728, 0, 0, 0, 0, 224, 0, 0, 12, 1, 0.0, 0.0, 0.0, 132487, 0, 0, 0, 0, 0, 98323, 70959),
(110306, 65792, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 33, 0, 0, 12, 1, 0.0, 0.0, 0.0, 4620680, 0, 0, 0, 0, 0, 136386, 70959);
INSERT IGNORE INTO `spell_effect` (`ID`, `EffectAura`, `DifficultyID`, `EffectIndex`, `Effect`, `EffectAmplitude`, `EffectAttributes`, `EffectAuraPeriod`, `EffectBonusCoefficient`, `EffectChainAmplitude`, `EffectChainTargets`, `EffectItemType`, `EffectMechanic`, `EffectPointsPerResource`, `EffectPosFacing`, `EffectRealPointsPerLevel`, `EffectTriggerSpell`, `BonusCoefficientFromAP`, `PvpMultiplier`, `Coefficient`, `Variance`, `ResourceCoefficient`, `GroupSizeBasePointsCoefficient`, `EffectBasePoints`, `ScalingClass`, `TargetNodeGraph`, `EffectMiscValue1`, `EffectMiscValue2`, `EffectRadiusIndex1`, `EffectRadiusIndex2`, `EffectSpellClassMask1`, `EffectSpellClassMask2`, `EffectSpellClassMask3`, `EffectSpellClassMask4`, `ImplicitTarget1`, `ImplicitTarget2`, `SpellID`, `VerifiedBuild`) VALUES
(55297, 0, 0, 0, 33, 0.0, 0, 0, 0.0, 1.0, 0, 0, 0, 0.0, 0.0, 0.0, 0, 0.0, 1.0, 0.0, 0.0, 0.0, 1.0, 1000.0, 0, 0, 21, 0, 0, 0, 0, 0, 0, 0, 23, 0, 61437, 70959),
(105271, 0, 0, 0, 33, 0.0, 0, 0, 0.0, 1.0, 0, 0, 0, 0.0, 0.0, 0.0, 0, 0.0, 1.0, 0.0, 0.0, 0.0, 1.0, 100.0, 0, 0, 17, 0, 0, 0, 0, 0, 0, 0, 23, 0, 98322, 70959),
(105272, 0, 0, 0, 33, 0.0, 0, 0, 0.0, 1.0, 0, 0, 0, 0.0, 0.0, 0.0, 0, 0.0, 1.0, 0.0, 0.0, 0.0, 1.0, 100.0, 0, 0, 17, 0, 0, 0, 0, 0, 0, 0, 23, 0, 98323, 70959),
(178432, 0, 0, 0, 33, 0.0, 0, 0, 0.0, 1.0, 0, 0, 0, 0.0, 0.0, 0.0, 0, 0.0, 1.0, 0.0, 0.0, 0.0, 1.0, 1275.0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 23, 0, 136386, 70959);
INSERT IGNORE INTO `spell_x_spell_visual` (`ID`, `DifficultyID`, `SpellVisualID`, `Probability`, `Flags`, `Priority`, `SpellIconFileID`, `ActiveIconFileID`, `ViewerUnitConditionID`, `ViewerPlayerConditionID`, `CasterUnitConditionID`, `CasterPlayerConditionID`, `SpellID`, `VerifiedBuild`) VALUES
(27947, 0, 180, 1.0, 0, 0, 0, 0, 0, 0, 0, 0, 61437, 70959),
(38735, 0, 6139, 1.0, 0, 0, 0, 0, 0, 0, 0, 0, 98322, 70959),
(38736, 0, 6139, 1.0, 0, 0, 0, 0, 0, 0, 0, 0, 98323, 70959),
(56501, 0, 1008, 1.0, 0, 0, 0, 0, 0, 0, 0, 0, 136386, 70959);
INSERT IGNORE INTO `spell_target_restrictions` (`ID`, `DifficultyID`, `ConeDegrees`, `MaxTargets`, `MaxTargetLevel`, `TargetCreatureType`, `Targets`, `Width`, `SpellID`, `VerifiedBuild`) VALUES
(3638, 0, 0.0, 0, 0, 0, 16384, 0.0, 61437, 70959),
(6681, 0, 0.0, 0, 0, 0, 16384, 0.0, 98322, 70959),
(6682, 0, 0.0, 0, 0, 0, 16384, 0.0, 98323, 70959),
(15133, 0, 0.0, 0, 0, 0, 16384, 0.0, 136386, 70959);
INSERT IGNORE INTO `spell_interrupts` (`ID`, `DifficultyID`, `InterruptFlags`, `AuraInterruptFlags1`, `AuraInterruptFlags2`, `ChannelInterruptFlags1`, `ChannelInterruptFlags2`, `SpellID`, `VerifiedBuild`) VALUES
(12791, 0, 31, 0, 0, 0, 0, 61437, 70959),
(21941, 0, 31, 0, 0, 0, 0, 98322, 70959),
(21942, 0, 31, 0, 0, 0, 0, 98323, 70959),
(35174, 0, 1599, 0, 0, 0, 0, 136386, 70959);
INSERT IGNORE INTO `spell_categories` (`ID`, `DifficultyID`, `Category`, `DefenseType`, `DiminishType`, `DispelType`, `Mechanic`, `PreventionType`, `StartRecoveryCategory`, `ChargeCategory`, `SpellID`, `VerifiedBuild`) VALUES
(23408, 0, 0, 0, 0, 0, 0, 4, 0, 0, 98322, 70959),
(23409, 0, 0, 0, 0, 0, 0, 4, 0, 0, 98323, 70959);
INSERT IGNORE INTO `spell_shapeshift` (`ID`, `SpellID`, `StanceBarOrder`, `ShapeshiftExclude1`, `ShapeshiftExclude2`, `ShapeshiftMask1`, `ShapeshiftMask2`, `VerifiedBuild`) VALUES
(1353, 98322, 0, -2147483648, 0, 0, 0, 70959),
(1354, 98323, 0, -2147483648, 0, 0, 0, 70959);
INSERT IGNORE INTO `hotfix_blob` (`TableHash`, `RecordId`, `locale`, `Blob`, `VerifiedBuild`) VALUES
(2471080772, 21, CONVERT(UNHEX('656e5553') USING utf8mb4), UNHEX('4f70656e2046726f6d2056656869636c6500556e6c6f636b6564204974656d73004f70656e00001400000000000000'), 70959),
(2471080772, 30, CONVERT(UNHEX('656e5553') USING utf8mb4), UNHEX('416e6369656e74204d616e61004d616e61204465706f7369747300457874726163740045787472616374001900000000000000'), 70959),
(2471080772, 21, CONVERT(UNHEX('72755255') USING utf8mb4), UNHEX('d09ed182d0bad180d18bd182d18c20d0bdd0b020d185d0bed0b4d18300d09dd0b5d0b7d0b0d0bfd0b5d180d182d18bd0b520d0bed0b1d18ad0b5d0bad182d18b00d09ed182d0bad180d18bd182d18c00001400000000000000'), 70959),
(2471080772, 30, CONVERT(UNHEX('72755255') USING utf8mb4), UNHEX('d094d180d0b5d0b2d0bdd18fd18f20d0bcd0b0d0bdd0b000d097d0b0d0bbd0b5d0b6d0b820d0bcd0b0d0bdd18b00d098d0b7d0b2d0bbd0b5d187d18c0045787472616374001900000000000000'), 70959);
INSERT IGNORE INTO `lock` (`ID`, `Flags`, `Index1`, `Index2`, `Index3`, `Index4`, `Index5`, `Index6`, `Index7`, `Index8`, `Skill1`, `Skill2`, `Skill3`, `Skill4`, `Skill5`, `Skill6`, `Skill7`, `Skill8`, `Type1`, `Type2`, `Type3`, `Type4`, `Type5`, `Type6`, `Type7`, `Type8`, `Action1`, `Action2`, `Action3`, `Action4`, `Action5`, `Action6`, `Action7`, `Action8`, `VerifiedBuild`) VALUES
(1818, 0, 0, 21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 70959),
(1956, 0, 98322, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 70959),
(1957, 0, 98323, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 70959),
(2112, 0, 0, 136386, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 70959),
(2608, 0, 0, 5, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 70959);
COMMIT;
