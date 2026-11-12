# Forever 1.60.1.70888 creature models

These optional SQL patches restore 126 original model bindings for 113 creature templates. Apply them only after verifying that the corresponding client can read the resources listed in `client-assets.json` from its own CASC storage.

The asset manifest records the original 70888 FileDataIDs and their ranges in Blizzard's CDN archives. Each entry includes its encoded key and byte count. The source archive data is not stored in this repository.

Run `hotfixes.sql` in the hotfix database and `world.sql` in the world database while worldserver is stopped. Check that the reserved hotfix push IDs and the model and display IDs in the patch are free before applying it to another database. For the default schema names, `restore.sql` rolls back both parts together.

The local verification read all 601 assets from the patched 70888 CASC and reached the sign-in screen in a separate game copy. A worldserver restart removed all 113 expected log messages and added none. In-world rendering still needs verification.
