# Pool integrity and proc phase filters, Forever 70938

Pool 1465 contains two mineral alternatives at the same Silithus position, both with 95% chances. The truesilver chance becomes 5%, matching the 5% truesilver / 95% rich-thorium rule of twenty sibling sites in parent pool 8145. The original source dump already contained the invalid 190% sum. No spawn, parent-pool limit or other site's probability is changed.

Regular Classic quest 236, Awaiting Word, was incorrectly listed as a Wintergrasp weekly quest. Only this rejected membership is removed; the quest stays intact. The remaining last member is moved from index 3 to index 2, exactly matching the loader's existing empty-index compaction. Valid weekly quests and their active selection are preserved.

Omen of Clarity 16864 omitted a required spell phase in its explicit proc configuration. It now uses HIT (2), the engine's normal generated-proc default. Native flags, two PPM, 10-second cooldown and all other settings are retained. The phase mask ignored by Vampiric Embrace's explicit taken-hit flags is cleared; its school, chance and flags are unchanged. No combat encounter was simulated.

Validation: this migration and the preceding legacy-action migration were applied twice in the existing isolated baseline, verifying all 80 operations after each application. No full database recopy was needed. Startup messages decrease from 5,344 before both migrations to 5,304, with no new messages. The incremental change from the already deployed first migration is 5,309 to 5,304. Validated spell handlers remain 803, NPC texts 15,723, and all protected world-content counts are preserved. C++ and binaries are unchanged.
