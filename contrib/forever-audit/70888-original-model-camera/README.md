# Original creature appearances and camera effects for Forever 70888

This migration restores 30 original appearance bindings for 29 creature templates, 25 displays with combat geometry, and 16 model records. It adds seven camera effects with their seven child entries from the original 12.1.0.69497 client DB2 files. Model and texture dependencies were checked against the installed 70888 client. The retained positive-weight variants keep their original appearance probabilities. The manifest lists the unavailable zero-weight variants.

Apply the hotfix and world SQL to their matching schemas in one InnoDB transaction while worldserver is stopped. The migration requires the model, display, blob and push IDs in the manifest to be free. Apply the restore SQL to reverse this package before reverting an earlier appearance migration.

Two applications on the isolated database and a production restart yielded 5,625 startup messages, down from 5,654, with no new diagnostics. The production startup retained 79,362 creature spawns, 48,714 game object spawns, 26,125 item templates and 9,533 quests. The appearance and camera effects still need an in-game check.
