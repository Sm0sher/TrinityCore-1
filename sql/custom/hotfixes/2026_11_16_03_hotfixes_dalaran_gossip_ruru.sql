-- Dalaran: Russian project translation of Denaaris Stargale and Belanaa Windveil greetings.
-- Original English records are official-beta capture data; these translations are not official ruRU captures.
-- Only missing locale fields are filled; original BroadcastText and gameplay fields stay unchanged.
SET NAMES utf8mb4;
START TRANSACTION;
INSERT INTO broadcast_text_locale (ID,locale,Text_lang,Text1_lang,VerifiedBuild) SELECT 309828,'ruRU','Попутного ветра! Мне поручено обеспечить нашим небеснорожденным сородичам быстрый путь в Штормград. Можешь воспользоваться этим порталом в любое удобное время.','',0 FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM broadcast_text_locale WHERE ID=309828 AND locale='ruRU');
UPDATE broadcast_text_locale SET Text_lang='Попутного ветра! Мне поручено обеспечить нашим небеснорожденным сородичам быстрый путь в Штормград. Можешь воспользоваться этим порталом в любое удобное время.' WHERE ID=309828 AND locale='ruRU' AND COALESCE(Text_lang,'')='';
INSERT INTO hotfix_data (Id,UniqueId,TableHash,RecordId,Status,VerifiedBuild) VALUES (4050004,1,35137211,309828,1,0) ON DUPLICATE KEY UPDATE Status=VALUES(Status);
INSERT INTO broadcast_text_locale (ID,locale,Text_lang,Text1_lang,VerifiedBuild) SELECT 326948,'ruRU','Я Беланаа Вуаль Ветра, представительница Высшего ордена здесь, в Азероте. Мы будем очень признательны, если ты пожертвуешь ткани для нашей организации.','Я Беланаа Вуаль Ветра, представительница Высшего ордена здесь, в Азероте. Мы будем очень признательны, если ты пожертвуешь ткани для нашей организации.',0 FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM broadcast_text_locale WHERE ID=326948 AND locale='ruRU');
UPDATE broadcast_text_locale SET Text_lang='Я Беланаа Вуаль Ветра, представительница Высшего ордена здесь, в Азероте. Мы будем очень признательны, если ты пожертвуешь ткани для нашей организации.' WHERE ID=326948 AND locale='ruRU' AND COALESCE(Text_lang,'')='';
UPDATE broadcast_text_locale SET Text1_lang='Я Беланаа Вуаль Ветра, представительница Высшего ордена здесь, в Азероте. Мы будем очень признательны, если ты пожертвуешь ткани для нашей организации.' WHERE ID=326948 AND locale='ruRU' AND COALESCE(Text1_lang,'')='';
INSERT INTO hotfix_data (Id,UniqueId,TableHash,RecordId,Status,VerifiedBuild) VALUES (4050004,2,35137211,326948,1,0) ON DUPLICATE KEY UPDATE Status=VALUES(Status);
COMMIT;
