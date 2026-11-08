-- Local MoshPit deployment: keep the Normal realm and hide the three unused rulesets.
-- Preserve realm IDs and region 70: the Forever client expects the 70-1-70 address.
UPDATE `realmlist` SET `name` = 'MoshPit', `flag` = `flag` & ~2 WHERE `id` = 70;
UPDATE `realmlist` SET `flag` = `flag` | 2 WHERE `id` IN (71, 72, 73);
