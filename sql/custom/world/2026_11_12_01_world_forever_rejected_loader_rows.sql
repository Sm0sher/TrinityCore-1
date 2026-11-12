-- Archive rows rejected by the 70888 loader and persist the loader fallback for invalid animation IDs.
START TRANSACTION;
UPDATE creature_template_addon d SET d.aiAnimKit=0 WHERE d.entry=648 AND d.aiAnimKit=726;
UPDATE creature_template_addon d SET d.aiAnimKit=0 WHERE d.entry=649 AND d.aiAnimKit=726;
UPDATE creature_template_addon d SET d.aiAnimKit=0 WHERE d.entry=650 AND d.aiAnimKit=726;
UPDATE creature_template_addon d SET d.aiAnimKit=0 WHERE d.entry=651 AND d.aiAnimKit=726;
UPDATE creature_template_addon d SET d.aiAnimKit=0 WHERE d.entry=652 AND d.aiAnimKit=726;
UPDATE creature_template_addon d SET d.aiAnimKit=0 WHERE d.entry=653 AND d.aiAnimKit=726;
UPDATE creature_template_addon d SET d.aiAnimKit=0 WHERE d.entry=58662 AND d.aiAnimKit=1990;
UPDATE creature_template_addon d SET d.aiAnimKit=0 WHERE d.entry=66640 AND d.aiAnimKit=2353;
UPDATE creature_template_addon d SET d.emote=0 WHERE d.entry=82270 AND d.emote=483;
UPDATE creature_template_addon d SET d.aiAnimKit=0 WHERE d.entry=103133 AND d.aiAnimKit=9979;
UPDATE creature_template_addon d SET d.aiAnimKit=0 WHERE d.entry=115491 AND d.aiAnimKit=4817;
UPDATE creature_template_addon d SET d.aiAnimKit=0 WHERE d.entry=132398 AND d.aiAnimKit=12224;
UPDATE creature_template_addon d SET d.aiAnimKit=0 WHERE d.entry=143121 AND d.aiAnimKit=1535;
UPDATE creature_template_addon d SET d.aiAnimKit=0 WHERE d.entry=143245 AND d.aiAnimKit=15348;
UPDATE creature_template_addon d SET d.aiAnimKit=0 WHERE d.entry=156501 AND d.aiAnimKit=11415;
UPDATE creature_template_addon d SET d.aiAnimKit=0 WHERE d.entry=166163 AND d.aiAnimKit=18742;
UPDATE creature_template_addon d SET d.aiAnimKit=0 WHERE d.entry=166323 AND d.aiAnimKit=19033;
UPDATE creature_template_addon d SET d.aiAnimKit=0 WHERE d.entry=169472 AND d.aiAnimKit=14502;
UPDATE creature_template_addon d SET d.aiAnimKit=0 WHERE d.entry=173325 AND d.aiAnimKit=6214;
UPDATE creature_template_addon d SET d.aiAnimKit=0 WHERE d.entry=181494 AND d.aiAnimKit=23987;
UPDATE creature_template_addon d SET d.aiAnimKit=0 WHERE d.entry=188479 AND d.aiAnimKit=12224;
UPDATE creature_template_addon d SET d.emote=0 WHERE d.entry=194652 AND d.emote=483;
UPDATE creature_template_addon d SET d.emote=0 WHERE d.entry=226838 AND d.emote=648;
UPDATE creature_template_addon d SET d.aiAnimKit=0 WHERE d.entry=234991 AND d.aiAnimKit=31762;
DELETE d FROM event_scripts d WHERE (d.id=11206 AND d.command=9 AND d.datalong=50455 AND NOT EXISTS (SELECT 1 FROM gameobject g WHERE g.guid=d.datalong)) OR
(d.id=11206 AND d.command=9 AND d.datalong=50456 AND NOT EXISTS (SELECT 1 FROM gameobject g WHERE g.guid=d.datalong)) OR
(d.id=11206 AND d.command=9 AND d.datalong=50457 AND NOT EXISTS (SELECT 1 FROM gameobject g WHERE g.guid=d.datalong)) OR
(d.id=11206 AND d.command=9 AND d.datalong=50459 AND NOT EXISTS (SELECT 1 FROM gameobject g WHERE g.guid=d.datalong)) OR
(d.id=11206 AND d.command=9 AND d.datalong=50460 AND NOT EXISTS (SELECT 1 FROM gameobject g WHERE g.guid=d.datalong)) OR
(d.id=11206 AND d.command=9 AND d.datalong=50461 AND NOT EXISTS (SELECT 1 FROM gameobject g WHERE g.guid=d.datalong)) OR
(d.id=11206 AND d.command=9 AND d.datalong=50462 AND NOT EXISTS (SELECT 1 FROM gameobject g WHERE g.guid=d.datalong)) OR
(d.id=11206 AND d.command=9 AND d.datalong=50463 AND NOT EXISTS (SELECT 1 FROM gameobject g WHERE g.guid=d.datalong)) OR
(d.id=11206 AND d.command=9 AND d.datalong=50464 AND NOT EXISTS (SELECT 1 FROM gameobject g WHERE g.guid=d.datalong)) OR
(d.id=11206 AND d.command=9 AND d.datalong=50465 AND NOT EXISTS (SELECT 1 FROM gameobject g WHERE g.guid=d.datalong)) OR
(d.id=11206 AND d.command=9 AND d.datalong=50466 AND NOT EXISTS (SELECT 1 FROM gameobject g WHERE g.guid=d.datalong)) OR
(d.id=11206 AND d.command=9 AND d.datalong=50467 AND NOT EXISTS (SELECT 1 FROM gameobject g WHERE g.guid=d.datalong)) OR
(d.id=11206 AND d.command=9 AND d.datalong=50468 AND NOT EXISTS (SELECT 1 FROM gameobject g WHERE g.guid=d.datalong)) OR
(d.id=11206 AND d.command=9 AND d.datalong=50469 AND NOT EXISTS (SELECT 1 FROM gameobject g WHERE g.guid=d.datalong)) OR
(d.id=11206 AND d.command=9 AND d.datalong=50470 AND NOT EXISTS (SELECT 1 FROM gameobject g WHERE g.guid=d.datalong)) OR
(d.id=11206 AND d.command=9 AND d.datalong=50471 AND NOT EXISTS (SELECT 1 FROM gameobject g WHERE g.guid=d.datalong)) OR
(d.id=11206 AND d.command=9 AND d.datalong=50472 AND NOT EXISTS (SELECT 1 FROM gameobject g WHERE g.guid=d.datalong)) OR
(d.id=12857 AND d.command=9 AND d.datalong=30029 AND NOT EXISTS (SELECT 1 FROM gameobject g WHERE g.guid=d.datalong)) OR
(d.id=14143 AND d.command=9 AND d.datalong=21611 AND NOT EXISTS (SELECT 1 FROM gameobject g WHERE g.guid=d.datalong)) OR
(d.id=15452 AND d.command=9 AND d.datalong=5448 AND NOT EXISTS (SELECT 1 FROM gameobject g WHERE g.guid=d.datalong)) OR
(d.id=17566 AND d.command=9 AND d.datalong=5412 AND NOT EXISTS (SELECT 1 FROM gameobject g WHERE g.guid=d.datalong)) OR
(d.id=18475 AND d.command=9 AND d.datalong=4599 AND NOT EXISTS (SELECT 1 FROM gameobject g WHERE g.guid=d.datalong)) OR
(d.id=18475 AND d.command=9 AND d.datalong=9304 AND NOT EXISTS (SELECT 1 FROM gameobject g WHERE g.guid=d.datalong)) OR
(d.id=18475 AND d.command=9 AND d.datalong=9305 AND NOT EXISTS (SELECT 1 FROM gameobject g WHERE g.guid=d.datalong)) OR
(d.id=18475 AND d.command=9 AND d.datalong=9307 AND NOT EXISTS (SELECT 1 FROM gameobject g WHERE g.guid=d.datalong)) OR
(d.id=18481 AND d.command=9 AND d.datalong=9263 AND NOT EXISTS (SELECT 1 FROM gameobject g WHERE g.guid=d.datalong)) OR
(d.id=19714 AND d.command=9 AND d.datalong=5271 AND NOT EXISTS (SELECT 1 FROM gameobject g WHERE g.guid=d.datalong)) OR
(d.id=19714 AND d.command=9 AND d.datalong=5272 AND NOT EXISTS (SELECT 1 FROM gameobject g WHERE g.guid=d.datalong)) OR
(d.id=19714 AND d.command=9 AND d.datalong=5273 AND NOT EXISTS (SELECT 1 FROM gameobject g WHERE g.guid=d.datalong)) OR
(d.id=19714 AND d.command=9 AND d.datalong=5274 AND NOT EXISTS (SELECT 1 FROM gameobject g WHERE g.guid=d.datalong)) OR
(d.id=19714 AND d.command=9 AND d.datalong=5275 AND NOT EXISTS (SELECT 1 FROM gameobject g WHERE g.guid=d.datalong)) OR
(d.id=21076 AND d.command=9 AND d.datalong=67923 AND NOT EXISTS (SELECT 1 FROM gameobject g WHERE g.guid=d.datalong));
DELETE d FROM garrison_plot_finalize_info d WHERE (d.garrPlotInstanceId=18) OR
(d.garrPlotInstanceId=19) OR
(d.garrPlotInstanceId=20) OR
(d.garrPlotInstanceId=22) OR
(d.garrPlotInstanceId=23) OR
(d.garrPlotInstanceId=24) OR
(d.garrPlotInstanceId=25) OR
(d.garrPlotInstanceId=59) OR
(d.garrPlotInstanceId=63) OR
(d.garrPlotInstanceId=67) OR
(d.garrPlotInstanceId=81);
DELETE d FROM guild_rewards d WHERE (d.ItemID=114968) OR
(d.ItemID=116666) OR
(d.ItemID=120352) OR
(d.ItemID=61931) OR
(d.ItemID=61935) OR
(d.ItemID=61936) OR
(d.ItemID=61937) OR
(d.ItemID=61942) OR
(d.ItemID=61958) OR
(d.ItemID=62023) OR
(d.ItemID=62024) OR
(d.ItemID=62025) OR
(d.ItemID=62026) OR
(d.ItemID=62027) OR
(d.ItemID=62029) OR
(d.ItemID=62038) OR
(d.ItemID=62039) OR
(d.ItemID=62040) OR
(d.ItemID=62286) OR
(d.ItemID=62287) OR
(d.ItemID=62298) OR
(d.ItemID=62799) OR
(d.ItemID=62800) OR
(d.ItemID=63125) OR
(d.ItemID=63138) OR
(d.ItemID=63206) OR
(d.ItemID=63207) OR
(d.ItemID=63352) OR
(d.ItemID=63353) OR
(d.ItemID=63359) OR
(d.ItemID=63398) OR
(d.ItemID=64398) OR
(d.ItemID=64399) OR
(d.ItemID=64400) OR
(d.ItemID=64401) OR
(d.ItemID=64402) OR
(d.ItemID=65274) OR
(d.ItemID=65360) OR
(d.ItemID=65361) OR
(d.ItemID=65362) OR
(d.ItemID=65363) OR
(d.ItemID=65364) OR
(d.ItemID=65435) OR
(d.ItemID=65498) OR
(d.ItemID=67107) OR
(d.ItemID=68136) OR
(d.ItemID=69209) OR
(d.ItemID=69210) OR
(d.ItemID=69887) OR
(d.ItemID=69888) OR
(d.ItemID=69892) OR
(d.ItemID=71033) OR
(d.ItemID=85508) OR
(d.ItemID=85509) OR
(d.ItemID=85510) OR
(d.ItemID=85666) OR
(d.ItemID=89190) OR
(d.ItemID=89191) OR
(d.ItemID=89192) OR
(d.ItemID=89193) OR
(d.ItemID=89194) OR
(d.ItemID=89195);
DELETE d FROM npc_vendor d WHERE (d.entry=109685 AND d.item=33154 AND d.ExtendedCost=3545 AND d.type=1) OR
(d.entry=11188 AND d.item=13480 AND d.type=1) OR
(d.entry=14828 AND d.item=19291 AND d.ExtendedCost=3816 AND d.type=1) OR
(d.entry=14828 AND d.item=19295 AND d.ExtendedCost=3818 AND d.type=1) OR
(d.entry=15176 AND d.item=22209 AND d.type=1) OR
(d.entry=15176 AND d.item=22214 AND d.type=1) OR
(d.entry=15176 AND d.item=22766 AND d.type=1) OR
(d.entry=15176 AND d.item=22767 AND d.type=1) OR
(d.entry=15176 AND d.item=22768 AND d.type=1) OR
(d.entry=15293 AND d.item=20382 AND d.type=1) OR
(d.entry=15293 AND d.item=20506 AND d.type=1) OR
(d.entry=15293 AND d.item=20507 AND d.type=1) OR
(d.entry=15293 AND d.item=20508 AND d.type=1) OR
(d.entry=15293 AND d.item=20509 AND d.type=1) OR
(d.entry=15293 AND d.item=20510 AND d.type=1) OR
(d.entry=15293 AND d.item=20511 AND d.type=1) OR
(d.entry=15293 AND d.item=22769 AND d.type=1) OR
(d.entry=15293 AND d.item=22770 AND d.type=1) OR
(d.entry=15293 AND d.item=22771 AND d.type=1) OR
(d.entry=15864 AND d.item=21157 AND d.ExtendedCost=2581 AND d.type=1) OR
(d.entry=15864 AND d.item=21537 AND d.ExtendedCost=2580 AND d.type=1) OR
(d.entry=15864 AND d.item=21538 AND d.ExtendedCost=2581 AND d.type=1) OR
(d.entry=15864 AND d.item=21539 AND d.ExtendedCost=2581 AND d.type=1) OR
(d.entry=15864 AND d.item=21541 AND d.ExtendedCost=2581 AND d.type=1) OR
(d.entry=15864 AND d.item=21543 AND d.ExtendedCost=2581 AND d.type=1) OR
(d.entry=15864 AND d.item=21544 AND d.ExtendedCost=2581 AND d.type=1) OR
(d.entry=15864 AND d.item=21640 AND d.ExtendedCost=2581 AND d.type=1) OR
(d.entry=16786 AND d.item=22999 AND d.ExtendedCost=2520 AND d.type=1) OR
(d.entry=16786 AND d.item=23122 AND d.ExtendedCost=2520 AND d.type=1) OR
(d.entry=16786 AND d.item=23123 AND d.ExtendedCost=2520 AND d.type=1) OR
(d.entry=248196 AND d.item=250996 AND d.type=1) OR
(d.entry=26123 AND d.item=23083 AND d.ExtendedCost=2353 AND d.type=1) OR
(d.entry=26123 AND d.item=23211 AND d.ExtendedCost=2349 AND d.type=1) OR
(d.entry=26123 AND d.item=23215 AND d.ExtendedCost=2349 AND d.type=1) OR
(d.entry=26123 AND d.item=23246 AND d.ExtendedCost=2348 AND d.type=1) OR
(d.entry=26123 AND d.item=23324 AND d.ExtendedCost=2351 AND d.type=1) OR
(d.entry=26123 AND d.item=23326 AND d.ExtendedCost=2349 AND d.type=1) OR
(d.entry=26123 AND d.item=23327 AND d.ExtendedCost=2349 AND d.type=1) OR
(d.entry=26123 AND d.item=23435 AND d.ExtendedCost=2349 AND d.type=1) OR
(d.entry=26124 AND d.item=23083 AND d.ExtendedCost=2353 AND d.type=1) OR
(d.entry=26124 AND d.item=23211 AND d.ExtendedCost=2349 AND d.type=1) OR
(d.entry=26124 AND d.item=23215 AND d.ExtendedCost=2349 AND d.type=1) OR
(d.entry=26124 AND d.item=23246 AND d.ExtendedCost=2348 AND d.type=1) OR
(d.entry=26124 AND d.item=23324 AND d.ExtendedCost=2351 AND d.type=1) OR
(d.entry=26124 AND d.item=23326 AND d.ExtendedCost=2349 AND d.type=1) OR
(d.entry=26124 AND d.item=23327 AND d.ExtendedCost=2349 AND d.type=1) OR
(d.entry=26124 AND d.item=23435 AND d.ExtendedCost=2349 AND d.type=1) OR
(d.entry=29491 AND d.item=42360 AND d.type=1) OR
(d.entry=29491 AND d.item=42361 AND d.type=1) OR
(d.entry=29491 AND d.item=42363 AND d.type=1) OR
(d.entry=29491 AND d.item=42365 AND d.type=1) OR
(d.entry=29491 AND d.item=42368 AND d.type=1) OR
(d.entry=29491 AND d.item=42369 AND d.type=1) OR
(d.entry=29491 AND d.item=42370 AND d.type=1) OR
(d.entry=29491 AND d.item=42371 AND d.type=1) OR
(d.entry=29491 AND d.item=42372 AND d.type=1) OR
(d.entry=29491 AND d.item=42373 AND d.type=1) OR
(d.entry=29491 AND d.item=42374 AND d.type=1) OR
(d.entry=29491 AND d.item=42375 AND d.type=1) OR
(d.entry=29491 AND d.item=42376 AND d.type=1) OR
(d.entry=29491 AND d.item=42377 AND d.type=1) OR
(d.entry=29491 AND d.item=42378 AND d.type=1) OR
(d.entry=29512 AND d.item=21895 AND d.type=1) OR
(d.entry=29512 AND d.item=21916 AND d.type=1) OR
(d.entry=29512 AND d.item=21917 AND d.type=1) OR
(d.entry=29512 AND d.item=21918 AND d.type=1) OR
(d.entry=29512 AND d.item=21919 AND d.type=1) OR
(d.entry=29538 AND d.item=40694 AND d.type=1) OR
(d.entry=29538 AND d.item=40695 AND d.type=1) OR
(d.entry=29538 AND d.item=40702 AND d.type=1) OR
(d.entry=29538 AND d.item=40704 AND d.type=1) OR
(d.entry=29538 AND d.item=40716 AND d.type=1) OR
(d.entry=29538 AND d.item=40738 AND d.type=1) OR
(d.entry=29538 AND d.item=40739 AND d.type=1) OR
(d.entry=29538 AND d.item=40748 AND d.type=1) OR
(d.entry=29538 AND d.item=40749 AND d.type=1) OR
(d.entry=29538 AND d.item=44641 AND d.type=1) OR
(d.entry=29538 AND d.item=44644 AND d.type=1) OR
(d.entry=29538 AND d.item=44652 AND d.type=1) OR
(d.entry=29538 AND d.item=45829 AND d.type=1) OR
(d.entry=29538 AND d.item=45830 AND d.type=1) OR
(d.entry=29538 AND d.item=45838 AND d.type=1) OR
(d.entry=29538 AND d.item=45839 AND d.type=1) OR
(d.entry=29538 AND d.item=45846 AND d.type=1) OR
(d.entry=29538 AND d.item=45847 AND d.type=1) OR
(d.entry=29538 AND d.item=50972 AND d.type=1) OR
(d.entry=29538 AND d.item=50973 AND d.type=1) OR
(d.entry=29538 AND d.item=50981 AND d.type=1) OR
(d.entry=29538 AND d.item=50982 AND d.type=1) OR
(d.entry=29538 AND d.item=50994 AND d.type=1) OR
(d.entry=29538 AND d.item=50995 AND d.type=1) OR
(d.entry=29547 AND d.item=27856 AND d.type=1) OR
(d.entry=29547 AND d.item=29450 AND d.type=1) OR
(d.entry=29547 AND d.item=35948 AND d.type=1) OR
(d.entry=29547 AND d.item=35949 AND d.type=1) OR
(d.entry=29547 AND d.item=43086 AND d.type=1) OR
(d.entry=29547 AND d.item=43088 AND d.type=1) OR
(d.entry=32287 AND d.item=41718 AND d.type=1) OR
(d.entry=32287 AND d.item=42188 AND d.type=1) OR
(d.entry=32287 AND d.item=43157 AND d.type=1) OR
(d.entry=32287 AND d.item=44141 AND d.type=1) OR
(d.entry=32287 AND d.item=44159 AND d.type=1) OR
(d.entry=32287 AND d.item=44166 AND d.type=1) OR
(d.entry=32287 AND d.item=44167 AND d.type=1) OR
(d.entry=32287 AND d.item=44170 AND d.type=1) OR
(d.entry=32287 AND d.item=44171 AND d.type=1) OR
(d.entry=32287 AND d.item=44173 AND d.type=1) OR
(d.entry=32287 AND d.item=44174 AND d.type=1) OR
(d.entry=32287 AND d.item=44176 AND d.type=1) OR
(d.entry=32287 AND d.item=44179 AND d.type=1) OR
(d.entry=32287 AND d.item=44180 AND d.type=1) OR
(d.entry=32287 AND d.item=44181 AND d.type=1) OR
(d.entry=32287 AND d.item=44182 AND d.type=1) OR
(d.entry=32287 AND d.item=44183 AND d.type=1) OR
(d.entry=32287 AND d.item=50368 AND d.type=1) OR
(d.entry=52497 AND d.item=20391 AND d.ExtendedCost=3404 AND d.type=1) OR
(d.entry=52497 AND d.item=20392 AND d.ExtendedCost=3404 AND d.type=1) OR
(d.entry=52497 AND d.item=20561 AND d.ExtendedCost=3404 AND d.type=1) OR
(d.entry=52497 AND d.item=20562 AND d.ExtendedCost=3404 AND d.type=1) OR
(d.entry=52497 AND d.item=20563 AND d.ExtendedCost=3404 AND d.type=1) OR
(d.entry=52497 AND d.item=20564 AND d.ExtendedCost=3404 AND d.type=1) OR
(d.entry=52497 AND d.item=20565 AND d.ExtendedCost=3404 AND d.type=1) OR
(d.entry=52497 AND d.item=20566 AND d.ExtendedCost=3404 AND d.type=1) OR
(d.entry=52497 AND d.item=20567 AND d.ExtendedCost=3404 AND d.type=1) OR
(d.entry=52497 AND d.item=20568 AND d.ExtendedCost=3404 AND d.type=1) OR
(d.entry=52497 AND d.item=20569 AND d.ExtendedCost=3404 AND d.type=1) OR
(d.entry=52497 AND d.item=20570 AND d.ExtendedCost=3404 AND d.type=1) OR
(d.entry=52497 AND d.item=20571 AND d.ExtendedCost=3404 AND d.type=1) OR
(d.entry=52497 AND d.item=20572 AND d.ExtendedCost=3404 AND d.type=1) OR
(d.entry=52497 AND d.item=20573 AND d.ExtendedCost=3404 AND d.type=1) OR
(d.entry=52497 AND d.item=20574 AND d.ExtendedCost=3404 AND d.type=1) OR
(d.entry=53702 AND d.item=20397 AND d.ExtendedCost=3404 AND d.type=1) OR
(d.entry=53702 AND d.item=20398 AND d.ExtendedCost=3404 AND d.type=1) OR
(d.entry=53702 AND d.item=20399 AND d.ExtendedCost=3404 AND d.type=1) OR
(d.entry=53702 AND d.item=20409 AND d.ExtendedCost=3404 AND d.type=1) OR
(d.entry=53702 AND d.item=20410 AND d.ExtendedCost=3404 AND d.type=1) OR
(d.entry=53702 AND d.item=20411 AND d.ExtendedCost=3404 AND d.type=1) OR
(d.entry=53702 AND d.item=20413 AND d.ExtendedCost=3404 AND d.type=1) OR
(d.entry=53702 AND d.item=20414 AND d.ExtendedCost=3404 AND d.type=1);
DELETE d FROM player_factionchange_reputations d WHERE (d.alliance_id=1037) OR
(d.alliance_id=1050) OR
(d.alliance_id=1068) OR
(d.alliance_id=1094) OR
(d.alliance_id=1126) OR
(d.alliance_id=1134) OR
(d.alliance_id=1174) OR
(d.alliance_id=1177) OR
(d.alliance_id=1242) OR
(d.alliance_id=1353) OR
(d.alliance_id=1376) OR
(d.alliance_id=1387) OR
(d.alliance_id=1419) OR
(d.alliance_id=1682) OR
(d.alliance_id=1691) OR
(d.alliance_id=1710) OR
(d.alliance_id=1731) OR
(d.alliance_id=1733) OR
(d.alliance_id=1738) OR
(d.alliance_id=930) OR
(d.alliance_id=946) OR
(d.alliance_id=978) OR
(d.horde_id=1137);
DELETE d FROM player_factionchange_titles d WHERE (d.alliance_id=1) OR
(d.alliance_id=10) OR
(d.alliance_id=11) OR
(d.alliance_id=113) OR
(d.alliance_id=12) OR
(d.alliance_id=126) OR
(d.alliance_id=13) OR
(d.alliance_id=14) OR
(d.alliance_id=146) OR
(d.alliance_id=147) OR
(d.alliance_id=148) OR
(d.alliance_id=149) OR
(d.alliance_id=2) OR
(d.alliance_id=3) OR
(d.alliance_id=4) OR
(d.alliance_id=48) OR
(d.alliance_id=5) OR
(d.alliance_id=6) OR
(d.alliance_id=7) OR
(d.alliance_id=75) OR
(d.alliance_id=8) OR
(d.alliance_id=9);
DELETE d FROM vehicle_template_accessory d WHERE (d.entry=122450 AND NOT EXISTS (SELECT 1 FROM npc_spellclick_spells s WHERE s.npc_entry=d.entry)) OR
(d.entry=27626 AND NOT EXISTS (SELECT 1 FROM npc_spellclick_spells s WHERE s.npc_entry=d.entry)) OR
(d.entry=27761 AND NOT EXISTS (SELECT 1 FROM npc_spellclick_spells s WHERE s.npc_entry=d.entry)) OR
(d.entry=28054 AND NOT EXISTS (SELECT 1 FROM npc_spellclick_spells s WHERE s.npc_entry=d.entry)) OR
(d.entry=28782 AND NOT EXISTS (SELECT 1 FROM npc_spellclick_spells s WHERE s.npc_entry=d.entry)) OR
(d.entry=30134 AND NOT EXISTS (SELECT 1 FROM npc_spellclick_spells s WHERE s.npc_entry=d.entry)) OR
(d.entry=34146 AND NOT EXISTS (SELECT 1 FROM npc_spellclick_spells s WHERE s.npc_entry=d.entry)) OR
(d.entry=34150 AND NOT EXISTS (SELECT 1 FROM npc_spellclick_spells s WHERE s.npc_entry=d.entry)) OR
(d.entry=34151 AND NOT EXISTS (SELECT 1 FROM npc_spellclick_spells s WHERE s.npc_entry=d.entry)) OR
(d.entry=42246 AND NOT EXISTS (SELECT 1 FROM npc_spellclick_spells s WHERE s.npc_entry=d.entry)) OR
(d.entry=42247 AND NOT EXISTS (SELECT 1 FROM npc_spellclick_spells s WHERE s.npc_entry=d.entry)) OR
(d.entry=58662 AND NOT EXISTS (SELECT 1 FROM npc_spellclick_spells s WHERE s.npc_entry=d.entry));
COMMIT;
