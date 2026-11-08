-- Restore companion appearances from Creature and CreatureDisplayInfo in Wago 1.60.1.70862.
START TRANSACTION;
INSERT INTO `creature_template_model` (`CreatureID`,`Idx`,`CreatureDisplayID`,`DisplayScale`,`Probability`,`VerifiedBuild`)
SELECT `entry`, 0, CASE `entry` WHEN 10598 THEN 9997 WHEN 16548 THEN 16257 WHEN 17254 THEN 16942 END, 1, 1, 70862
FROM `creature_template` AS `t`
WHERE `entry` IN (10598,16548,17254)
  AND NOT EXISTS (SELECT 1 FROM `creature_template_model` AS `m` WHERE `m`.`CreatureID` = `t`.`entry`);

-- Entry 17254 is White Tiger Cub in Forever; Ash'ana is the inherited Retail identity.
UPDATE `creature_template` SET `name`='White Tiger Cub' WHERE `entry`=17254 AND `name`='Ash\'ana';
UPDATE `creature_template_locale` SET `Name`=NULL, `NameAlt`=NULL WHERE `entry`=17254;
UPDATE `creature_template_locale` SET `Name`='Белый тигренок' WHERE `entry`=17254 AND `locale`='ruRU';
COMMIT;
