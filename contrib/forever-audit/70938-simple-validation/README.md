# Simple validation repairs for Forever 70938

The world migration restores 28 NPC dialogues whose only existing BroadcastText had zero probability. It also normalizes two SmartAI orientations to equivalent radians, clears three unavailable alternate-gender models and two optional mount models, and removes an error-text identifier that has no error type.

The summoned-creature loader previously cleared unrelated optional fields after rejecting a ground or flying mount display. It now clears the field that failed validation. Missing optional database values use NULL, preserving the distinction between no override and an explicit zero display.

The migration archives from the active database 369 auxiliary rows that the current loader already rejects: enchant proc metadata, absent-source learning/pet-aura metadata, rules for nonexistent spell groups, and unavailable skill discovery paths. It does not remove quest templates, creature templates, spawns, items or loot entries. Complete old rows and restoration SQL are retained outside the repository in the local audit directory.

Every SQL mutation compares the complete original row, so changed records are preserved and repeated execution is harmless. Native DB2 layouts and available hotfix records were checked against the current client; the manifest records input hashes and undecoded encrypted sections. The existing startup rejection is required in addition to the native lookup before removing metadata.

Validation: the migration was applied twice to isolated schemas and worldserver was started on port 18085. Startup diagnostics decreased from 5,556 to 5,490 with no new messages. Loaded creature, spawn, item, model, quest and hotfix counts remained unchanged; accepted NPC texts increased by 28 to 15,722. The modified worldserver target was built incrementally.

Deferred: dialogues with no assigned text or ambiguous choices; item loot restoration; creature appearance and quest-content dependencies. Wago retail ItemSparse classifies 117 of 119 identified missing loot items as expansion 0, so those records must not be treated as disposable expansion content.

The second migration persists existing loader fallbacks for nine friendship-faction menu fields and five NPC service flags, and archives already rejected mappings for unavailable battlegrounds, click spells, client gossip options, vehicle settings, maps, phases, area restrictions and orphan equipment metadata. A gossip option referenced by quest conditions is deliberately preserved. Combined isolated validation of both migrations and the rebuilt core: 5556 to 5446 startup messages, no new messages, all protected world-content counts unchanged.
