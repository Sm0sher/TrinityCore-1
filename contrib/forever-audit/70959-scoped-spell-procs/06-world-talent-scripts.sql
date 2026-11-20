-- Match Frostbite and Pyroclasm to their actual Classic ability families and Combat Potency to melee events.
START TRANSACTION;
INSERT IGNORE INTO spell_script_names (spell_id, ScriptName) VALUES
(11071, 'classic_spell_mage_frostbite'),
(18073, 'classic_talent_warl_pyroclasm'),
(432259, 'classic_talent_rog_combat_potency');
INSERT IGNORE INTO spell_proc (SpellId,SchoolMask,SpellFamilyName,SpellFamilyMask0,SpellFamilyMask1,SpellFamilyMask2,SpellFamilyMask3,ProcFlags,ProcFlags2,SpellTypeMask,SpellPhaseMask,HitMask,AttributesMask,DisableEffectsMask,ProcsPerMinute,Chance,Cooldown,Charges) VALUES
(11071,0,3,0x100000,0,0,0,0x10000,0,1,2,0,0,0,0,100,0,0),
(18073,4,5,0x60,0,0,0,0x50000,0,1,2,0,0,2,0,100,0,0),
(432259,0,0,0,0,0,0,0x14,0,1,2,0,0,0,0,100,0,0);
COMMIT;
