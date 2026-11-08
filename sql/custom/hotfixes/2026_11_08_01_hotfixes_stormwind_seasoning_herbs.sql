-- Forever 70862 contains Item 2665 and QuestV2 90, but omits the ItemSparse row
-- required by the vendor and the Seasoned Wolf Kabobs quest. Restore the Classic
-- Era 1.15.8.67156 ItemSparse values in the 70862 schema, retaining the native Item row.
START TRANSACTION;

INSERT IGNORE INTO `item_sparse`
(`ID`, `Display`, `ExpansionID`, `StatModifierBonusStat1`, `StatModifierBonusStat2`, `StatModifierBonusStat3`,
 `StatModifierBonusStat4`, `StatModifierBonusStat5`, `StatModifierBonusStat6`, `StatModifierBonusStat7`,
 `StatModifierBonusStat8`, `StatModifierBonusStat9`, `StatModifierBonusStat10`, `Stackable`, `AllowableRace1`,
 `AllowableRace2`, `SellPrice`, `BuyPrice`, `VendorStackCount`, `PriceVariance`, `PriceRandomValue`,
 `Flags2`, `ItemLevel`, `AllowableClass`, `OverallQualityID`, `VerifiedBuild`) VALUES
(2665, 'Stormwind Seasoning Herbs', 254, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 20, -1, -1, 5, 20, 1, 1, 1, 24580, 1, -1, 1, 70862);

INSERT IGNORE INTO `item_sparse_locale` (`ID`, `locale`, `Display_lang`, `VerifiedBuild`) VALUES
(2665, 'ruRU', 'Травяные приправы Штормграда', 70862);

-- ItemSparse table hash from the Forever 70862 DB2 header.
INSERT IGNORE INTO `hotfix_data` (`Id`, `UniqueId`, `TableHash`, `RecordId`, `Status`, `VerifiedBuild`) VALUES
(2000103, 2665, 2442913102, 2665, 1, 70862);

COMMIT;
