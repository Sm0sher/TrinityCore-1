-- Forever 70862 retains Item 12871 and quests 5166/5167, but lacks the ItemSparse row.
-- Restore the Classic Era 1.15.8.67156 properties so the existing Gyth loot can load.
START TRANSACTION;

INSERT IGNORE INTO `item_sparse`
(`ID`, `Display`, `ExpansionID`, `StatModifierBonusStat1`, `StatModifierBonusStat2`, `StatModifierBonusStat3`,
 `StatModifierBonusStat4`, `StatModifierBonusStat5`, `StatModifierBonusStat6`, `StatModifierBonusStat7`,
 `StatModifierBonusStat8`, `StatModifierBonusStat9`, `StatModifierBonusStat10`, `Stackable`, `AllowableRace1`,
 `AllowableRace2`, `SellPrice`, `BuyPrice`, `VendorStackCount`, `PriceVariance`, `PriceRandomValue`,
 `Flags2`, `ItemLevel`, `AllowableClass`, `Bonding`, `OverallQualityID`, `VerifiedBuild`) VALUES
(12871, 'Chromatic Carapace', 254, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 1, -1, -1, 8048, 32195, 1, 1, 1, 24580, 1, -1, 1, 4, 70862);

INSERT IGNORE INTO `item_sparse_locale` (`ID`, `locale`, `Display_lang`, `VerifiedBuild`) VALUES
(12871, 'ruRU', 'Всецветный панцирь', 70862);

-- ItemSparse table hash from the Forever 70862 DB2 header.
INSERT IGNORE INTO `hotfix_data` (`Id`, `UniqueId`, `TableHash`, `RecordId`, `Status`, `VerifiedBuild`) VALUES
(2000104, 12871, 2442913102, 12871, 1, 70862);

COMMIT;
