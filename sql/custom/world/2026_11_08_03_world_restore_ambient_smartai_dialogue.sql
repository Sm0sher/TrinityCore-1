-- The VMaNGOS conversion calls a timed action list from itself.
-- Keep the original timers and choose a direct TALK event on the NPC instead.
START TRANSACTION;

-- Sergeant Houser: select text group 1 or 2 at either waypoint.
UPDATE `smart_scripts`
SET `action_type` = 125, `action_param1` = 1001, `action_param2` = 1002
WHERE `source_type` = 9 AND `entryorguid` IN (950000645, 950000901) AND `id` = 0 AND `action_type` = 87;

-- Gerard Abernathy: the three steps select groups 6/7, 8/9 and 10/11.
UPDATE `smart_scripts`
SET `action_type` = 125,
    `action_param1` = CASE `id` WHEN 5 THEN 1001 WHEN 7 THEN 1003 WHEN 9 THEN 1005 END,
    `action_param2` = CASE `id` WHEN 5 THEN 1002 WHEN 7 THEN 1004 WHEN 9 THEN 1006 END
WHERE `source_type` = 9 AND `entryorguid` = 950001227 AND `id` IN (5, 7, 9) AND `action_type` = 87;

-- Samantha Shackleton: preserve the outer choice between this branch and group 4.
UPDATE `smart_scripts`
SET `action_type` = 125, `action_param1` = 1001, `action_param2` = 1004, `action_param3` = 0, `action_param4` = 0
WHERE `source_type` = 9 AND `entryorguid` = 570000 AND `id` = 0 AND `action_type` = 87;

-- Waypoints and periodic events have no player invoker. The NPC speaks the ambient follow-up lines.
UPDATE `smart_scripts`
SET `action_param3` = 0, `target_type` = 1
WHERE `source_type` = 9 AND `action_type` = 1 AND `target_type` = 7
  AND ((`entryorguid` IN (950000645, 950000901) AND `id` = 2)
    OR (`entryorguid` = 950001227 AND `id` IN (1, 4)));

DELETE FROM `smart_scripts`
WHERE `source_type` = 0 AND `entryorguid` IN (5662, 5696, 5700) AND `id` BETWEEN 10 AND 15
  AND `event_type` = 59 AND `comment` LIKE 'Forever ambient dialogue:%';

INSERT INTO `smart_scripts`
(`entryorguid`, `source_type`, `id`, `event_type`, `event_param1`, `action_type`, `action_param1`, `target_type`, `comment`) VALUES
(5662, 0, 10, 59, 1001, 1, 1, 1, 'Forever ambient dialogue: Houser - talk group 1'),
(5662, 0, 11, 59, 1002, 1, 2, 1, 'Forever ambient dialogue: Houser - talk group 2'),
(5696, 0, 10, 59, 1001, 1, 6, 1, 'Forever ambient dialogue: Abernathy - talk group 6'),
(5696, 0, 11, 59, 1002, 1, 7, 1, 'Forever ambient dialogue: Abernathy - talk group 7'),
(5696, 0, 12, 59, 1003, 1, 8, 1, 'Forever ambient dialogue: Abernathy - talk group 8'),
(5696, 0, 13, 59, 1004, 1, 9, 1, 'Forever ambient dialogue: Abernathy - talk group 9'),
(5696, 0, 14, 59, 1005, 1, 10, 1, 'Forever ambient dialogue: Abernathy - talk group 10'),
(5696, 0, 15, 59, 1006, 1, 11, 1, 'Forever ambient dialogue: Abernathy - talk group 11'),
(5700, 0, 10, 59, 1001, 1, 0, 1, 'Forever ambient dialogue: Shackleton - talk group 0'),
(5700, 0, 11, 59, 1002, 1, 1, 1, 'Forever ambient dialogue: Shackleton - talk group 1'),
(5700, 0, 12, 59, 1003, 1, 2, 1, 'Forever ambient dialogue: Shackleton - talk group 2'),
(5700, 0, 13, 59, 1004, 1, 3, 1, 'Forever ambient dialogue: Shackleton - talk group 3');

COMMIT;
