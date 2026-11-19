-- Item and spell dependencies from Wago 12.1.0.69497 for WoW Forever 70959.
START TRANSACTION;
INSERT IGNORE INTO `item` (`ID`, `ClassID`, `SubclassID`, `Material`, `InventoryType`, `SheatheType`, `ItemPetFoodID`, `SoundOverrideSubclassID`, `IconFileDataID`, `ItemGroupSoundsID`, `ContentTuningID`, `ModifiedCraftingReagentItemID`, `Unknown1200`, `CraftingQualityID`, `ItemSquishEraID`, `RecraftReagentCountPercentage`, `OrderSource`, `VerifiedBuild`) VALUES
(21887, 7, 6, 8, 0, 0, 0, -1, 134259, 7, 0, 0, 0, 0, 0, 0.0, 0, 70959),
(25649, 7, 6, 8, 0, 0, 0, -1, 134258, 7, 0, 0, 0, 0, 0, 0.0, 0, 70959),
(25699, 7, 6, 8, 0, 0, 0, -1, 134261, 7, 0, 0, 0, 0, 0, 0.0, 0, 70959),
(25700, 7, 6, 8, 0, 0, 0, -1, 134306, 7, 0, 0, 0, 0, 0, 0.0, 0, 70959),
(25707, 7, 6, 8, 0, 0, 0, -1, 134262, 7, 0, 0, 0, 0, 0, 0.0, 0, 70959),
(25708, 7, 6, 8, 0, 0, 0, -1, 134263, 7, 0, 0, 0, 0, 0, 0.0, 0, 70959),
(29548, 7, 6, 8, 0, 0, 0, -1, 134312, 7, 0, 0, 0, 0, 0, 0.0, 0, 70959),
(33567, 7, 6, 8, 0, 0, 0, -1, 134265, 7, 0, 0, 0, 0, 0, 0.0, 0, 70959),
(33568, 7, 6, 8, 0, 0, 0, -1, 134264, 7, 0, 0, 0, 0, 0, 0.0, 0, 70959),
(35229, 12, 0, 0, 0, 0, 0, 0, 133850, 23, 0, 0, 0, 0, 0, 0.0, 0, 70959),
(44128, 7, 6, 8, 0, 0, 0, -1, 237423, 7, 0, 0, 0, 0, 0, 0.0, 0, 70959);
INSERT IGNORE INTO `hotfix_data` (`Id`, `UniqueId`, `TableHash`, `RecordId`, `Status`, `VerifiedBuild`) VALUES
(4051204, 21887, 1344507586, 21887, 1, 70959),
(4051205, 21887, 2442913102, 21887, 1, 70959),
(4051206, 25649, 1344507586, 25649, 1, 70959),
(4051207, 25649, 2442913102, 25649, 1, 70959),
(4051208, 25699, 1344507586, 25699, 1, 70959),
(4051209, 25699, 2442913102, 25699, 1, 70959),
(4051210, 25700, 1344507586, 25700, 1, 70959),
(4051211, 25700, 2442913102, 25700, 1, 70959),
(4051212, 25707, 1344507586, 25707, 1, 70959),
(4051213, 25707, 2442913102, 25707, 1, 70959),
(4051214, 25708, 1344507586, 25708, 1, 70959),
(4051215, 25708, 2442913102, 25708, 1, 70959),
(4051216, 29548, 1344507586, 29548, 1, 70959),
(4051217, 29548, 2442913102, 29548, 1, 70959),
(4051218, 33567, 1344507586, 33567, 1, 70959),
(4051219, 33567, 2442913102, 33567, 1, 70959),
(4051220, 33568, 1344507586, 33568, 1, 70959),
(4051221, 33568, 2442913102, 33568, 1, 70959),
(4051222, 35229, 1344507586, 35229, 1, 70959),
(4051223, 35229, 2442913102, 35229, 1, 70959),
(4051224, 44128, 1344507586, 44128, 1, 70959),
(4051225, 44128, 2442913102, 44128, 1, 70959),
(4051226, 6559, 1073915313, 6559, 1, 70959),
(4051227, 20177, 1073915313, 20177, 1, 70959),
(4051228, 4965, 13330255, 4965, 1, 70959),
(4051229, 6587, 13330255, 6587, 1, 70959),
(4051230, 59926, 1187407512, 59926, 1, 70959),
(4051231, 163205, 1187407512, 163205, 1, 70959),
(4051232, 40677, 3322146344, 40677, 1, 70959),
(4051233, 137100, 3322146344, 137100, 1, 70959),
(4051234, 53580, 4030871717, 53580, 1, 70959),
(4051235, 229525, 4030871717, 229525, 1, 70959),
(4051236, 3752, 2875640223, 3752, 1, 70959),
(4051237, 9997, 2875640223, 9997, 1, 70959),
(4051238, 71331, 666345498, 71331, 1, 70959),
(4051239, 255, 4256848486, 255, 1, 70959);
INSERT IGNORE INTO `item_sparse` (`ID`, `Description`, `Display3`, `Display2`, `Display1`, `Display`, `ExpansionID`, `DmgVariance`, `LimitCategory`, `DurationInInventory`, `QualityModifier`, `BagFamily`, `StartQuestID`, `LanguageID`, `ItemRange`, `StatPercentageOfSocket1`, `StatPercentageOfSocket2`, `StatPercentageOfSocket3`, `StatPercentageOfSocket4`, `StatPercentageOfSocket5`, `StatPercentageOfSocket6`, `StatPercentageOfSocket7`, `StatPercentageOfSocket8`, `StatPercentageOfSocket9`, `StatPercentageOfSocket10`, `StatPercentEditor1`, `StatPercentEditor2`, `StatPercentEditor3`, `StatPercentEditor4`, `StatPercentEditor5`, `StatPercentEditor6`, `StatPercentEditor7`, `StatPercentEditor8`, `StatPercentEditor9`, `StatPercentEditor10`, `StatModifierBonusStat1`, `StatModifierBonusStat2`, `StatModifierBonusStat3`, `StatModifierBonusStat4`, `StatModifierBonusStat5`, `StatModifierBonusStat6`, `StatModifierBonusStat7`, `StatModifierBonusStat8`, `StatModifierBonusStat9`, `StatModifierBonusStat10`, `Stackable`, `MaxCount`, `MinReputation`, `RequiredAbility`, `AllowableRace1`, `AllowableRace2`, `SellPrice`, `BuyPrice`, `VendorStackCount`, `PriceVariance`, `PriceRandomValue`, `Flags1`, `Flags2`, `Flags3`, `Flags4`, `Flags5`, `FactionRelated`, `ModifiedCraftingReagentItemID`, `ContentTuningID`, `PlayerLevelToItemLevelCurveID`, `ItemLevelOffsetCurveID`, `ItemLevelOffsetItemLevel`, `ItemSquishEraID`, `ItemNameDescriptionID`, `RequiredTransmogHoliday`, `RequiredHoliday`, `GemProperties`, `SocketMatchEnchantmentId`, `TotemCategoryID`, `InstanceBound`, `ZoneBound1`, `ZoneBound2`, `ItemSet`, `LockID`, `PageID`, `ItemDelay`, `MinFactionID`, `RequiredSkillRank`, `RequiredSkill`, `ItemLevel`, `AllowableClass`, `ArtifactID`, `SpellWeight`, `SpellWeightCategory`, `SocketType1`, `SocketType2`, `SocketType3`, `SheatheType`, `Material`, `PageMaterialID`, `Bonding`, `DamageDamageType`, `ContainerSlots`, `RequiredPVPMedal`, `RequiredPVPRank`, `RequiredLevel`, `InventoryType`, `OverallQualityID`, `AmmunitionType`, `VerifiedBuild`) VALUES
(21887, CONVERT(UNHEX('') USING utf8mb4), CONVERT(UNHEX('') USING utf8mb4), CONVERT(UNHEX('') USING utf8mb4), CONVERT(UNHEX('') USING utf8mb4), CONVERT(UNHEX('4b6e6f7468696465204c656174686572') USING utf8mb4), 1, 0.0, 0, 0, 0.0, 71303304, 0, 0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 0, 0, 0, -1, -1, 1250, 5000, 1, 1.0, 1.00460004807, 0, -2147475456, 0, 16384, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, -1, 0, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 70959),
(25649, CONVERT(UNHEX('') USING utf8mb4), CONVERT(UNHEX('') USING utf8mb4), CONVERT(UNHEX('') USING utf8mb4), CONVERT(UNHEX('') USING utf8mb4), CONVERT(UNHEX('4b6e6f7468696465204c65617468657220536372617073') USING utf8mb4), 1, 0.0, 0, 0, 0.0, 8, 0, 0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 1000, 0, 0, 0, -1, -1, 250, 1000, 1, 1.0, 1.00510001183, 8389696, -2147475456, 0, 16384, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 393, 15, -1, 0, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 70959),
(25699, CONVERT(UNHEX('476174686572656420627920706c617965727320776974682074686520536b696e6e696e6720736b696c6c2e2043616e20626520626f7567687420616e6420736f6c64206f6e207468652061756374696f6e20686f7573652e') USING utf8mb4), CONVERT(UNHEX('') USING utf8mb4), CONVERT(UNHEX('') USING utf8mb4), CONVERT(UNHEX('') USING utf8mb4), CONVERT(UNHEX('4372797374616c2d496e6675736564204c656174686572') USING utf8mb4), 1, 0.0, 0, 0, 0.0, 8, 0, 0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 1000, 0, 0, 0, -1, -1, 1250, 5000, 1, 1.0, 0.96799999475, 0, -2147475456, 0, 16384, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, -1, 0, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 70959),
(25700, CONVERT(UNHEX('') USING utf8mb4), CONVERT(UNHEX('') USING utf8mb4), CONVERT(UNHEX('') USING utf8mb4), CONVERT(UNHEX('') USING utf8mb4), CONVERT(UNHEX('46656c205363616c6573') USING utf8mb4), 1, 0.0, 0, 0, 0.0, 8, 0, 0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 0, 0, 0, -1, -1, 1250, 5000, 1, 1.0, 0.97170001268, 0, -2147475456, 0, 16384, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, -1, 0, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 70959),
(25707, CONVERT(UNHEX('') USING utf8mb4), CONVERT(UNHEX('') USING utf8mb4), CONVERT(UNHEX('') USING utf8mb4), CONVERT(UNHEX('') USING utf8mb4), CONVERT(UNHEX('46656c2048696465') USING utf8mb4), 1, 0.0, 0, 0, 0.0, 8, 0, 0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 1000, 0, 0, 0, -1, -1, 1250, 5000, 1, 1.0, 1.02390003204, 0, -2147475456, 0, 16384, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, -1, 0, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 70959),
(25708, CONVERT(UNHEX('') USING utf8mb4), CONVERT(UNHEX('') USING utf8mb4), CONVERT(UNHEX('') USING utf8mb4), CONVERT(UNHEX('') USING utf8mb4), CONVERT(UNHEX('546869636b20436c656674686f6f66204c656174686572') USING utf8mb4), 1, 0.0, 0, 0, 0.0, 8, 0, 0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 0, 0, 0, -1, -1, 750, 3000, 1, 1.0, 1.02760004997, 0, -2147475456, 0, 16384, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, -1, 0, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 70959),
(29548, CONVERT(UNHEX('') USING utf8mb4), CONVERT(UNHEX('') USING utf8mb4), CONVERT(UNHEX('') USING utf8mb4), CONVERT(UNHEX('') USING utf8mb4), CONVERT(UNHEX('4e657468657220447261676f6e7363616c6573') USING utf8mb4), 1, 0.0, 0, 0, 0.0, 8, 0, 0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 1000, 0, 0, 0, -1, -1, 2000, 8000, 1, 1.0, 1.04670000076, 0, -2147475456, 0, 16384, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 15, -1, 0, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 70959),
(33567, CONVERT(UNHEX('') USING utf8mb4), CONVERT(UNHEX('') USING utf8mb4), CONVERT(UNHEX('') USING utf8mb4), CONVERT(UNHEX('') USING utf8mb4), CONVERT(UNHEX('426f7265616e204c65617468657220536372617073') USING utf8mb4), 2, 0.0, 0, 0, 0.0, 8, 0, 0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 1000, 0, 0, 0, -1, -1, 450, 1800, 1, 1.0, 1.01380002499, 8389696, -2147475456, 0, 16384, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 393, 20, -1, 0, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 70959),
(33568, CONVERT(UNHEX('') USING utf8mb4), CONVERT(UNHEX('') USING utf8mb4), CONVERT(UNHEX('') USING utf8mb4), CONVERT(UNHEX('') USING utf8mb4), CONVERT(UNHEX('426f7265616e204c656174686572') USING utf8mb4), 2, 0.0, 0, 0, 0.0, 136, 0, 0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1000, 0, 0, 0, -1, -1, 2250, 9000, 1, 1.0, 1.01750004292, 0, -2147475456, 0, 16384, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, -1, 0, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 70959),
(35229, CONVERT(UNHEX('') USING utf8mb4), CONVERT(UNHEX('') USING utf8mb4), CONVERT(UNHEX('') USING utf8mb4), CONVERT(UNHEX('') USING utf8mb4), CONVERT(UNHEX('4e65746865722052657369647565') USING utf8mb4), 1, 0.0, 0, 0, 0.0, 0, 0, 0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, -1, -1, 0, 0, 1, 0.0, 1.03980004787, 0, 8192, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 1, 0, 70959),
(44128, CONVERT(UNHEX('') USING utf8mb4), CONVERT(UNHEX('') USING utf8mb4), CONVERT(UNHEX('') USING utf8mb4), CONVERT(UNHEX('') USING utf8mb4), CONVERT(UNHEX('41726374696320467572') USING utf8mb4), 2, 0.0, 0, 0, 0.0, 136, 0, 0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 1000, 0, 0, 0, -1, -1, 30000, 120000, 1, 1.0, 0.96340000629, 0, -2147475456, 0, 16384, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 20, -1, 0, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 70959);
INSERT IGNORE INTO `item_sparse_locale` (`ID`, `locale`, `Description_lang`, `Display3_lang`, `Display2_lang`, `Display1_lang`, `Display_lang`, `VerifiedBuild`) VALUES
(21887, CONVERT(UNHEX('72755255') USING utf8mb4), CONVERT(UNHEX('') USING utf8mb4), CONVERT(UNHEX('') USING utf8mb4), CONVERT(UNHEX('') USING utf8mb4), CONVERT(UNHEX('') USING utf8mb4), CONVERT(UNHEX('d0a3d0b7d0bbd0bed0b2d0b0d182d0b0d18f20d0bad0bed0b6d0b0') USING utf8mb4), 70959),
(25649, CONVERT(UNHEX('72755255') USING utf8mb4), CONVERT(UNHEX('') USING utf8mb4), CONVERT(UNHEX('') USING utf8mb4), CONVERT(UNHEX('') USING utf8mb4), CONVERT(UNHEX('') USING utf8mb4), CONVERT(UNHEX('d09ed0b1d180d18bd0b2d0bad0b820d183d0b7d0bbd0bed0b2d0b0d182d0bed0b920d0bad0bed0b6d0b8') USING utf8mb4), 70959),
(25699, CONVERT(UNHEX('72755255') USING utf8mb4), CONVERT(UNHEX('d094d0bed0b1d18bd0b2d0b0d0b5d182d181d18f20d0b8d0b3d180d0bed0bad0b0d0bcd0b820d18120d0bdd0b0d0b2d18bd0bad0bed0bc20d181d0bdd18fd182d0b8d18f20d188d0bad183d1802e20d09cd0bed0b6d0bdd0be20d0bad183d0bfd0b8d182d18c20d0b8d0bbd0b820d0bfd180d0bed0b4d0b0d182d18c20d0bdd0b020d0b0d183d0bad186d0b8d0bed0bdd0b52e') USING utf8mb4), CONVERT(UNHEX('') USING utf8mb4), CONVERT(UNHEX('') USING utf8mb4), CONVERT(UNHEX('') USING utf8mb4), CONVERT(UNHEX('d0a3d181d0b8d0bbd0b5d0bdd0bdd0b0d18f20d0bad180d0b8d181d182d0b0d0bbd0bbd0b0d0bcd0b820d0bad0bed0b6d0b0') USING utf8mb4), 70959),
(25700, CONVERT(UNHEX('72755255') USING utf8mb4), CONVERT(UNHEX('') USING utf8mb4), CONVERT(UNHEX('') USING utf8mb4), CONVERT(UNHEX('') USING utf8mb4), CONVERT(UNHEX('') USING utf8mb4), CONVERT(UNHEX('d0a1d0bad0b2d0b5d180d0bdd0bed187d0b5d188d183d18f') USING utf8mb4), 70959),
(25707, CONVERT(UNHEX('72755255') USING utf8mb4), CONVERT(UNHEX('') USING utf8mb4), CONVERT(UNHEX('') USING utf8mb4), CONVERT(UNHEX('') USING utf8mb4), CONVERT(UNHEX('') USING utf8mb4), CONVERT(UNHEX('d0a1d0bad0b2d0b5d180d0bdd0bed188d0bad183d180d0b0') USING utf8mb4), 70959),
(25708, CONVERT(UNHEX('72755255') USING utf8mb4), CONVERT(UNHEX('') USING utf8mb4), CONVERT(UNHEX('') USING utf8mb4), CONVERT(UNHEX('') USING utf8mb4), CONVERT(UNHEX('') USING utf8mb4), CONVERT(UNHEX('d09fd0bbd0bed182d0bdd0b0d18f20d0bad0bed0b6d0b020d0bad0bed0bfd18bd182d0bdd18f') USING utf8mb4), 70959),
(29548, CONVERT(UNHEX('72755255') USING utf8mb4), CONVERT(UNHEX('') USING utf8mb4), CONVERT(UNHEX('') USING utf8mb4), CONVERT(UNHEX('') USING utf8mb4), CONVERT(UNHEX('') USING utf8mb4), CONVERT(UNHEX('d0a7d0b5d188d183d18f20d0b4d180d0b0d0bad0bed0bdd0b020d09fd183d181d182d0bed182d18b') USING utf8mb4), 70959),
(33567, CONVERT(UNHEX('72755255') USING utf8mb4), CONVERT(UNHEX('') USING utf8mb4), CONVERT(UNHEX('') USING utf8mb4), CONVERT(UNHEX('') USING utf8mb4), CONVERT(UNHEX('') USING utf8mb4), CONVERT(UNHEX('d09ed0b1d180d18bd0b2d0bad0b820d0b1d0bed180d0b5d0b9d181d0bad0bed0b920d0bad0bed0b6d0b8') USING utf8mb4), 70959),
(33568, CONVERT(UNHEX('72755255') USING utf8mb4), CONVERT(UNHEX('') USING utf8mb4), CONVERT(UNHEX('') USING utf8mb4), CONVERT(UNHEX('') USING utf8mb4), CONVERT(UNHEX('') USING utf8mb4), CONVERT(UNHEX('d091d0bed180d0b5d0b9d181d0bad0b0d18f20d0bad0bed0b6d0b0') USING utf8mb4), 70959),
(35229, CONVERT(UNHEX('72755255') USING utf8mb4), CONVERT(UNHEX('') USING utf8mb4), CONVERT(UNHEX('') USING utf8mb4), CONVERT(UNHEX('') USING utf8mb4), CONVERT(UNHEX('') USING utf8mb4), CONVERT(UNHEX('d09fd18bd0bbd18c20d09fd183d181d182d0bed182d18b') USING utf8mb4), 70959),
(44128, CONVERT(UNHEX('72755255') USING utf8mb4), CONVERT(UNHEX('') USING utf8mb4), CONVERT(UNHEX('') USING utf8mb4), CONVERT(UNHEX('') USING utf8mb4), CONVERT(UNHEX('') USING utf8mb4), CONVERT(UNHEX('d090d180d0bad182d0b8d187d0b5d181d0bad0b8d0b920d0bcd0b5d185') USING utf8mb4), 70959);
INSERT IGNORE INTO `item_effect` (`ID`, `LegacySlotIndex`, `TriggerType`, `Charges`, `CoolDownMSec`, `CategoryCoolDownMSec`, `SpellCategoryID`, `SpellID`, `ChrSpecializationID`, `PlayerConditionID`, `VerifiedBuild`) VALUES
(6559, 0, 0, -1, 0, 0, 0, 59926, 0, 0, 70959),
(20177, 0, 0, -1, 0, 0, 0, 163205, 0, 0, 70959);
INSERT IGNORE INTO `item_x_item_effect` (`ID`, `ItemEffectID`, `ItemID`, `VerifiedBuild`) VALUES
(4965, 20177, 25649, 70959),
(6587, 6559, 33567, 70959);
INSERT IGNORE INTO `spell_name` (`ID`, `Name`, `VerifiedBuild`) VALUES
(59926, CONVERT(UNHEX('426f7265616e204c656174686572') USING utf8mb4), 70959),
(163205, CONVERT(UNHEX('4b6e6f7468696465204c656174686572') USING utf8mb4), 70959);
INSERT IGNORE INTO `spell_misc` (`ID`, `Attributes1`, `Attributes2`, `Attributes3`, `Attributes4`, `Attributes5`, `Attributes6`, `Attributes7`, `Attributes8`, `Attributes9`, `Attributes10`, `Attributes11`, `Attributes12`, `Attributes13`, `Attributes14`, `Attributes15`, `Attributes16`, `Attributes17`, `DifficultyID`, `CastingTimeIndex`, `DurationIndex`, `PvPDurationIndex`, `RangeIndex`, `SchoolMask`, `Speed`, `LaunchDelay`, `MinDuration`, `SpellIconFileDataID`, `ActiveIconFileDataID`, `ContentTuningID`, `ShowFutureSpellPlayerConditionID`, `SpellVisualScript`, `ActiveSpellVisualScript`, `SpellID`, `VerifiedBuild`) VALUES
(40677, 150994944, 32, 16384, 0, 0, 0, 0, 0, 0, 0, 8388608, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 1, 0.0, 0.0, 0.0, 136247, 0, 0, 0, 0, 0, 59926, 70959),
(137100, 150995072, 32, 16384, 196608, 0, 0, 0, 0, 0, 0, 8388608, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 1, 1, 0.0, 0.0, 0.0, 134259, 0, 0, 0, 0, 0, 163205, 70959);
INSERT IGNORE INTO `spell_effect` (`ID`, `EffectAura`, `DifficultyID`, `EffectIndex`, `Effect`, `EffectAmplitude`, `EffectAttributes`, `EffectAuraPeriod`, `EffectBonusCoefficient`, `EffectChainAmplitude`, `EffectChainTargets`, `EffectItemType`, `EffectMechanic`, `EffectPointsPerResource`, `EffectPosFacing`, `EffectRealPointsPerLevel`, `EffectTriggerSpell`, `BonusCoefficientFromAP`, `PvpMultiplier`, `Coefficient`, `Variance`, `ResourceCoefficient`, `GroupSizeBasePointsCoefficient`, `EffectBasePoints`, `ScalingClass`, `TargetNodeGraph`, `EffectMiscValue1`, `EffectMiscValue2`, `EffectRadiusIndex1`, `EffectRadiusIndex2`, `EffectSpellClassMask1`, `EffectSpellClassMask2`, `EffectSpellClassMask3`, `EffectSpellClassMask4`, `ImplicitTarget1`, `ImplicitTarget2`, `SpellID`, `VerifiedBuild`) VALUES
(53580, 0, 0, 0, 24, 0.0, 0, 0, 0.0, 1.0, 0, 33568, 0, 0.0, 0.0, 0.0, 0, 0.0, 1.0, 0.0, 0.0, 0.0, 1.0, 1.0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 59926, 70959),
(229525, 0, 0, 0, 24, 0.0, 0, 0, 0.0, 1.0, 0, 21887, 0, 0.0, 0.0, 0.0, 0, 0.0, 1.0, 0.0, 0.0, 0.0, 1.0, 1.0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 163205, 70959);
INSERT IGNORE INTO `spell_reagents` (`ID`, `SpellID`, `Reagent1`, `Reagent2`, `Reagent3`, `Reagent4`, `Reagent5`, `Reagent6`, `Reagent7`, `Reagent8`, `ReagentCount1`, `ReagentCount2`, `ReagentCount3`, `ReagentCount4`, `ReagentCount5`, `ReagentCount6`, `ReagentCount7`, `ReagentCount8`, `ReagentRecraftCount1`, `ReagentRecraftCount2`, `ReagentRecraftCount3`, `ReagentRecraftCount4`, `ReagentRecraftCount5`, `ReagentRecraftCount6`, `ReagentRecraftCount7`, `ReagentRecraftCount8`, `ReagentSource1`, `ReagentSource2`, `ReagentSource3`, `ReagentSource4`, `ReagentSource5`, `ReagentSource6`, `ReagentSource7`, `ReagentSource8`, `VerifiedBuild`) VALUES
(3752, 59926, 33567, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 70959),
(9997, 163205, 25649, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 70959);
INSERT IGNORE INTO `spell_x_spell_visual` (`ID`, `DifficultyID`, `SpellVisualID`, `Probability`, `Flags`, `Priority`, `SpellIconFileID`, `ActiveIconFileID`, `ViewerUnitConditionID`, `ViewerPlayerConditionID`, `CasterUnitConditionID`, `CasterPlayerConditionID`, `SpellID`, `VerifiedBuild`) VALUES
(71331, 0, 215, 1.0, 0, 0, 0, 0, 0, 0, 0, 0, 163205, 70959);
INSERT IGNORE INTO `spell_cast_times` (`ID`, `Base`, `Minimum`, `VerifiedBuild`) VALUES
(255, 1000, 500, 70959);
INSERT IGNORE INTO `spell_name_locale` (`ID`, `locale`, `Name_lang`, `VerifiedBuild`) VALUES
(59926, CONVERT(UNHEX('72755255') USING utf8mb4), CONVERT(UNHEX('d091d0bed180d0b5d0b9d181d0bad0b0d18f20d0bad0bed0b6d0b0') USING utf8mb4), 70959),
(163205, CONVERT(UNHEX('72755255') USING utf8mb4), CONVERT(UNHEX('d0a3d0b7d0bbd0bed0b2d0b0d182d0b0d18f20d0bad0bed0b6d0b0') USING utf8mb4), 70959);
COMMIT;
