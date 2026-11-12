# Native outfits for Forever 70888

Restore 23 original creature bindings for 15 templates, including combat geometry, 21 display records and seven relocated model records. Extended display metadata uses built-in 70888 outfits: the base CreatureDisplayInfoExtra and equipment slots match the source, while customization and item display definitions intentionally follow the native client. No legacy equipment or customization records are imported.

The complete outfit resource closure was checked in an isolated CASC copy. 246 missing native assets (about 13 MB) were downloaded from CDN ranges selected by the installed client's encoded keys, with BLTE checksums validated. Install and verify those assets before applying the SQL pair. This package is optional and is not part of automatic world migrations.

Apply hotfix-trial.sql to hotfixes and world-trial.sql to world together. restore.sql reverts the inserted records. The push IDs are reserved against the local snapshot; reallocate them on a different installation. Visual validation in game remains required.

Sources: https://wago.tools/db2/CreatureDisplayInfoExtra?build=1.60.1.70888 and https://wago.tools/db2/ItemDisplayInfo?build=1.60.1.70888. Original geometry and bindings were cross-checked with the original world dump and 12.1.0.69497 display records. Client asset backups remain outside this repository.
