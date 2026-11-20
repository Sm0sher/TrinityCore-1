-- Use the phase and event masks for explicitly filtered Classic effects.
INSERT IGNORE INTO `spell_proc` (`SpellId`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `SpellFamilyMask3`, `ProcFlags`, `ProcFlags2`, `SpellTypeMask`, `SpellPhaseMask`, `HitMask`, `AttributesMask`, `DisableEffectsMask`, `ProcsPerMinute`, `Chance`, `Cooldown`, `Charges`) VALUES
(1219286, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0),
(1226138, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 1, 0, 0, 0, 0),
(1227245, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 2, 0, 0, 0, 0),
(1226121, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 2, 0, 0, 0, 0, 0, 0),
(1249118, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0);
-- Bind native trigger filters and cancellation of Guarded by the Light.
INSERT IGNORE INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(1219286, 'classic_talent_rog_naxxramas_periodic_energy'),
(1226138, 'classic_talent_hun_scarlet_multishot'),
(1227245, 'classic_talent_warr_scarlet_protection'),
(1226121, 'classic_talent_dru_scarlet_guardian'),
(1249118, 'classic_spell_eternal_power_heal_cast'),
(635, 'classic_spell_pal_guarded_by_the_light_cancel'),
(639, 'classic_spell_pal_guarded_by_the_light_cancel'),
(647, 'classic_spell_pal_guarded_by_the_light_cancel'),
(1026, 'classic_spell_pal_guarded_by_the_light_cancel'),
(1042, 'classic_spell_pal_guarded_by_the_light_cancel'),
(3472, 'classic_spell_pal_guarded_by_the_light_cancel'),
(10328, 'classic_spell_pal_guarded_by_the_light_cancel'),
(10329, 'classic_spell_pal_guarded_by_the_light_cancel'),
(19750, 'classic_spell_pal_guarded_by_the_light_cancel'),
(19939, 'classic_spell_pal_guarded_by_the_light_cancel'),
(19940, 'classic_spell_pal_guarded_by_the_light_cancel'),
(19941, 'classic_spell_pal_guarded_by_the_light_cancel'),
(19942, 'classic_spell_pal_guarded_by_the_light_cancel'),
(19943, 'classic_spell_pal_guarded_by_the_light_cancel'),
(20473, 'classic_spell_pal_guarded_by_the_light_cancel'),
(20929, 'classic_spell_pal_guarded_by_the_light_cancel'),
(20930, 'classic_spell_pal_guarded_by_the_light_cancel'),
(25292, 'classic_spell_pal_guarded_by_the_light_cancel'),
(1311606, 'classic_spell_pal_guarded_by_the_light_cancel');
