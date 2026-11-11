-- Restore the upstream Vanilla display assignments for Racksum Greep and Elder Ezra Wheathoof.
-- Source: advocaite/TrinityCore 7d7c05ef83, 2026_10_25_30_world_classic_audit_display_models.sql.
-- These displays are present in CreatureDisplayInfo in both Forever builds 70862 and 70888.
START TRANSACTION;
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild)
SELECT c.entry,0,13644,1,1,70532
FROM creature_template c JOIN creature_model_info m ON m.DisplayID=13644
WHERE c.entry=13602 AND c.name='Racksum Greep'
  AND NOT EXISTS (SELECT 1 FROM creature_template_model a WHERE a.CreatureID=c.entry);
INSERT INTO creature_template_model (CreatureID, Idx, CreatureDisplayID, DisplayScale, Probability, VerifiedBuild)
SELECT c.entry,0,15627,1,1,70532
FROM creature_template c JOIN creature_model_info m ON m.DisplayID=15627
WHERE c.entry=15580 AND c.name='Elder Ezra Wheathoof'
  AND NOT EXISTS (SELECT 1 FROM creature_template_model a WHERE a.CreatureID=c.entry);
COMMIT;
