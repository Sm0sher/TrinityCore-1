-- WoW Forever 1.60.1.70938 uses the same DB2 layouts as 70888.
-- Install the freshly extracted 70938 client data before restarting the realm.
START TRANSACTION;
INSERT INTO build_info (build, majorVersion, minorVersion, bugfixVersion, hotfixVersion)
VALUES (70938, 1, 60, 1, NULL)
ON DUPLICATE KEY UPDATE majorVersion=1, minorVersion=60, bugfixVersion=1, hotfixVersion=NULL;

UPDATE realmlist SET gamebuild=70938
WHERE id IN (70,71,72,73,74) AND gamebuild IN (70634,70658,70790,70862,70888);

DELETE FROM build_info
WHERE build=70888
  AND NOT EXISTS (SELECT 1 FROM realmlist WHERE gamebuild=70888)
  AND NOT EXISTS (SELECT 1 FROM build_auth_key WHERE build=70888)
  AND NOT EXISTS (SELECT 1 FROM build_executable_hash WHERE build=70888);
COMMIT;
