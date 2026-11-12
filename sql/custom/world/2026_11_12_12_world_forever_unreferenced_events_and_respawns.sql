-- Archive source-unreferenced events and linked respawns already rejected on non-instance maps.
START TRANSACTION;
DELETE FROM event_scripts WHERE id IN (10346,11286,12530,13584,13852,14400,14859,17740,18014,18481,18503,20543,24005);
DELETE FROM linked_respawn WHERE linkType=0 AND (guid,linkedGuid) IN ((20013991,20013990),(20013992,20013990),(20032728,20032617),(20032762,20032617));
COMMIT;
