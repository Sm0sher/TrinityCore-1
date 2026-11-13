# Optional reference and rank-binding repairs for Forever 70938

The world migration restores twelve SQL gossip options, keeps their action/text/service fields, and uses NULL for unavailable optional GossipNpcOptionID references. Another option with an explicit zero reference now uses NULL. Invalid optional client data does not invalidate the complete SQL option: the original loader resets only the optional value. This corrects the earlier removal of these twelve options.

Eight capital reputation spillover templates are restored by excluding only destination factions absent from the current client. Existing valid destinations, rates and rank limits remain unchanged. Invalid optional kill credits and AI names are normalized to the fallbacks already used at runtime. An unavailable cosmetic emote and reward amounts without a faction are cleared.

Complete native spell-rank chains use equivalent all-ranks bindings for warrior Gore Drinker, druid bear-form talents and the first paladin righteousness pair. The other existing bindings remain intact. Unranked bandage spell 746 uses a single binding. All 802 validated spell-script handlers are preserved.

The migration also removes rejected auxiliary proc/script metadata, conditions whose source owners are absent from native/hotfix stores, ownerless addons/greetings, an unsupported class starting-item adjustment, unavailable map tracking and rejected target positions. The valid effect-0 Moonglade destination remains; only its duplicate for a nonexistent effect is removed. Conditions attached to existing owners are retained for separate analysis.

The core fixes an inverted dungeon lookup in LoadGossipMenuAddon. Isolated integration tests reproduced rejection of valid native dungeon 1 before the fix, accepted the same record afterward, and verified that unavailable dungeon 1515 is rejected. Two unavailable optional dungeon references use zero.

Validation: the 98 planned operations were checked after each of two applications in isolated schemas. The rebuilt worldserver started with 5,344 startup messages versus 5,426 before, and no new messages. Validated spell handlers remain 802; gossip options return to 11,116; reputation spillover templates increase from four to twelve. Protected creature, object, item, model, quest and hotfix counts are unchanged. SQL mutations guard original rows, including typed FLOAT comparisons. Original data and rollback SQL remain in the local audit directory outside the repository.
