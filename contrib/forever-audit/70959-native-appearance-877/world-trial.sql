START TRANSACTION;
-- Restore original NPC appearances with complete native body, baked outfit, customization and equipment metadata.
INSERT IGNORE INTO `creature_model_info` (`DisplayID`,`BoundingRadius`,`CombatReach`,`DisplayID_Other_Gender`,`VerifiedBuild`) VALUES
(24544,0.306,1.5,0,70959),
(17557,0.347,1.5,0,70959),
(28350,0.306,1.5,0,70959);
INSERT IGNORE INTO `creature_template_model` (`CreatureID`,`Idx`,`CreatureDisplayID`,`DisplayScale`,`Probability`,`VerifiedBuild`) VALUES
(1293,0,24544,1.0,1.0,70959),
(18180,0,17557,1.0,1.0,70959),
(33439,0,28350,1.0,0.0,70959);
COMMIT;
