-- Ventaari Brightwish: Russian project translation of both gossip questions.
-- Existing menu links, option IDs and English source text stay unchanged.
SET NAMES utf8mb4;
START TRANSACTION;
INSERT INTO gossip_menu_option_locale (MenuID,OptionID,Locale,OptionText,BoxText) VALUES (41424,0,'ruRU','Расскажите, что происходит на острове Зефрис и как обстоят дела у Ваятелей ветра.','') ON DUPLICATE KEY UPDATE OptionText=IF(COALESCE(gossip_menu_option_locale.OptionText,'')='',VALUES(OptionText),gossip_menu_option_locale.OptionText);
INSERT INTO gossip_menu_option_locale (MenuID,OptionID,Locale,OptionText,BoxText) VALUES (41612,0,'ruRU','Что вы можете рассказать о нынешнем положении Ваятелей ветра?','') ON DUPLICATE KEY UPDATE OptionText=IF(COALESCE(gossip_menu_option_locale.OptionText,'')='',VALUES(OptionText),gossip_menu_option_locale.OptionText);
UPDATE version SET cache_id=GREATEST(cache_id,26093);
COMMIT;
