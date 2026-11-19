-- Clear invalid hard prerequisites on breadcrumb quests. Their optional follow-up links are preserved.
START TRANSACTION;
UPDATE world.quest_template_addon SET PrevQuestID=0 WHERE ID=29682 AND PrevQuestID=11481 AND NextQuestID=0 AND BreadcrumbForQuestId=0;
UPDATE world.quest_template_addon SET PrevQuestID=0 WHERE ID=29684 AND PrevQuestID=11482 AND NextQuestID=0 AND BreadcrumbForQuestId=0;
COMMIT;
