-- Restore the canonical unlocked mound and the exact Andonisus quest-blade loot.
START TRANSACTION;
UPDATE gameobject_template SET Data0=0 WHERE entry=181690 AND type=10 AND name='Fertile Dirt Mound' AND Data0=1661;
INSERT IGNORE INTO gameobject_loot_template (Entry,ItemType,Item,Chance,QuestRequired,LootMode,GroupId,MinCount,MaxCount,Comment) SELECT 18015,0,22736,100,0,1,0,1,1,'Andonisus, Reaper of Souls' WHERE NOT EXISTS (SELECT 1 FROM gameobject_loot_template WHERE Entry=18015);
COMMIT;
