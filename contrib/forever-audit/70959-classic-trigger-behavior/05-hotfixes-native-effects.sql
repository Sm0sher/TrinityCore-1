-- 1230705: Power display is changed when the aura applies.
-- 1228479: Power display is changed when the aura applies.
-- 426454: Shadowflame is selected by the native action bar override.
-- 457571: Banish overrides are selected by the native action bar.
-- 456322: Tranquility cooldown and healing modifiers are applied by the spellmod system.
-- 470105: Elemental Focus charge limit is applied by SpellModOp::ProcCharges.
-- 462752: The auxiliary spell is directly triggered on cast, not by the passive modifiers.
-- 1284560: The battleground flag applies its existing immunity, speed and position effects.
-- 25160: The sand storm trigger runs on the native periodic timer.
-- 467491: Wildfire damage and knockback follow the native periodic timer.
INSERT IGNORE INTO `spell_aura_options` (`ID`, `DifficultyID`, `CumulativeAura`, `ProcCategoryRecovery`, `ProcChance`, `ProcCharges`, `SpellProcsPerMinuteID`, `ProcTypeMask1`, `ProcTypeMask2`, `SpellID`, `VerifiedBuild`) VALUES
(241378, 0, 0, 0, 101, 0, 0, 0, 0, 1230705, 70959),
(241330, 0, 0, 0, 101, 0, 0, 0, 0, 1228479, 70959),
(238682, 0, 0, 0, 100, 0, 0, 0, 0, 426454, 70959),
(237941, 0, 0, 0, 100, 0, 0, 0, 0, 457571, 70959),
(237764, 0, 0, 1000, 25, 0, 0, 0, 0, 456322, 70959),
(239323, 0, 0, 0, 100, 0, 0, 0, 0, 470105, 70959),
(241920, 0, 0, 0, 100, 0, 0, 0, 0, 462752, 70959),
(245276, 0, 0, 0, 100, 0, 0, 0, 0, 1284560, 70959),
(135449, 0, 0, 0, 100, 0, 0, 0, 0, 25160, 70959),
(239015, 0, 0, 0, 101, 0, 0, 0, 0, 467491, 70959);
