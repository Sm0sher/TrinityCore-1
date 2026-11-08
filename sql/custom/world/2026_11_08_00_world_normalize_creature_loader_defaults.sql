-- Persist the same values ObjectMgr uses after validating creature templates and spawns.
START TRANSACTION;

-- Faction 0 is unset. The template loader falls back to faction 35.
UPDATE `creature_template`
SET `faction` = 35
WHERE `faction` = 0;

-- UNIT_FLAG2_ALLOWED in UnitDefines.h. Preserve every bit accepted by the loader.
UPDATE `creature_template`
SET `unit_flags2` = `unit_flags2` & 0x04034823
WHERE (`unit_flags2` & 0xFBFCB7DC) <> 0;

-- Regenerating creatures already spawn at full health. NULL leaves that default in effect.
UPDATE `creature` AS `c`
JOIN `creature_template` AS `ct` ON `ct`.`entry` = `c`.`id`
SET `c`.`curHealthPct` = NULL
WHERE `c`.`curHealthPct` = 100 AND `ct`.`RegenHealth` <> 0;

COMMIT;
