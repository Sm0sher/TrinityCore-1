-- Consume charged modifiers when the affected abilities are cast.
START TRANSACTION;
INSERT IGNORE INTO `spell_proc` (`SpellId`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `SpellFamilyMask3`, `ProcFlags`, `ProcFlags2`, `SpellTypeMask`, `SpellPhaseMask`, `HitMask`, `AttributesMask`, `DisableEffectsMask`, `ProcsPerMinute`, `Chance`, `Cooldown`, `Charges`) VALUES
(414800, 0, 7, 32, 33554432, 0, 0, 0, 0, 0, 1, 0, 8, 2, 0, 0, 0, 0),
(470272, 0, 11, 2, 0, 0, 0, 0, 0, 0, 1, 0, 8, 2, 0, 0, 0, 0),
(470271, 0, 10, 0, 2097152, 0, 0, 0, 0, 0, 1, 0, 8, 2, 0, 0, 0, 0),
(1219101, 0, 5, 536870912, 0, 0, 0, 0, 0, 0, 1, 0, 8, 4, 0, 0, 0, 0),
(469220, 0, 5, 536870912, 0, 0, 0, 0, 0, 0, 1, 0, 8, 4, 0, 0, 0, 0),
(1329326, 0, 8, 768, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);
COMMIT;
