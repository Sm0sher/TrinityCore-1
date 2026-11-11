-- Archive the unreferenced loot group exposed by the ItemSparse restoration.
START TRANSACTION;
DELETE d FROM gameobject_loot_template d WHERE d.Entry=17919 AND d.QuestRequired=0 AND NOT EXISTS (SELECT 1 FROM gameobject_template t WHERE t.entry=17919 OR 17919 IN (t.Data0,t.Data1,t.Data2,t.Data3,t.Data4,t.Data5,t.Data6,t.Data7,t.Data8,t.Data9,t.Data10,t.Data11,t.Data12,t.Data13,t.Data14,t.Data15,t.Data16,t.Data17,t.Data18,t.Data19,t.Data20,t.Data21,t.Data22,t.Data23,t.Data24,t.Data25,t.Data26,t.Data27,t.Data28,t.Data29,t.Data30,t.Data31,t.Data32,t.Data33,t.Data34)) AND NOT EXISTS (SELECT 1 FROM conditions c WHERE c.SourceTypeOrReferenceId=4 AND c.SourceGroup=17919);
COMMIT;
