-- Client build 70888. The native effects handle these spells, or the ID was reused.
START TRANSACTION;
DELETE FROM `spell_script_names` WHERE (`spell_id`, `ScriptName`) IN (
    (633, 'spell_pal_lay_on_hands'), -- Classic Lay on Hands does not apply Forbearance.
    (4338, 'spell_icecrown_plant_battle_standard'), -- Axe Specialization in 70888.
    (6940, 'spell_pal_hand_of_sacrifice'), -- Fixed damage split, handled by aura 562.
    (20217, 'spell_pal_blessing_of_kings'),
    (20589, 'spell_gen_remove_impairing_auras'), -- Native immunity effects purge roots and snares.
    (21562, 'spell_pri_power_word_fortitude'),
    (24931, 'spell_gen_set_health_100'),
    (24959, 'spell_gen_set_health_500'),
    (27683, 'spell_pri_shadow_protection'),
    (28559, 'spell_gen_feign_death_all_flags_uninteractible') -- Native Untrackable aura.
);

-- Bind the other ranks, which have the same effect layout and restrictions.
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES
    (5599, 'spell_pal_blessing_of_protection'),
    (10278, 'spell_pal_blessing_of_protection'),
    (11329, 'spell_rog_vanish_aura')
ON DUPLICATE KEY UPDATE `spell_id` = `spell_script_names`.`spell_id`;
COMMIT;
