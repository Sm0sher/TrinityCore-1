-- Archive 324 model-less NPC templates in unreachable ownership groups for 70862.
-- Protect references from placed NPCs and owners outside the candidate group.
-- Scope SmartAI and condition cleanup to entries owned by these NPC templates.
-- This migration represents the reviewed database snapshot after migrations 09-12.
CREATE TEMPORARY TABLE script_owner_prune_20261111 (id INT UNSIGNED PRIMARY KEY);
INSERT INTO script_owner_prune_20261111 VALUES (16442),(16443),(16444),(16819),(16964),(16968),(17009),(17101),(17110),(17119),(17241),(17468),(17508),(17649),(17658),(17659),(17664),(17853),(18266),(18322),(18417),(18424),(18437),(19354),(19992),(19998),(20130),(20512),(20749),(20765),(20766),(20875),(20984),(21065),(21503),(21506),(22274),(22357),(22377),(22384),(23083),(23188),(23208),(23219),(23257),(23370),(23439),(23618),(23689),(23776),(24040),(24210),(24248),(24291),(24364),(24418),(24468),(24480),(24510),(24527),(24539),(24601),(24703),(24752),(24918),(25243),(25743),(25836),(25841),(26191),(26200),(26231),(26265),(26595),(26615),(26785),(26813),(27025),(27061),(27206),(27213),(27258),(27292),(27500),(27501),(27629),(27661),(27662),(27726),(27727),(27806),(27810),(27811),(27812),(27813),(27814),(27815),(27816),(27817),(27818),(27819),(27820),(27886),(27887),(27996),(28001),(28127),(28129),(28162),(28190),(28203),(28217),(28297),(28380),(28389),(28401),(28413),(28494),(28495),(28565),(28591),(28714),(28715),(28718),(28721),(28723),(28725),(28726),(28727),(28752),(28754),(28821),(28822),(28941),(28942),(28994),(28997),(29005),(29089),(29244),(29488),(29501),(29523),(29598),(29620),(29621),(29648),(29708),(29716),(29724),(29730),(29884),(30013),(30066),(30108),(30123),(30228),(30243),(30250),(30272),(30313),(30337),(30401),(30564),(30631),(30632),(30725),(31033),(31260),(31333),(31432),(31736),(31784),(31785),(31801),(31881),(31882),(31884),(31891),(32222),(32225),(32227),(32370),(32535),(32687),(33027),(33307),(33310),(33454),(33498),(33554),(33555),(33556),(33557),(33612),(33650),(33653),(33657),(33790),(33791),(33792),(33793),(33794),(33796),(33798),(33799),(33800),(33842),(33843),(33870),(34125),(34519),(34872),(36059),(36891),(36942),(37878),(37881),(39140),(40176),(41730),(42218),(42339),(43048),(44894),(46333),(46747),(46749),(46750),(46755),(46978),(61657),(61658),(61780),(61790),(64861),(66202),(66291),(66480),(66674),(66676),(66677),(67038),(67131),(77696),(100797),(107823),(107826),(107829),(107833),(107835),(107839),(107841),(108723),(108742),(108743),(108744),(108745),(108746),(108748),(108749),(108750),(108752),(108753),(108754),(108755),(108756),(108757),(108758),(108765),(108767),(112655),(113321),(118703),(121610),(121620),(124382),(124890),(126695),(128937),(130359),(133429),(134137),(135240),(135474),(136161),(136347),(138762),(148912),(175030),(175031),(178908),(179840),(179842),(179908),(180228),(180244),(180261),(180310),(180320),(180335),(180336),(180348),(187223),(207198),(212698),(216164),(216432),(224708),(227668),(229522),(229534),(229622),(231919),(232674),(233187),(233314),(234854),(235252),(249022),(249194),(249198),(249200),(249534);

DELETE b FROM script_owner_prune_20261111 b JOIN npc_vendor v ON -v.item=b.id WHERE v.item<0;
DELETE b FROM script_owner_prune_20261111 b JOIN creature c ON c.id=b.id;
DELETE b FROM script_owner_prune_20261111 b JOIN creature_template c ON c.entry=b.id WHERE c.StringId IS NOT NULL AND c.StringId<>'';
START TRANSACTION;
DELETE b FROM script_owner_prune_20261111 b JOIN creature_template c ON c.entry=b.id WHERE c.VerifiedBuild<>69497 OR EXISTS(SELECT 1 FROM creature p WHERE p.id=b.id) OR EXISTS(SELECT 1 FROM creature_classic_level l WHERE l.entry=b.id) OR EXISTS(SELECT 1 FROM creature_classic_stats l WHERE l.entry=b.id) OR EXISTS(SELECT 1 FROM creature_template_model m WHERE m.CreatureID=b.id);

DELETE d FROM smart_scripts d JOIN script_owner_prune_20261111 b ON b.id=d.entryorguid WHERE d.source_type=0;
DELETE d FROM creature_equip_template d JOIN script_owner_prune_20261111 b ON b.id=d.CreatureID;
DELETE d FROM creature_template_addon d JOIN script_owner_prune_20261111 b ON b.id=d.entry;
DELETE d FROM creature_template_difficulty d JOIN script_owner_prune_20261111 b ON b.id=d.Entry;
DELETE d FROM creature_template_locale d JOIN script_owner_prune_20261111 b ON b.id=d.entry;
DELETE d FROM creature_template_model d JOIN script_owner_prune_20261111 b ON b.id=d.CreatureID;
DELETE d FROM creature_template_movement d JOIN script_owner_prune_20261111 b ON b.id=d.CreatureId;
DELETE d FROM creature_template_resistance d JOIN script_owner_prune_20261111 b ON b.id=d.CreatureID;
DELETE d FROM creature_template_sparring d JOIN script_owner_prune_20261111 b ON b.id=d.Entry;
DELETE d FROM creature_template_spell d JOIN script_owner_prune_20261111 b ON b.id=d.CreatureID;
DELETE d FROM creature_template_gossip d JOIN script_owner_prune_20261111 b ON b.id=d.CreatureID;
DELETE d FROM creature_trainer d JOIN script_owner_prune_20261111 b ON b.id=d.CreatureID;
DELETE d FROM creature_text_locale d JOIN script_owner_prune_20261111 b ON b.id=d.CreatureID;
DELETE d FROM creature_text d JOIN script_owner_prune_20261111 b ON b.id=d.CreatureID;
DELETE d FROM npc_vendor d JOIN script_owner_prune_20261111 b ON b.id=d.entry;
DELETE d FROM npc_spellclick_spells d JOIN script_owner_prune_20261111 b ON b.id=d.npc_entry;
DELETE d FROM creature_questitem d JOIN script_owner_prune_20261111 b ON b.id=d.CreatureEntry;
DELETE d FROM creature_quest_currency d JOIN script_owner_prune_20261111 b ON b.id=d.CreatureId;
DELETE d FROM creature_onkill_reputation d JOIN script_owner_prune_20261111 b ON b.id=d.creature_id;
DELETE d FROM quest_greeting_locale d JOIN script_owner_prune_20261111 b ON b.id=d.ID WHERE 1=1 AND d.type=0;
DELETE d FROM quest_greeting d JOIN script_owner_prune_20261111 b ON b.id=d.ID WHERE 1=1 AND d.Type=0;
DELETE d FROM battlemaster_entry d JOIN script_owner_prune_20261111 b ON b.id=d.entry;
DELETE d FROM vehicle_template d JOIN script_owner_prune_20261111 b ON b.id=d.creatureId;
DELETE d FROM vehicle_template_accessory d JOIN script_owner_prune_20261111 b ON b.id=d.entry;
DELETE d FROM creature_summon_groups d JOIN script_owner_prune_20261111 b ON b.id=d.summonerId WHERE d.summonerType=0;
DELETE d FROM creature_summoned_data d JOIN script_owner_prune_20261111 b ON b.id=d.CreatureID;
DELETE d FROM conditions d JOIN script_owner_prune_20261111 b ON ((d.SourceTypeOrReferenceId=16 OR (d.SourceTypeOrReferenceId=22 AND d.SourceId=0)) AND d.SourceEntry=b.id) OR (d.SourceTypeOrReferenceId IN (18,21,23) AND d.SourceGroup=b.id);
DELETE d FROM creature_template d JOIN script_owner_prune_20261111 b ON b.id=d.entry;
COMMIT;
DROP TEMPORARY TABLE script_owner_prune_20261111;
