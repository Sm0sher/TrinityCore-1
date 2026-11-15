START TRANSACTION;
DELETE FROM `hotfix_data` WHERE `Id` <=> '1005640' AND `UniqueId` <=> '1397636376' AND `TableHash` <=> '1167404654' AND `RecordId` <=> '6' AND `Status` <=> '1' AND `VerifiedBuild` <=> '70124';
DELETE FROM `hotfix_data` WHERE `Id` <=> '1005886' AND `UniqueId` <=> '1397636622' AND `TableHash` <=> '4292466294' AND `RecordId` <=> '7' AND `Status` <=> '1' AND `VerifiedBuild` <=> '70124';
DELETE FROM `hotfix_data` WHERE `Id` <=> '1005887' AND `UniqueId` <=> '1397636623' AND `TableHash` <=> '4292466294' AND `RecordId` <=> '14' AND `Status` <=> '1' AND `VerifiedBuild` <=> '70124';
COMMIT;
