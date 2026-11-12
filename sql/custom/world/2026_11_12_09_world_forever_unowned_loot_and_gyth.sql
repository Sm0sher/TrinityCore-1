-- Archive pools with no owner and restore the original independent Gyth skinning rolls.
START TRANSACTION;
DELETE d FROM gameobject_loot_template d WHERE d.Entry IN (407566,578937,578959,613238,613286,616466,616467,616468,617674,617675,617839,619450,623295,630871,630885,661092,661093,661448,661449,664122,671154) AND NOT EXISTS (SELECT 1 FROM conditions c WHERE c.SourceTypeOrReferenceId=4 AND c.SourceGroup=d.Entry) AND NOT EXISTS (SELECT 1 FROM gameobject_template g WHERE d.Entry IN (g.Data0,g.Data1,g.Data2,g.Data3,g.Data4,g.Data5,g.Data6,g.Data7,g.Data8,g.Data9,g.Data10,g.Data11,g.Data12,g.Data13,g.Data14,g.Data15,g.Data16,g.Data17,g.Data18,g.Data19,g.Data20,g.Data21,g.Data22,g.Data23,g.Data24,g.Data25,g.Data26,g.Data27,g.Data28,g.Data29,g.Data30,g.Data31,g.Data32,g.Data33,g.Data34));
DELETE d FROM skinning_loot_template d WHERE d.Entry IN (1511,1514,1516,5762,7848,8138,8927,10258,10264,10268,10339,10442,10447,10683,11583,12940,15290) AND NOT EXISTS (SELECT 1 FROM conditions c WHERE c.SourceTypeOrReferenceId=11 AND c.SourceGroup=d.Entry) AND NOT EXISTS (SELECT 1 FROM creature_template_difficulty c WHERE c.SkinLootID=d.Entry);
INSERT INTO skinning_loot_template (Entry,ItemType,Item,Chance,QuestRequired,LootMode,GroupId,MinCount,MaxCount,Comment)
SELECT 60013,0,v.Item,v.Chance,0,1,0,v.MinCount,v.MaxCount,'Classic-DB 1.12 pool 10339'
FROM (VALUES ROW(8170, 95.7895, 2, 3), ROW(15412, 99.4737, 1, 3), ROW(15414, 97.3684, 1, 3), ROW(15415, 98.9474, 1, 3), ROW(15416, 95.7895, 1, 3)) AS v(Item,Chance,MinCount,MaxCount)
WHERE NOT EXISTS (SELECT 1 FROM skinning_loot_template WHERE Entry=60013)
  AND EXISTS (SELECT 1 FROM creature_template_difficulty WHERE Entry=10339 AND SkinLootID=60013);
COMMIT;
