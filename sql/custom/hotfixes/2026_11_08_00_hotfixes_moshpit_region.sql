-- Cfg_Regions record 1160 in client 1.60.1.70862 is region 70, named Beta.
-- Override only its displayed name; retain the client's routing and timing fields.
DELETE FROM `cfg_regions` WHERE `ID` = 1160;
INSERT INTO `cfg_regions` (`ID`,`Tag`,`Name`,`RegionID`,`Raidorigin`,`RegionGroupMask`,`ChallengeOrigin`,`TimeEventRegionGroupID`,`VerifiedBuild`) VALUES
(1160,'XX','MoshPit',70,1127232000,8,1135695600,12,70862);
DELETE FROM `cfg_regions_locale` WHERE `ID` = 1160;
INSERT INTO `cfg_regions_locale` (`ID`,`locale`,`Name_lang`,`VerifiedBuild`) VALUES
(1160,'ruRU','MoshPit',70862),
(1160,'deDE','MoshPit',70862),
(1160,'esES','MoshPit',70862),
(1160,'esMX','MoshPit',70862),
(1160,'frFR','MoshPit',70862),
(1160,'itIT','MoshPit',70862),
(1160,'koKR','MoshPit',70862),
(1160,'ptBR','MoshPit',70862),
(1160,'zhCN','MoshPit',70862),
(1160,'zhTW','MoshPit',70862);
DELETE FROM `hotfix_data` WHERE `Id` = 2000102 AND `TableHash` = 2810085133 AND `RecordId` = 1160;
INSERT INTO `hotfix_data` (`Id`,`UniqueId`,`TableHash`,`RecordId`,`Status`,`VerifiedBuild`) VALUES
(2000102,1160,2810085133,1160,1,70862);
