-- Restore access to the existing inventory on the placed vendor.
UPDATE `creature_template`
SET `npcflag` = `npcflag` | 0x80
WHERE `entry` = 254151
  AND `npcflag` = 3
  AND EXISTS (SELECT 1 FROM `creature` WHERE `id` = 254151 AND `map` = 2991 AND `npcflag` IS NULL)
  AND EXISTS (SELECT 1 FROM `npc_vendor` WHERE `entry` = 254151);
