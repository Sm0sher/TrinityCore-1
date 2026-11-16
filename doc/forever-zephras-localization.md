# Zephras Isle Russian localization

`2026_11_16_01_world_zephras_ruru_locales.sql` fills locale gaps for the installed
70938 world on map 2991 (quest area 16593). It adds 281 NPC names, the missing
Russian titles and objective summaries for eight quests, and 17 individual
quest-objective descriptions. Existing nonempty translations are preserved.
Gameplay data, spawns and account ownership are unchanged.

The missing quest IDs were 92834, 92860, 93089, 93459, 93835, 94369, 94946 and
99260. Before this migration, 100 of the island's 108 quests already had Russian
titles, objective summaries and story descriptions. The eight added locale rows
supply titles and summaries only: their long descriptions still need a verified
Russian source. NPC titles and dialogue are not supplied by this migration.

## Sources

Translations are selected by matching existing world IDs against
[Karrz1/TrinityCore, commit e6399e4fcbf774f7a8eabf0148058b70f49487af](https://github.com/Karrz1/TrinityCore/tree/e6399e4fcbf774f7a8eabf0148058b70f49487af/sql/custom/world):

- `2026_11_05_07_world_forever_ruru_creature_names_questie.sql` and the
  `2026_11_05_60` / `2026_11_06_20` NPC-name migrations: Russian Questie/Wowhead
  names, as credited by upstream.
- `2026_11_06_01_world_forever_ruru_quest_titles_wowhead.sql`: Russian Wowhead
  quest titles and objective summaries, as credited by upstream.
- `2026_10_27_40_world_quest_objectives_locale_ruRU_forever.sql`: upstream
  authored objective descriptions following existing Russian quest text.
- The upstream Russian player-cache migrations were also checked in the trial.

The [Wago Creature ruRU export for 70938](https://wago.tools/db2/Creature/csv?build=1.60.1.70938&locale=ruRU)
contains 189 records and matches only one generic island template. It cannot
supply the island's NPC-name catalogue. CreatureName and QuestV2CliTask exports
return HTTP 400 for this build. No machine-generated translations are included.

## Verification and deployment

The migration was applied twice in an isolated schema. Both applications
produced identical data; preexisting nonempty fields were unchanged. Each added
objective was checked against the current objective ID, QuestID and StorageIndex.
Production received the same migration after saving a row-level rollback outside
the repository. Client cache version is raised to at least 26092, so subsequent
logins can discard cached English query responses. Worldserver was restarted to
load the locale rows and cache version. In-game display after the player's next
login remains to be verified.

## Ventaari dialogue follow-up

`2026_11_16_02_world_ventaari_gossip_ruru.sql` and the corresponding hotfix
migration translate the complete currently configured dialogue branch for
Ventaari Brightwish (creature 251487): menus 41424, 41612 and 41611, two questions,
and BroadcastText IDs 304012, 305036 and 305038. These are project translations
of the English official-beta capture already in the database, not claimed
Blizzard Russian text. No matching Russian records were found in the checked
upstream sources. The opening line uses a gender marker for the player.

Questions belong to `gossip_menu_option_locale`; responses belong to
`broadcast_text_locale`. Translating creature names or quest text cannot fill
these independent tables. Both migrations preserve nonempty Russian values,
English source records, menu links and gameplay conditions. The hotfix push is
4050003 (three records), with custom locale VerifiedBuild=0. The world cache
version is raised to at least 26093. Applying each migration twice in separate
test schemas produced identical data. The English BroadcastText records were
checked unchanged. Backups and rollback SQL are kept outside the repository.
