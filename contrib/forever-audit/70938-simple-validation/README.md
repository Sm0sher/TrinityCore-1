# Simple validation repairs for Forever 70938

Two world migrations repair 453 records. They restore 28 NPC dialogues, normalize two SmartAI orientations, clear unavailable optional appearance and friendship-faction values, remove an error-text identifier with no error type, and persist five NPC service-flag corrections already made by the loader.

The summoned-creature loader previously cleared unrelated optional fields after rejecting a ground or flying mount display. It now clears the field that failed validation. Missing optional database values use NULL, preserving the distinction between no override and an explicit zero display.

The migrations remove 404 rejected auxiliary records from the active database: unavailable discovery paths, enchant/learning/pet-aura metadata, rules for absent spell groups, invalid battleground/click/gossip mappings, unused vehicle settings, unavailable map/phase/area restrictions, and orphan equipment settings. Complete original rows and restoration SQL are retained outside the repository in the local audit directories. Quest templates, creature templates, spawns, items and loot rows are preserved.

Every mutation compares the complete original row. FLOAT preconditions use explicit FLOAT casts so MySQL's conversion to double does not silently reject a matching stored value. Changed records are preserved and repeated execution is harmless. Available native DB2 rows and hotfixes were checked against the current client; manifests record input hashes and undecoded encrypted sections. Existing startup rejection is also required before removing metadata.

Validation: both migrations were applied twice to isolated schemas. Every one of the 453 planned row changes was verified after each application, including preserved fields. The rebuilt worldserver started on localhost port 18085. Startup messages decreased from 5,556 to 5,426 with no new messages. Protected creature, spawn, item, model, quest and hotfix counts stayed unchanged; accepted NPC texts increased by 28 to 15,722. Only the worldserver target and affected compilation units were rebuilt.

Deferred: a gossip option referenced by quest conditions; dialogues without assigned text or with ambiguous choices; loot restoration; creature appearance and quest-content dependencies. Wago retail ItemSparse classifies 117 of 119 identified missing loot items as expansion 0, so those records are retained for repair rather than treated as disposable expansion content.
