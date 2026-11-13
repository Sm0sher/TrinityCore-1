# Legacy quest-action and loader-fallback repairs, Forever 70938

Two escort completion actions still used unsupported SmartAI action 15. They now use action 152, which calls AreaExploredOrEventHappens for the same stored player targets. Quest IDs 1144 and 12688, timing and target parameters are unchanged; both quests already have the required completion-event flag and no ordinary objectives. This repairs acceptance of their completion actions without forcing unrelated objectives complete.

The existing druid Dash handler now binds both native ranks, 1850 and 9821. It still applies the speed bonus only in cat form. The native chain was checked exactly and the second-rank handler passed normal script validation; validated spell handlers increase from 802 to 803.

Two reversed money bounds are persisted to the fallback already selected by the loader. Three optional unavailable jump curves use NULL, retaining the jump configurations. NPC text 41518 keeps its valid choices and clears only missing alternatives. NPC text 7500 regains both existing, interchangeable directions to the Alterac Valley representative with equal selection weights. Accepted NPC texts increase by one.

The migration removes ownerless achievement bindings, quest mail metadata, difficulty rows, rejected gossip mappings and an unavailable optional reward preview. It also removes an unlinked zero-increment no-op and a completely unreferenced empty waypoint header.

Six spell-loot recipes have no playable spell owner: all 22 native/hotfix SpellID sources, server-side spells, C++ numeric references and attached conditions were checked. Their 49 loot rows are inactive; item definitions are preserved. Four prospecting rows for three unavailable expansion ores point only to nonexistent reference templates and are also removed. Classic ore data and entries with existing reference targets are retained.

Validation: all 75 operations were checked after each of two applications to isolated schemas, with typed FLOAT comparisons for loot tables without primary keys. Worldserver starts with 5,309 DBErrors messages versus 5,344 before, and no new messages. Protected creature, object, item, model, quest and hotfix counts are unchanged. No C++ changes or binary rebuild is required for this data migration. Complete original rows, rollback SQL and full test logs remain in the local audit directory outside the repository. Escort completion and Dash were validated through server loading; no in-game walkthrough was performed.
