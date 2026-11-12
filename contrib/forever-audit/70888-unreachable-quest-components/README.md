# Unreachable quest and creature components, Forever 70888

Archive 1,927 non-native, non-classic quests and 284 model-less creature templates after a directed availability/dependency scan of the current world database, client DB2, source references, player history, conditions and SmartAI. Native quests, classic quests and player quest history are protected.

ObjectMgr treats quest_template_addon.NextQuestID as a prerequisite declaration for its destination. It does not offer that destination to the player. Availability roots follow actual givers, item starts, spells and scripts; dependency traversal preserves prerequisites. RewardNextQuest and faction-change links remain protected. Clear 23 NextQuestID pointers from retained prerequisite definitions to archived unavailable destinations, retaining their original values in the local archive.

Related metadata includes 70 unreachable credit owners and 18 vehicle accessory rows owned by unreachable actors, 101 conditions and 13 SmartAI rows. Physical creature/gameobject spawn rows are preserved. The trial is checked for added startup messages, expected content counts and repeat application.

Optional coordinated SQL package: dependency-trial.sql, quest-trial.sql, model-archive-trial.sql, in that order. Run only on the audited 70888 snapshot, with a complete backup and the world server stopped. The deployment applied the three files in one transaction with row archives in separate schemas. Archive payloads and credentials are excluded from Git.

Client source snapshots: https://wago.tools/db2/QuestV2?build=1.60.1.70888 and https://wago.tools/db2/SpellEffect?build=1.60.1.70888. ObjectMgr::LoadQuests in this fork supplies the dependency semantics. No native DB2 is changed by this package.
