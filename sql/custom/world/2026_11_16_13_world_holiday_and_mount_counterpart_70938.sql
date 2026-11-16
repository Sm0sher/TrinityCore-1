-- Forever 70938: correct the faction counterpart and allow native Noblegarden dates.
-- Canonical AzerothCore player_factionchange_spells pairs 17229 with 64659.
-- Both mounts are present in native 70938; 64658 is absent.
START TRANSACTION;
UPDATE `mount_definitions` SET `otherFactionSpellId`=64659 WHERE `spellId`=17229 AND `otherFactionSpellId`=64658;
-- The native holiday has future dates but no duration. Keep the existing database length.
-- Extend only the expired bounds of the matching event; do not transplant upstream's event 28.
UPDATE `game_event` SET `end_time`='2037-12-31 23:59:59' WHERE `eventEntry`=9 AND `holiday`=181 AND `holidayStage`=1 AND `description`='Noblegarden' AND `end_time`='2020-12-31 08:00:00';
COMMIT;
