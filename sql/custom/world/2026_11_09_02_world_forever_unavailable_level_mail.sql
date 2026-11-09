-- Forever 70862: remove level-up mail settings rejected by the current loader.
-- These 25 rows reference MailTemplate IDs absent from client 1.60.1.70862.
-- Verified against Wago MailTemplate and ObjectMgr::LoadMailLevelRewards.
-- Every selected row was skipped before being added to the reward store.
DELETE FROM mail_level_reward WHERE (mailTemplateId,level) IN ((224,20),(225,20),(226,20),(227,20),(228,20),(229,20),(230,20),(231,20),(232,20),(233,20),(265,77),(272,40),(273,40),(274,40),(275,40),(276,40),(277,40),(278,40),(279,40),(280,40),(281,40),(282,60),(283,60),(284,70),(285,70));
