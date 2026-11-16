-- Russian system strings with an exact compatible English source in AzerothCore.
-- Source: azerothcore-wotlk 17f9f9d5003708136c798ab4ef8c1b9762251bad/data/sql/base/db_world/acore_string.sql
-- Fill an empty ruRU slot only. English, other locales and server behavior stay unchanged.
SET NAMES utf8mb4;
START TRANSACTION;
UPDATE trinity_string SET content_loc8='Ваш пароль не может быть длиннее 16 символов (клиентский лимит), пароль не изменен!' WHERE entry=55 AND MD5(content_default)='cb675f578ee3bf79d30ce05c19909a42' AND COALESCE(content_loc8,'')='';
COMMIT;
