-- Persist loader defaults and archive unusable records in Forever 70888.
START TRANSACTION;
DELETE d FROM access_requirement d WHERE (d.mapId=249 AND d.difficulty=3) OR
(d.mapId=249 AND d.difficulty=4) OR
(d.mapId=269 AND d.difficulty=2) OR
(d.mapId=33 AND d.difficulty=2) OR
(d.mapId=36 AND d.difficulty=2) OR
(d.mapId=509 AND d.difficulty=3) OR
(d.mapId=533 AND d.difficulty=3) OR
(d.mapId=533 AND d.difficulty=4);
DELETE d FROM creature_trainer d WHERE (d.MenuID=2748 AND d.OptionID=0 AND d.CreatureID=10278 AND d.TrainerID=293) OR
(d.MenuID=4119 AND d.OptionID=0 AND d.CreatureID=11047 AND d.TrainerID=353) OR
(d.MenuID=4270 AND d.OptionID=0 AND d.CreatureID=3484 AND d.TrainerID=369) OR
(d.MenuID=4747 AND d.OptionID=0 AND d.CreatureID=3399 AND d.TrainerID=36);
UPDATE gossip_menu_option d SET d.SpellID=NULL WHERE d.MenuID=11341 AND d.OptionID=0 AND d.SpellID=75186;
UPDATE gossip_menu_option d SET d.SpellID=NULL WHERE d.MenuID=11345 AND d.OptionID=0 AND d.SpellID=74978;
UPDATE gossip_menu_option d SET d.SpellID=NULL WHERE d.MenuID=11345 AND d.OptionID=1 AND d.SpellID=75421;
UPDATE gossip_menu_option d SET d.SpellID=NULL WHERE d.MenuID=11345 AND d.OptionID=2 AND d.SpellID=75422;
UPDATE gossip_menu_option d SET d.SpellID=NULL WHERE d.MenuID=40111 AND d.OptionID=0 AND d.SpellID=1248038;
DELETE d FROM item_script_names d WHERE (d.Id=24538) OR
(d.Id=30175) OR
(d.Id=31088) OR
(d.Id=33098) OR
(d.Id=34475) OR
(d.Id=34489) OR
(d.Id=39878) OR
(d.Id=44717) OR
(d.Id=53510);
DELETE d FROM npc_text d WHERE (d.ID=13157 AND NOT EXISTS (SELECT 1 FROM gossip_menu m WHERE m.TextID=d.ID)) OR
(d.ID=20564 AND NOT EXISTS (SELECT 1 FROM gossip_menu m WHERE m.TextID=d.ID)) OR
(d.ID=2473 AND NOT EXISTS (SELECT 1 FROM gossip_menu m WHERE m.TextID=d.ID)) OR
(d.ID=6657 AND NOT EXISTS (SELECT 1 FROM gossip_menu m WHERE m.TextID=d.ID)) OR
(d.ID=7496 AND NOT EXISTS (SELECT 1 FROM gossip_menu m WHERE m.TextID=d.ID)) OR
(d.ID=8372 AND NOT EXISTS (SELECT 1 FROM gossip_menu m WHERE m.TextID=d.ID)) OR
(d.ID=9625 AND NOT EXISTS (SELECT 1 FROM gossip_menu m WHERE m.TextID=d.ID));
DELETE d FROM playerchoice_response_reward_item d WHERE (d.ItemId=128808 AND d.ChoiceId=240 AND d.ResponseId=505) OR
(d.ItemId=128825 AND d.ChoiceId=248 AND d.ResponseId=532) OR
(d.ItemId=128826 AND d.ChoiceId=240 AND d.ResponseId=506) OR
(d.ItemId=128827 AND d.ChoiceId=248 AND d.ResponseId=533) OR
(d.ItemId=128861 AND d.ChoiceId=240 AND d.ResponseId=504) OR
(d.ItemId=128868 AND d.ChoiceId=248 AND d.ResponseId=534);
DELETE d FROM race_unlock_requirement d WHERE (d.raceID=27 AND d.achievementId=12244) OR
(d.raceID=28 AND d.achievementId=12245) OR
(d.raceID=29 AND d.achievementId=12242) OR
(d.raceID=30 AND d.achievementId=12243) OR
(d.raceID=31 AND d.achievementId=13161) OR
(d.raceID=32 AND d.achievementId=13163) OR
(d.raceID=34 AND d.achievementId=12515) OR
(d.raceID=35 AND d.achievementId=13206) OR
(d.raceID=36 AND d.achievementId=12518) OR
(d.raceID=37 AND d.achievementId=14013) OR
(d.raceID=84 AND d.achievementId=40307) OR
(d.raceID=85 AND d.achievementId=40307) OR
(d.raceID=86 AND d.achievementId=61506) OR
(d.raceID=91 AND d.achievementId=61506);
DELETE d FROM smart_scripts d WHERE (d.entryorguid=16385 AND d.source_type=0 AND d.id=0 AND FIND_IN_SET('3',REPLACE(d.Difficulties,' ',''))>0 AND NOT EXISTS (SELECT 1 FROM conditions c WHERE c.SourceTypeOrReferenceId=22 AND c.SourceId=d.source_type AND c.SourceEntry=d.entryorguid AND c.SourceGroup=d.id+1)) OR
(d.entryorguid=16530 AND d.source_type=0 AND d.id=0 AND FIND_IN_SET('3',REPLACE(d.Difficulties,' ',''))>0 AND NOT EXISTS (SELECT 1 FROM conditions c WHERE c.SourceTypeOrReferenceId=22 AND c.SourceId=d.source_type AND c.SourceEntry=d.entryorguid AND c.SourceGroup=d.id+1)) OR
(d.entryorguid=16983 AND d.source_type=0 AND d.id=0 AND FIND_IN_SET('3',REPLACE(d.Difficulties,' ',''))>0 AND NOT EXISTS (SELECT 1 FROM conditions c WHERE c.SourceTypeOrReferenceId=22 AND c.SourceId=d.source_type AND c.SourceEntry=d.entryorguid AND c.SourceGroup=d.id+1)) OR
(d.entryorguid=17055 AND d.source_type=0 AND d.id=0 AND FIND_IN_SET('3',REPLACE(d.Difficulties,' ',''))>0 AND NOT EXISTS (SELECT 1 FROM conditions c WHERE c.SourceTypeOrReferenceId=22 AND c.SourceId=d.source_type AND c.SourceEntry=d.entryorguid AND c.SourceGroup=d.id+1)) OR
(d.entryorguid=20905 AND d.source_type=0 AND d.id=0 AND FIND_IN_SET('2',REPLACE(d.Difficulties,' ',''))>0 AND NOT EXISTS (SELECT 1 FROM conditions c WHERE c.SourceTypeOrReferenceId=22 AND c.SourceId=d.source_type AND c.SourceEntry=d.entryorguid AND c.SourceGroup=d.id+1)) OR
(d.entryorguid=20905 AND d.source_type=0 AND d.id=1 AND FIND_IN_SET('2',REPLACE(d.Difficulties,' ',''))>0 AND NOT EXISTS (SELECT 1 FROM conditions c WHERE c.SourceTypeOrReferenceId=22 AND c.SourceId=d.source_type AND c.SourceEntry=d.entryorguid AND c.SourceGroup=d.id+1)) OR
(d.entryorguid=20905 AND d.source_type=0 AND d.id=2 AND FIND_IN_SET('2',REPLACE(d.Difficulties,' ',''))>0 AND NOT EXISTS (SELECT 1 FROM conditions c WHERE c.SourceTypeOrReferenceId=22 AND c.SourceId=d.source_type AND c.SourceEntry=d.entryorguid AND c.SourceGroup=d.id+1)) OR
(d.entryorguid=20906 AND d.source_type=0 AND d.id=0 AND FIND_IN_SET('2',REPLACE(d.Difficulties,' ',''))>0 AND NOT EXISTS (SELECT 1 FROM conditions c WHERE c.SourceTypeOrReferenceId=22 AND c.SourceId=d.source_type AND c.SourceEntry=d.entryorguid AND c.SourceGroup=d.id+1)) OR
(d.entryorguid=20906 AND d.source_type=0 AND d.id=1 AND FIND_IN_SET('2',REPLACE(d.Difficulties,' ',''))>0 AND NOT EXISTS (SELECT 1 FROM conditions c WHERE c.SourceTypeOrReferenceId=22 AND c.SourceId=d.source_type AND c.SourceEntry=d.entryorguid AND c.SourceGroup=d.id+1)) OR
(d.entryorguid=20906 AND d.source_type=0 AND d.id=2 AND FIND_IN_SET('2',REPLACE(d.Difficulties,' ',''))>0 AND NOT EXISTS (SELECT 1 FROM conditions c WHERE c.SourceTypeOrReferenceId=22 AND c.SourceId=d.source_type AND c.SourceEntry=d.entryorguid AND c.SourceGroup=d.id+1)) OR
(d.entryorguid=20908 AND d.source_type=0 AND d.id=0 AND FIND_IN_SET('2',REPLACE(d.Difficulties,' ',''))>0 AND NOT EXISTS (SELECT 1 FROM conditions c WHERE c.SourceTypeOrReferenceId=22 AND c.SourceId=d.source_type AND c.SourceEntry=d.entryorguid AND c.SourceGroup=d.id+1)) OR
(d.entryorguid=20908 AND d.source_type=0 AND d.id=1 AND FIND_IN_SET('2',REPLACE(d.Difficulties,' ',''))>0 AND NOT EXISTS (SELECT 1 FROM conditions c WHERE c.SourceTypeOrReferenceId=22 AND c.SourceId=d.source_type AND c.SourceEntry=d.entryorguid AND c.SourceGroup=d.id+1)) OR
(d.entryorguid=20908 AND d.source_type=0 AND d.id=2 AND FIND_IN_SET('2',REPLACE(d.Difficulties,' ',''))>0 AND NOT EXISTS (SELECT 1 FROM conditions c WHERE c.SourceTypeOrReferenceId=22 AND c.SourceId=d.source_type AND c.SourceEntry=d.entryorguid AND c.SourceGroup=d.id+1)) OR
(d.entryorguid=20909 AND d.source_type=0 AND d.id=0 AND FIND_IN_SET('2',REPLACE(d.Difficulties,' ',''))>0 AND NOT EXISTS (SELECT 1 FROM conditions c WHERE c.SourceTypeOrReferenceId=22 AND c.SourceId=d.source_type AND c.SourceEntry=d.entryorguid AND c.SourceGroup=d.id+1)) OR
(d.entryorguid=20909 AND d.source_type=0 AND d.id=1 AND FIND_IN_SET('2',REPLACE(d.Difficulties,' ',''))>0 AND NOT EXISTS (SELECT 1 FROM conditions c WHERE c.SourceTypeOrReferenceId=22 AND c.SourceId=d.source_type AND c.SourceEntry=d.entryorguid AND c.SourceGroup=d.id+1)) OR
(d.entryorguid=20909 AND d.source_type=0 AND d.id=2 AND FIND_IN_SET('2',REPLACE(d.Difficulties,' ',''))>0 AND NOT EXISTS (SELECT 1 FROM conditions c WHERE c.SourceTypeOrReferenceId=22 AND c.SourceId=d.source_type AND c.SourceEntry=d.entryorguid AND c.SourceGroup=d.id+1)) OR
(d.entryorguid=20910 AND d.source_type=0 AND d.id=0 AND FIND_IN_SET('2',REPLACE(d.Difficulties,' ',''))>0 AND NOT EXISTS (SELECT 1 FROM conditions c WHERE c.SourceTypeOrReferenceId=22 AND c.SourceId=d.source_type AND c.SourceEntry=d.entryorguid AND c.SourceGroup=d.id+1)) OR
(d.entryorguid=20910 AND d.source_type=0 AND d.id=2 AND FIND_IN_SET('2',REPLACE(d.Difficulties,' ',''))>0 AND NOT EXISTS (SELECT 1 FROM conditions c WHERE c.SourceTypeOrReferenceId=22 AND c.SourceId=d.source_type AND c.SourceEntry=d.entryorguid AND c.SourceGroup=d.id+1)) OR
(d.entryorguid=20910 AND d.source_type=0 AND d.id=3 AND FIND_IN_SET('2',REPLACE(d.Difficulties,' ',''))>0 AND NOT EXISTS (SELECT 1 FROM conditions c WHERE c.SourceTypeOrReferenceId=22 AND c.SourceId=d.source_type AND c.SourceEntry=d.entryorguid AND c.SourceGroup=d.id+1)) OR
(d.entryorguid=20911 AND d.source_type=0 AND d.id=0 AND FIND_IN_SET('2',REPLACE(d.Difficulties,' ',''))>0 AND NOT EXISTS (SELECT 1 FROM conditions c WHERE c.SourceTypeOrReferenceId=22 AND c.SourceId=d.source_type AND c.SourceEntry=d.entryorguid AND c.SourceGroup=d.id+1)) OR
(d.entryorguid=20911 AND d.source_type=0 AND d.id=1 AND FIND_IN_SET('2',REPLACE(d.Difficulties,' ',''))>0 AND NOT EXISTS (SELECT 1 FROM conditions c WHERE c.SourceTypeOrReferenceId=22 AND c.SourceId=d.source_type AND c.SourceEntry=d.entryorguid AND c.SourceGroup=d.id+1)) OR
(d.entryorguid=20911 AND d.source_type=0 AND d.id=2 AND FIND_IN_SET('2',REPLACE(d.Difficulties,' ',''))>0 AND NOT EXISTS (SELECT 1 FROM conditions c WHERE c.SourceTypeOrReferenceId=22 AND c.SourceId=d.source_type AND c.SourceEntry=d.entryorguid AND c.SourceGroup=d.id+1)) OR
(d.entryorguid=36764 AND d.source_type=0 AND d.id=0 AND FIND_IN_SET('2',REPLACE(d.Difficulties,' ',''))>0 AND NOT EXISTS (SELECT 1 FROM conditions c WHERE c.SourceTypeOrReferenceId=22 AND c.SourceId=d.source_type AND c.SourceEntry=d.entryorguid AND c.SourceGroup=d.id+1)) OR
(d.entryorguid=36764 AND d.source_type=0 AND d.id=1 AND FIND_IN_SET('2',REPLACE(d.Difficulties,' ',''))>0 AND NOT EXISTS (SELECT 1 FROM conditions c WHERE c.SourceTypeOrReferenceId=22 AND c.SourceId=d.source_type AND c.SourceEntry=d.entryorguid AND c.SourceGroup=d.id+1)) OR
(d.entryorguid=36770 AND d.source_type=0 AND d.id=0 AND FIND_IN_SET('2',REPLACE(d.Difficulties,' ',''))>0 AND NOT EXISTS (SELECT 1 FROM conditions c WHERE c.SourceTypeOrReferenceId=22 AND c.SourceId=d.source_type AND c.SourceEntry=d.entryorguid AND c.SourceGroup=d.id+1)) OR
(d.entryorguid=36770 AND d.source_type=0 AND d.id=1 AND FIND_IN_SET('2',REPLACE(d.Difficulties,' ',''))>0 AND NOT EXISTS (SELECT 1 FROM conditions c WHERE c.SourceTypeOrReferenceId=22 AND c.SourceId=d.source_type AND c.SourceEntry=d.entryorguid AND c.SourceGroup=d.id+1)) OR
(d.source_type=3 AND d.entryorguid=26534 AND NOT EXISTS (SELECT 1 FROM conditions c WHERE c.SourceTypeOrReferenceId=22 AND c.SourceId=3 AND c.SourceEntry=d.entryorguid)) OR
(d.source_type=3 AND d.entryorguid=31986 AND NOT EXISTS (SELECT 1 FROM conditions c WHERE c.SourceTypeOrReferenceId=22 AND c.SourceId=3 AND c.SourceEntry=d.entryorguid)) OR
(d.source_type=3 AND d.entryorguid=31989 AND NOT EXISTS (SELECT 1 FROM conditions c WHERE c.SourceTypeOrReferenceId=22 AND c.SourceId=3 AND c.SourceEntry=d.entryorguid)) OR
(d.source_type=3 AND d.entryorguid=34051 AND NOT EXISTS (SELECT 1 FROM conditions c WHERE c.SourceTypeOrReferenceId=22 AND c.SourceId=3 AND c.SourceEntry=d.entryorguid)) OR
(d.source_type=3 AND d.entryorguid=47548 AND NOT EXISTS (SELECT 1 FROM conditions c WHERE c.SourceTypeOrReferenceId=22 AND c.SourceId=3 AND c.SourceEntry=d.entryorguid)) OR
(d.source_type=3 AND d.entryorguid=59763 AND NOT EXISTS (SELECT 1 FROM conditions c WHERE c.SourceTypeOrReferenceId=22 AND c.SourceId=3 AND c.SourceEntry=d.entryorguid)) OR
(d.source_type=3 AND d.entryorguid=59764 AND NOT EXISTS (SELECT 1 FROM conditions c WHERE c.SourceTypeOrReferenceId=22 AND c.SourceId=3 AND c.SourceEntry=d.entryorguid)) OR
(d.source_type=3 AND d.entryorguid=59765 AND NOT EXISTS (SELECT 1 FROM conditions c WHERE c.SourceTypeOrReferenceId=22 AND c.SourceId=3 AND c.SourceEntry=d.entryorguid)) OR
(d.source_type=3 AND d.entryorguid=61418 AND NOT EXISTS (SELECT 1 FROM conditions c WHERE c.SourceTypeOrReferenceId=22 AND c.SourceId=3 AND c.SourceEntry=d.entryorguid));
DELETE d FROM spell_required d WHERE (d.spell_id=26797) OR
(d.spell_id=26798) OR
(d.spell_id=26801) OR
(d.spell_id=28672) OR
(d.spell_id=28675) OR
(d.spell_id=28677) OR
(d.spell_id=34767);
DELETE d FROM terrain_swap_defaults d WHERE (d.MapId=1066) OR
(d.MapId=1074) OR
(d.MapId=1116) OR
(d.MapId=1190) OR
(d.MapId=1817) OR
(d.MapId=654) OR
(d.MapId=719) OR
(d.MapId=736) OR
(d.MapId=870) OR
(d.TerrainSwapMap=1066) OR
(d.TerrainSwapMap=1074) OR
(d.TerrainSwapMap=1190) OR
(d.TerrainSwapMap=1817) OR
(d.TerrainSwapMap=719) OR
(d.TerrainSwapMap=736);
DELETE d FROM terrain_worldmap d WHERE (d.TerrainSwapMap=1190) OR
(d.TerrainSwapMap=1817) OR
(d.TerrainSwapMap=655) OR
(d.TerrainSwapMap=656) OR
(d.TerrainSwapMap=719);
DELETE d FROM waypoint_path_node d WHERE (d.PathId=3568 AND NOT EXISTS (SELECT 1 FROM waypoint_path p WHERE p.PathId=d.PathId));
COMMIT;
