-- WoW Forever 1.60.1.70959: native DB2 layouts are unchanged from 70938.
-- Install the matching DB2 files before restarting the active realm.
START TRANSACTION;
INSERT INTO build_info (build,majorVersion,minorVersion,bugfixVersion,hotfixVersion)
VALUES (70959,1,60,1,NULL)
ON DUPLICATE KEY UPDATE majorVersion=1,minorVersion=60,bugfixVersion=1,hotfixVersion=NULL;
UPDATE realmlist SET gamebuild=70959 WHERE id IN (70,71,72,73) AND gamebuild=70938;
COMMIT;
