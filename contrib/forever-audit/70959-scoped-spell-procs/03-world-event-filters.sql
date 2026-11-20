-- Event gates derived from WoW Forever 70959 descriptions and aura data.
-- 1291101: Analyzing Weaknesses: nonperiodic critical effect consumes buff
-- 1302264: Vigilant: only a dodge consumes a charge
-- 424919: Main Gauche: only a parry consumes the parry buff
-- 409504: Expose Weakness: melee and ranged criticals
-- 432256: Focused Attacks: melee and ranged criticals energize
-- 1226137: Hunter Scarlet ranged four-piece: ranged criticals
-- 1226359: Hunter Scarlet melee four-piece: melee criticals
-- 1226126: Druid Scarlet Guardian six-piece: critical strikes, retain passive effect
-- 1227196: Warlock Scarlet six-piece: periodic criticals, retain Backdraft bonus
START TRANSACTION;
INSERT IGNORE INTO `spell_proc` (`SpellId`, `SchoolMask`, `SpellFamilyName`, `SpellFamilyMask0`, `SpellFamilyMask1`, `SpellFamilyMask2`, `SpellFamilyMask3`, `ProcFlags`, `ProcFlags2`, `SpellTypeMask`, `SpellPhaseMask`, `HitMask`, `AttributesMask`, `DisableEffectsMask`, `ProcsPerMinute`, `Chance`, `Cooldown`, `Charges`) VALUES
(1291101,0,0,0,0,0,0,0,0,0,2,2,0,0,0,0,0,0),
(1302264,0,0,0,0,0,0,0,0,0,0,16,0,0,0,0,0,0),
(424919,0,0,0,0,0,0,0,0,0,0,32,0,0,0,0,0,0),
(409504,0,0,0,0,0,0,340,0,0,2,2,0,0,0,0,0,0),
(432256,0,0,0,0,0,0,0,0,0,2,2,0,0,0,0,0,0),
(1226137,0,0,0,0,0,0,0,0,0,2,2,0,0,0,0,0,0),
(1226359,0,0,0,0,0,0,0,0,0,2,2,0,0,0,0,0,0),
(1226126,0,0,0,0,0,0,0,0,0,2,2,0,2,0,0,0,0),
(1227196,0,0,0,0,0,0,0,0,0,2,2,0,2,0,0,0,0);
COMMIT;
