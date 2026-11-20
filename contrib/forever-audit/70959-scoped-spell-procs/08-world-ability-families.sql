-- 408700: Waylay only on Ambush and Backstab hits
-- 1224716: Puncturing Wounds only triggers the combo-point effect on Backstab
-- 1226109: Druid Scarlet Feral two-piece only on Rake or Rip ticks
-- 1226467: Paladin Scarlet Protection two-piece only on Shield of Righteousness
-- 1226977: Shaman Scarlet Elemental four-piece grants the Lava Burst buff from Lightning Bolt or Chain Lightning
-- 467818: Shaman Elemental two-piece activates Elemental Focus on spell critical hits
-- 431664: Surge of Light activates on critical spell hits
START TRANSACTION;
INSERT IGNORE INTO `spell_proc` (`SpellId`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `SpellFamilyMask3`, `ProcFlags`, `ProcFlags2`, `SpellTypeMask`, `SpellPhaseMask`, `HitMask`, `AttributesMask`, `DisableEffectsMask`, `ProcsPerMinute`, `Chance`, `Cooldown`, `Charges`) VALUES
(408700, 0, 8, 516, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0),
(1224716, 0, 8, 4, 0, 0, 0, 0, 0, 0, 2, 0, 0, 5, 0, 0, 0, 0),
(1226109, 0, 7, 4096, 0, 2097152, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0),
(1226467, 0, 10, 0, 1048576, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0),
(1226977, 0, 11, 3, 0, 0, 0, 0, 0, 0, 2, 0, 0, 1, 0, 0, 0, 0),
(467818, 0, 0, 0, 0, 0, 0, 87040, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0),
(431664, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0);
COMMIT;
