-- Restore native 70888 appearances for templates rejected by the original model loader.
START TRANSACTION;
INSERT INTO creature_template_model (CreatureID,Idx,CreatureDisplayID,DisplayScale,Probability,VerifiedBuild) VALUES
(18895,0,10710,1.0,1.0,70888),
(24892,0,6686,1.0,0.0,70888),
(27746,0,1545,1.0,0.0,70888),
(33095,0,4402,1.0,1.0,70888),
(43204,0,1120,1.0,0.0,70888),
(66397,0,1269,1.0,1.0,70888)
ON DUPLICATE KEY UPDATE CreatureID=creature_template_model.CreatureID;
COMMIT;
