# Original creature appearances and additional sound sets for Forever 70888

This migration restores 19 original appearance bindings for 18 creature templates, 13 displays with combat geometry, and nine model records. It adds 61 SoundKit records, 304 SoundKitEntry records, 13 CreatureSoundData records and five NPCSounds records. The retained positive-weight variants keep their original appearance probabilities. The manifest lists unavailable zero-weight variants.

Sound records retain their original 12.1.0.69497 values. Their audio files were read to completion from the installed 70888 client with the ruRU and enUS locale masks. Source footstep groups and previously deployed sound dependencies satisfy the remaining references.

Apply the hotfix and world SQL to their matching schemas in one InnoDB transaction while worldserver is stopped. Verify that the template binding IDs, model IDs, display IDs, sound records and hotfix range in the manifest are free. Use restore.sql to reverse this package before reverting earlier appearance migrations.

Two applications on the isolated database and a production restart yielded 5,607 startup messages, down from 5,625, with no new diagnostics. Production loaded 79,362 creature spawns, 48,714 game object spawns, 26,125 item templates and 9,533 quests. Appearance and sound playback still need an in-game check.
