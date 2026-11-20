-- Track the hunter stacks by attack and consume healing charges once per finished cast.
INSERT IGNORE INTO `spell_proc` (`SpellId`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `SpellFamilyMask3`, `ProcFlags`, `ProcFlags2`, `SpellTypeMask`, `SpellPhaseMask`, `HitMask`, `AttributesMask`, `DisableEffectsMask`, `ProcsPerMinute`, `Chance`, `Cooldown`, `Charges`) VALUES
(1218589, 0, 0, 0, 0, 0, 0, 340, 0, 0, 3, 32767, 0, 0, 0, 0, 0, 0),
(28780, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0),
(1219513, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0),
(456389, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0);
-- Apply the native attack and healing conditions.
INSERT IGNORE INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(1218589, 'classic_talent_hun_naxxramas_melee_stacks'),
(28780, 'classic_spell_eye_of_the_dead_heal_cast'),
(1219513, 'classic_spell_eye_of_the_dead_heal_cast'),
(456389, 'classic_talent_hun_melee_set_mongoose_bite');
