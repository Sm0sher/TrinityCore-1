-- Forever sniff spawn 21200000 reuses Retail entry 2756 for the giver of quest 97277.
-- Display 3428 is the Classic dwarf appearance and exists in 70862; Retail display 46093 does not.
START TRANSACTION;

UPDATE `creature_template_model` AS `m`
JOIN `creature_template` AS `t` ON `t`.`entry` = `m`.`CreatureID`
JOIN `creature_queststarter` AS `q` ON `q`.`id` = `t`.`entry` AND `q`.`quest` = 97277
SET `m`.`CreatureDisplayID` = 3428, `m`.`VerifiedBuild` = 0
WHERE `t`.`entry` = 2756 AND `t`.`name` IN ('Chao-Ju', 'Grund Drokda') AND `m`.`CreatureDisplayID` = 46093;

UPDATE `creature_template` AS `t`
JOIN `creature_queststarter` AS `q` ON `q`.`id` = `t`.`entry` AND `q`.`quest` = 97277
SET `t`.`name` = 'Grund Drokda'
WHERE `t`.`entry` = 2756 AND `t`.`name` = 'Chao-Ju';

-- Fall back to the corrected name instead of displaying the inherited Retail translations.
UPDATE `creature_template_locale` AS `l`
JOIN `creature_template` AS `t` ON `t`.`entry` = `l`.`entry`
JOIN `creature_queststarter` AS `q` ON `q`.`id` = `t`.`entry` AND `q`.`quest` = 97277
SET `l`.`Name` = NULL, `l`.`NameAlt` = NULL
WHERE `l`.`entry` = 2756 AND `t`.`name` = 'Grund Drokda' AND `l`.`VerifiedBuild` IN (69497, 69587);

COMMIT;
