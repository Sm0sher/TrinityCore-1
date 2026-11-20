-- Scope wound removal to healing, Incite Madness to kills, and the visual-only test driver to its native hit event.
INSERT IGNORE INTO `spell_proc` (`SpellId`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `SpellFamilyMask3`, `ProcFlags`, `ProcFlags2`, `SpellTypeMask`, `SpellPhaseMask`, `HitMask`, `AttributesMask`, `DisableEffectsMask`, `ProcsPerMinute`, `Chance`, `Cooldown`, `Charges`) VALUES
(466195, 0, 0, 0, 0, 0, 0, 2147518464, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1288524, 0, 0, 0, 0, 0, 0, 2147518464, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(445080, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(1215456, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0);
-- Apply the original thresholds and victim requirements.
INSERT IGNORE INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
(466195, 'classic_spell_raid_wound_heal'),
(1288524, 'classic_spell_raid_wound_heal'),
(445080, 'classic_spell_incite_madness_player_kill');
