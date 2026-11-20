-- Adapted from Everlake world-data 8520a1a45a27f2f741caf6de40933ccefb2aff5c.
-- Local aquatic creatures need CAN_SWIM for ObjectMgr to set UNIT_FLAG_CAN_SWIM.
UPDATE `creature_template_difficulty`
SET `StaticFlags1` = `StaticFlags1` | 0x10000000
WHERE `DifficultyID` = 0
  AND (`StaticFlags1` & 0x00040000) <> 0
  AND (`StaticFlags1` & 0x30000000) = 0
  AND `Entry` IN (6033, 6145, 8236, 10942, 11374, 12123, 12124, 12125, 14356, 14357, 14490, 15505, 15526);

-- Adapted from Everlake 2026_11_19_997. These already placed creatures walk the bottom.
UPDATE `creature_template_difficulty`
SET `StaticFlags1` = `StaticFlags1` | 0x00080000
WHERE `DifficultyID` = 0
  AND `StaticFlags1` = 0
  AND `Entry` IN (254588, 259005, 259175);
