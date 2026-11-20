-- Refund the native ability cooldown only for the documented event.
INSERT IGNORE INTO `spell_proc` (`SpellId`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `SpellFamilyMask3`, `ProcFlags`, `ProcFlags2`, `SpellTypeMask`, `SpellPhaseMask`, `HitMask`, `AttributesMask`, `DisableEffectsMask`, `ProcsPerMinute`, `Chance`, `Cooldown`, `Charges`) VALUES
(1214162, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 112, 0, 0, 0, 0, 0, 0),
(429152, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 1, 0, 0, 0, 0);
-- Attach native spell cooldown filters and the damage split limit.
INSERT IGNORE INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(1214162, 'classic_talent_warr_shield_slam_refund'),
(429152, 'classic_spell_pal_improved_hammer_of_wrath'),
(462853, 'classic_spell_pal_hand_of_sacrifice_limit');
-- The obsolete Expose Armor record is a passive modifier without a matching spell mask.
UPDATE `serverside_spell` SET `ProcFlags`=0 WHERE `Id`=14170 AND `DifficultyID`=0 AND `ProcFlags`=69648;
