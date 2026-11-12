# Unsupported retail quest quarantine, Forever 70888

Disable 1,144 unsupported retail quests whose required item objectives reference unavailable items. Keep their quest definitions and all references for future porting. Standard Player::CanSeeStartQuest and Player::CanTakeQuest reject disabled quests. This is reversible content exclusion, not restoration of the missing item data.

Eligibility: source world VerifiedBuild 69497; absent from native 70888 QuestV2 and Classic level sets; no player quest history; no dependency needed by protected quests; at least one positive-amount, parentless item objective that is neither optional nor part of a progress bar and whose item lacks complete native Item/ItemSparse data. Tracking-event quests, explicit server quest ports, named quest scripts, native requirement references and objectives referenced by spawn tracking or conditions are protected. Each selected objective also produced a missing-item message in the verified server startup.

The optional SQL file checks the original quest/objective pair, build, flags and Classic metadata, and inserts only missing quest-disable rows. Definitions, objective requirements, rewards and physical spawns are preserved. Restore only the rows carrying this package's exact comment with quarantine-restore.sql. Re-enable a quest after its item/objective dependencies are ported and validated.

Startup comparison on the audited snapshot: 10,631 to 8,497 messages, zero added messages, unchanged quest/creature/item/model/spawn counts. The reduction is in active-content validation messages; the quarantined definitions still need data work before they can be enabled. The first broader trial exposed spawn-tracking dependencies; those quests were excluded from the final package.

Sources: https://wago.tools/db2/QuestV2?build=1.60.1.70888, https://wago.tools/db2/Item?build=1.60.1.70888, https://wago.tools/db2/ItemSparse?build=1.60.1.70888. Local implementation: DisableMgr.cpp, ObjectMgr::LoadQuests and Player.cpp quest visibility/acceptance.
