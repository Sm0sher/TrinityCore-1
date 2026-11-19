-- Restore original faction data and all dependencies for eight game objects.
START TRANSACTION;
INSERT IGNORE INTO `faction` (`ID`,`Name`,`Description`,`ReputationIndex`,`ParentFactionID`,`Expansion`,`FriendshipRepID`,`Flags`,`ParagonFactionID`,`RenownFactionID`,`RenownCurrencyID`,`RenownThresholdCurveID`,`ReputationClassMask1`,`ReputationClassMask2`,`ReputationClassMask3`,`ReputationClassMask4`,`ReputationFlags1`,`ReputationFlags2`,`ReputationFlags3`,`ReputationFlags4`,`ReputationBase1`,`ReputationBase2`,`ReputationBase3`,`ReputationBase4`,`ReputationMax1`,`ReputationMax2`,`ReputationMax3`,`ReputationMax4`,`ParentFactionMod1`,`ParentFactionMod2`,`ParentFactionCap1`,`ParentFactionCap2`,`ReputationRaceMask11`,`ReputationRaceMask12`,`ReputationRaceMask21`,`ReputationRaceMask22`,`ReputationRaceMask31`,`ReputationRaceMask32`,`ReputationRaceMask41`,`ReputationRaceMask42`,`VerifiedBuild`) VALUES
(959,CONVERT(UNHEX('4163746f7220476f6f64') USING utf8mb4),CONVERT(UNHEX('') USING utf8mb4),-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,5,5,0,0,0,0,0,0,0,0,70959),
(960,CONVERT(UNHEX('4163746f72204576696c') USING utf8mb4),CONVERT(UNHEX('') USING utf8mb4),-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,5,5,0,0,0,0,0,0,0,0,70959),
(978,CONVERT(UNHEX('4b7572656e6169') USING utf8mb4),CONVERT(UNHEX('447261656e656920666f72202272656465656d65642e22202054686573652042726f6b656e2068617665206573636170656420746865206772617370206f6620746865697220766172696f757320736c617665727320696e204f75746c616e6420616e642068617665206d61646520746865697220686f6d6520696e204e616772616e642e2020497420697320746865726520746861742074686579207365656b20746f207265646973636f7665722074686569722064657374696e792e') USING utf8mb4),84,980,0,0,0,0,0,0,0,0,0,0,0,16,0,0,0,-1200,-42000,0,0,42000,-42000,0,0,0,0,5,5,-1321907123,1427461461,1309324210,-1440044374,0,0,0,0,70959),
(1103,CONVERT(UNHEX('435446202d20466c6167202d204e65757472616c') USING utf8mb4),CONVERT(UNHEX('') USING utf8mb4),-1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,5,5,0,0,0,0,0,0,0,0,70959);
INSERT IGNORE INTO `faction_template` (`ID`,`Faction`,`Flags`,`FactionGroup`,`FriendGroup`,`EnemyGroup`,`Enemies1`,`Enemies2`,`Enemies3`,`Enemies4`,`Enemies5`,`Enemies6`,`Enemies7`,`Enemies8`,`Friend1`,`Friend2`,`Friend3`,`Friend4`,`Friend5`,`Friend6`,`Friend7`,`Friend8`,`VerifiedBuild`) VALUES
(1722,978,0,2,2,4,0,0,0,0,0,0,0,0,978,0,0,0,0,0,0,0,70959),
(2059,1103,0,0,7,0,0,0,0,0,0,0,0,0,1103,0,0,0,0,0,0,0,70959),
(2102,960,36,0,0,1,959,0,0,0,0,0,0,0,960,0,0,0,0,0,0,0,70959);
INSERT IGNORE INTO `hotfix_data` (`Id`,`UniqueId`,`TableHash`,`RecordId`,`Status`,`VerifiedBuild`) VALUES
(4051035,959,116794583,959,1,70959),
(4051036,960,116794583,960,1,70959),
(4051037,978,116794583,978,1,70959),
(4051038,1103,116794583,1103,1,70959),
(4051039,1722,270052821,1722,1,70959),
(4051040,2059,270052821,2059,1,70959),
(4051041,2102,270052821,2102,1,70959);
COMMIT;
