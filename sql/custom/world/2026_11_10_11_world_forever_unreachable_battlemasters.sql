-- WoW Forever 1.60.1.70862: archive 122 unreachable NPCs with battlemaster metadata.
-- Requires migrations 09 and 10. A battlemaster mapping does not spawn its owner.
-- These templates have no protected incoming roots in the checked NPC dependency graph.
-- Remove their own mappings together with owner data, after a dedicated startup test.
CREATE TEMPORARY TABLE remaining_battlemaster_prune_20261110 (id INT UNSIGNED PRIMARY KEY);
INSERT INTO remaining_battlemaster_prune_20261110 VALUES (16694),(16695),(16696),(16711),(17506),(19855),(19858),(19859),(19905),(19906),(19907),(19908),(19909),(19910),(19911),(19912),(19915),(19923),(19925),(20118),(20119),(20120),(20269),(20271),(20272),(20273),(20274),(20276),(20362),(20374),(20385),(20386),(20388),(20390),(20497),(20499),(21235),(22013),(25991),(26007),(29667),(29668),(29669),(29670),(29671),(29672),(29673),(29674),(29675),(29676),(30231),(30566),(30578),(30579),(30580),(30581),(30582),(30583),(30584),(30586),(30587),(30590),(30610),(32332),(32616),(32617),(32618),(32619),(32620),(32621),(32622),(32623),(32624),(32625),(34948),(34950),(34951),(34952),(34953),(34955),(34973),(34978),(34983),(34985),(34986),(34987),(34988),(34989),(34991),(34998),(35001),(35002),(35007),(35017),(35019),(35020),(35021),(35022),(35023),(35024),(35025),(35026),(35027),(40413),(44012),(44013),(44059),(44060),(50546),(50548),(50549),(50550),(50551),(50552),(50553),(50668),(50670),(50674),(50676),(50678),(50683),(50684);

DELETE b FROM remaining_battlemaster_prune_20261110 b JOIN npc_vendor v ON -v.item=b.id WHERE v.item<0;
DELETE b FROM remaining_battlemaster_prune_20261110 b JOIN creature c ON c.id=b.id;
DELETE b FROM remaining_battlemaster_prune_20261110 b JOIN creature_template c ON c.entry=b.id WHERE c.StringId IS NOT NULL AND c.StringId<>'';
START TRANSACTION;
DELETE b FROM remaining_battlemaster_prune_20261110 b JOIN creature_template c ON c.entry=b.id WHERE c.VerifiedBuild<>69497 OR EXISTS(SELECT 1 FROM creature p WHERE p.id=b.id) OR EXISTS(SELECT 1 FROM creature_classic_level l WHERE l.entry=b.id) OR EXISTS(SELECT 1 FROM creature_classic_stats l WHERE l.entry=b.id) OR EXISTS(SELECT 1 FROM creature_template_model m WHERE m.CreatureID=b.id);

DELETE d FROM smart_scripts d JOIN remaining_battlemaster_prune_20261110 b ON b.id=d.entryorguid WHERE d.source_type=0;
DELETE d FROM creature_equip_template d JOIN remaining_battlemaster_prune_20261110 b ON b.id=d.CreatureID;
DELETE d FROM creature_template_addon d JOIN remaining_battlemaster_prune_20261110 b ON b.id=d.entry;
DELETE d FROM creature_template_difficulty d JOIN remaining_battlemaster_prune_20261110 b ON b.id=d.Entry;
DELETE d FROM creature_template_locale d JOIN remaining_battlemaster_prune_20261110 b ON b.id=d.entry;
DELETE d FROM creature_template_model d JOIN remaining_battlemaster_prune_20261110 b ON b.id=d.CreatureID;
DELETE d FROM creature_template_movement d JOIN remaining_battlemaster_prune_20261110 b ON b.id=d.CreatureId;
DELETE d FROM creature_template_resistance d JOIN remaining_battlemaster_prune_20261110 b ON b.id=d.CreatureID;
DELETE d FROM creature_template_sparring d JOIN remaining_battlemaster_prune_20261110 b ON b.id=d.Entry;
DELETE d FROM creature_template_spell d JOIN remaining_battlemaster_prune_20261110 b ON b.id=d.CreatureID;
DELETE d FROM creature_template_gossip d JOIN remaining_battlemaster_prune_20261110 b ON b.id=d.CreatureID;
DELETE d FROM creature_trainer d JOIN remaining_battlemaster_prune_20261110 b ON b.id=d.CreatureID;
DELETE d FROM creature_text_locale d JOIN remaining_battlemaster_prune_20261110 b ON b.id=d.CreatureID;
DELETE d FROM creature_text d JOIN remaining_battlemaster_prune_20261110 b ON b.id=d.CreatureID;
DELETE d FROM npc_vendor d JOIN remaining_battlemaster_prune_20261110 b ON b.id=d.entry;
DELETE d FROM npc_spellclick_spells d JOIN remaining_battlemaster_prune_20261110 b ON b.id=d.npc_entry;
DELETE d FROM creature_questitem d JOIN remaining_battlemaster_prune_20261110 b ON b.id=d.CreatureEntry;
DELETE d FROM creature_quest_currency d JOIN remaining_battlemaster_prune_20261110 b ON b.id=d.CreatureId;
DELETE d FROM creature_onkill_reputation d JOIN remaining_battlemaster_prune_20261110 b ON b.id=d.creature_id;
DELETE d FROM quest_greeting_locale d JOIN remaining_battlemaster_prune_20261110 b ON b.id=d.ID WHERE 1=1 AND d.type=0;
DELETE d FROM quest_greeting d JOIN remaining_battlemaster_prune_20261110 b ON b.id=d.ID WHERE 1=1 AND d.Type=0;
DELETE d FROM battlemaster_entry d JOIN remaining_battlemaster_prune_20261110 b ON b.id=d.entry;
DELETE d FROM vehicle_template d JOIN remaining_battlemaster_prune_20261110 b ON b.id=d.creatureId;
DELETE d FROM vehicle_template_accessory d JOIN remaining_battlemaster_prune_20261110 b ON b.id=d.entry;
DELETE d FROM creature_summon_groups d JOIN remaining_battlemaster_prune_20261110 b ON b.id=d.summonerId WHERE d.summonerType=0;
DELETE d FROM creature_summoned_data d JOIN remaining_battlemaster_prune_20261110 b ON b.id=d.CreatureID;
DELETE d FROM creature_template d JOIN remaining_battlemaster_prune_20261110 b ON b.id=d.entry;
COMMIT;
DROP TEMPORARY TABLE remaining_battlemaster_prune_20261110;
