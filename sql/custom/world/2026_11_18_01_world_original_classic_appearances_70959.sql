-- Build 70959: restore 19 original NPC appearances with confirmed combat geometry.
-- Sources: official Classic 5.5.4.70960 metadata, Wago 12.1.0.69497, native 1.60.1.70959.
-- Preserve all templates and all required appearance variants. No client file is modified.
START TRANSACTION;
-- Restore original model bindings and combat geometry for the matching 70959 hotfix.

INSERT IGNORE INTO creature_model_info (DisplayID,BoundingRadius,CombatReach,DisplayID_Other_Gender,VerifiedBuild) VALUES
    (18043,3.76355,4.6,0,70959),
    (19073,1.0,0.0,0,70959),
    (19074,1.0,0.0,0,70959),
    (19325,0.75,5.0,0,70959),
    (20261,0.75,5.0,0,70959),
    (20611,0.075,0.5,0,70959),
    (20628,0.907683,1.5,0,70959),
    (21349,2.42049,4.0,0,70959),
    (23102,1.35,1.6875,0,70959),
    (23916,2.08488,1.0,0,70959),
    (23917,2.81459,1.35,0,70959),
    (23941,4.16976,2.0,0,70959),
    (25729,3.46089,2.25,0,70959),
    (26882,7.64921,3.75,0,70959),
    (26945,2.88408,1.875,0,70959),
    (29934,3.44974,3.5,0,70959),
    (34168,4.29648,2.0,0,70959),
    (34194,2.14824,1.0,0,70959),
    (40321,4.25056,3.0,0,70959);
INSERT IGNORE INTO creature_template_model (CreatureID,Idx,CreatureDisplayID,DisplayScale,Probability,VerifiedBuild) VALUES
    (19305,0,19325,1.0,0.0,70959),
    (19636,0,19074,1.0,1.0,70959),
    (19637,0,19073,1.0,1.0,70959),
    (21699,0,20628,1.0,1.0,70959),
    (21936,0,20611,1.0,0.0,70959),
    (22051,0,20261,1.0,0.0,70959),
    (23197,0,21349,1.0,1.0,70959),
    (25382,0,23102,1.0,0.0,70959),
    (25445,0,23916,1.0,0.0,70959),
    (25451,0,23917,1.0,0.0,70959),
    (25453,0,23941,1.0,0.0,70959),
    (28221,0,18043,1.0,1.0,70959),
    (30330,0,26882,1.0,1.0,70959),
    (30670,0,26945,1.0,1.0,70959),
    (30670,1,25729,1.0,1.0,70959),
    (35898,0,29934,1.0,0.0,70959),
    (41185,0,40321,1.0,1.0,70959),
    (44906,0,34168,1.0,1.0,70959),
    (58475,0,34194,1.0,1.0,70959);

-- Restore original model bindings and combat geometry for the matching 70959 hotfix.

INSERT IGNORE INTO creature_model_info (DisplayID,BoundingRadius,CombatReach,DisplayID_Other_Gender,VerifiedBuild) VALUES
    (85628,1.92184,3.75,0,70959);
INSERT IGNORE INTO creature_template_model (CreatureID,Idx,CreatureDisplayID,DisplayScale,Probability,VerifiedBuild) VALUES
    (134056,0,85628,4.0,1.0,70959);

COMMIT;
