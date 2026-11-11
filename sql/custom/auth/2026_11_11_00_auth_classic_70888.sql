-- WoW Forever 1.60.1.70888 is the active client build for the Forever realms.
START TRANSACTION;
INSERT INTO build_info (build, majorVersion, minorVersion, bugfixVersion, hotfixVersion)
VALUES (70888, 1, 60, 1, NULL)
ON DUPLICATE KEY UPDATE majorVersion=1, minorVersion=60, bugfixVersion=1, hotfixVersion=NULL;

UPDATE realmlist SET gamebuild=70888
WHERE id IN (70,71,72,73,74) AND gamebuild IN (70634,70658,70790,70862);

DELETE FROM build_info
WHERE build=70862
  AND NOT EXISTS (SELECT 1 FROM realmlist WHERE gamebuild=70862)
  AND NOT EXISTS (SELECT 1 FROM build_auth_key WHERE build=70862)
  AND NOT EXISTS (SELECT 1 FROM build_executable_hash WHERE build=70862);
COMMIT;
