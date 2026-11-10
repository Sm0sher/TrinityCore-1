-- WoW Forever 1.60.1.70862: remove 12 further model-less NPCs released by prior cleanup.
-- Requires migrations 09-11. The removed owners' scripts were the final references.
-- Rechecked typed conditions, source occurrences, NPC graph and isolated startup.
-- Classic rows, placements, vendor references, StringId and model rows remain protected.
CREATE TEMPORARY TABLE remaining_tail_prune_20261110 (id INT UNSIGNED PRIMARY KEY);
INSERT INTO remaining_tail_prune_20261110 VALUES (21478),(21644),(21950),(21951),(21952),(22375),(22863),(22902),(23888),(28006),(28206),(28646);

DELETE b FROM remaining_tail_prune_20261110 b JOIN npc_vendor v ON -v.item=b.id WHERE v.item<0;
DELETE b FROM remaining_tail_prune_20261110 b JOIN creature c ON c.id=b.id;
DELETE b FROM remaining_tail_prune_20261110 b JOIN creature_template c ON c.entry=b.id WHERE c.StringId IS NOT NULL AND c.StringId<>'';
START TRANSACTION;
DELETE b FROM remaining_tail_prune_20261110 b JOIN creature_template c ON c.entry=b.id WHERE c.VerifiedBuild<>69497 OR EXISTS(SELECT 1 FROM creature p WHERE p.id=b.id) OR EXISTS(SELECT 1 FROM creature_classic_level l WHERE l.entry=b.id) OR EXISTS(SELECT 1 FROM creature_classic_stats l WHERE l.entry=b.id) OR EXISTS(SELECT 1 FROM creature_template_model m WHERE m.CreatureID=b.id);

DELETE d FROM smart_scripts d JOIN remaining_tail_prune_20261110 b ON b.id=d.entryorguid WHERE d.source_type=0;
DELETE d FROM creature_equip_template d JOIN remaining_tail_prune_20261110 b ON b.id=d.CreatureID;
DELETE d FROM creature_template_addon d JOIN remaining_tail_prune_20261110 b ON b.id=d.entry;
DELETE d FROM creature_template_difficulty d JOIN remaining_tail_prune_20261110 b ON b.id=d.Entry;
DELETE d FROM creature_template_locale d JOIN remaining_tail_prune_20261110 b ON b.id=d.entry;
DELETE d FROM creature_template_model d JOIN remaining_tail_prune_20261110 b ON b.id=d.CreatureID;
DELETE d FROM creature_template_movement d JOIN remaining_tail_prune_20261110 b ON b.id=d.CreatureId;
DELETE d FROM creature_template_resistance d JOIN remaining_tail_prune_20261110 b ON b.id=d.CreatureID;
DELETE d FROM creature_template_sparring d JOIN remaining_tail_prune_20261110 b ON b.id=d.Entry;
DELETE d FROM creature_template_spell d JOIN remaining_tail_prune_20261110 b ON b.id=d.CreatureID;
DELETE d FROM creature_template_gossip d JOIN remaining_tail_prune_20261110 b ON b.id=d.CreatureID;
DELETE d FROM creature_trainer d JOIN remaining_tail_prune_20261110 b ON b.id=d.CreatureID;
DELETE d FROM creature_text_locale d JOIN remaining_tail_prune_20261110 b ON b.id=d.CreatureID;
DELETE d FROM creature_text d JOIN remaining_tail_prune_20261110 b ON b.id=d.CreatureID;
DELETE d FROM npc_vendor d JOIN remaining_tail_prune_20261110 b ON b.id=d.entry;
DELETE d FROM npc_spellclick_spells d JOIN remaining_tail_prune_20261110 b ON b.id=d.npc_entry;
DELETE d FROM creature_questitem d JOIN remaining_tail_prune_20261110 b ON b.id=d.CreatureEntry;
DELETE d FROM creature_quest_currency d JOIN remaining_tail_prune_20261110 b ON b.id=d.CreatureId;
DELETE d FROM creature_onkill_reputation d JOIN remaining_tail_prune_20261110 b ON b.id=d.creature_id;
DELETE d FROM quest_greeting_locale d JOIN remaining_tail_prune_20261110 b ON b.id=d.ID WHERE 1=1 AND d.type=0;
DELETE d FROM quest_greeting d JOIN remaining_tail_prune_20261110 b ON b.id=d.ID WHERE 1=1 AND d.Type=0;
DELETE d FROM battlemaster_entry d JOIN remaining_tail_prune_20261110 b ON b.id=d.entry;
DELETE d FROM vehicle_template d JOIN remaining_tail_prune_20261110 b ON b.id=d.creatureId;
DELETE d FROM vehicle_template_accessory d JOIN remaining_tail_prune_20261110 b ON b.id=d.entry;
DELETE d FROM creature_summon_groups d JOIN remaining_tail_prune_20261110 b ON b.id=d.summonerId WHERE d.summonerType=0;
DELETE d FROM creature_summoned_data d JOIN remaining_tail_prune_20261110 b ON b.id=d.CreatureID;
DELETE d FROM creature_template d JOIN remaining_tail_prune_20261110 b ON b.id=d.entry;
COMMIT;
DROP TEMPORARY TABLE remaining_tail_prune_20261110;
