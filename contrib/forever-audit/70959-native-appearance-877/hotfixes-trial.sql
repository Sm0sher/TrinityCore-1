START TRANSACTION;
-- Restore original NPC appearances with complete native body, baked outfit, customization and equipment metadata.
INSERT IGNORE INTO `creature_display_info` (`ID`,`ModelID`,`SoundID`,`SizeClass`,`CreatureModelScale`,`CreatureModelAlpha`,`BloodID`,`ExtendedDisplayInfoID`,`NPCSoundID`,`ParticleColorID`,`PortraitCreatureDisplayInfoID`,`PortraitTextureFileDataID`,`ObjectEffectPackageID`,`AnimReplacementSetID`,`Flags`,`StateSpellVisualKitID`,`PlayerOverrideScale`,`PetInstanceScale`,`UnarmedWeaponType`,`MountPoofSpellVisualKitID`,`DissolveEffectID`,`Gender`,`DissolveOutEffectID`,`CreatureModelMinLod`,`ConditionalCreatureModelID`,`Unknown_1100_1`,`Unknown_1100_2`,`TextureVariationFileDataID1`,`TextureVariationFileDataID2`,`TextureVariationFileDataID3`,`TextureVariationFileDataID4`,`VerifiedBuild`) VALUES
(24544,7661,0,0,1.0,255,0,182,50,0,0,0,0,0,0,0,0.0,1.0,-1,0,0,0,0,0,0,45.0,0,0,0,0,0,70959),
(17557,5408,0,1,1.0,255,0,157,37,0,0,0,0,0,0,0,0.0,1.0,-1,0,0,0,0,0,0,45.0,0,0,0,0,0,70959),
(28350,7661,0,1,1.0,255,0,346,0,0,0,0,0,0,0,0,0.0,1.0,-1,0,0,0,0,0,0,45.0,0,0,0,0,0,70959);
INSERT IGNORE INTO `hotfix_data` (`Id`,`UniqueId`,`TableHash`,`RecordId`,`Status`,`VerifiedBuild`) VALUES
(4051032,24544,3218799089,24544,1,70959),
(4051033,17557,3218799089,17557,1,70959),
(4051034,28350,3218799089,28350,1,70959);
COMMIT;
