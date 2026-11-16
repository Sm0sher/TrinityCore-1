# Dalaran Russian NPC localization

The 70938 audit covers existing spawns in the open-world Dalaran vicinity:
map 0, x and y in [0,800], z>50. This is a spatial scope, not a claim that every
Dalaran map or instance has been localized. The scope contains 79 unique creature
templates. Before the fix, 57 lacked Russian names. All five English names in
the player's screenshot are included: Kirin Tor Guard 246848, Archmage Celindra
252085, High Order Mage 265675, Arcane Sentry 275164, Archmage Modera 276235.

`2026_11_16_03_world_dalaran_ruru_locales.sql` adds 57 names and 19 service titles.
55 names come from matching-ID Russian Questie/Wowhead imports in
[Karrz1/TrinityCore, commit e6399e4fcbf774f7a8eabf0148058b70f49487af](https://github.com/Karrz1/TrinityCore/tree/e6399e4fcbf774f7a8eabf0148058b70f49487af/sql/custom/world):
`2026_11_05_07`, `2026_11_05_60`, and `2026_11_06_20` creature-name migrations.
Kirin Tor Enforcer 276215 and Oliver 277510 are project translations; service
titles use project translations and existing Russian profession terminology.
They are not claimed to be official Russian captures.

Five creatures in this spatial scope have configured gossip roots. Following
all option links reaches 86 menus, 101 options and 161 distinct BroadcastText
records (including option labels). 159 records already have Russian text in all
source-bearing gender fields. All option labels have existing BroadcastText
sources. The two missing greetings are Denaaris Stargale 309828 and Belanaa
Windveil 326948. The accompanying hotfix migration translates both, preserving
the original English records. These are project translations of captured English
text. The custom hotfix push is 4050004, with VerifiedBuild=0 locale records.
No absent gossip menu or dialogue content is fabricated for other NPCs.

Both migrations preserve existing nonempty Russian fields. They do not change
spawns, creature names in the English template, faction, quest data, service
flags or menu routing. The client cache version is raised to at least 26094.

Both migrations were applied twice in isolated schemas. Results were identical.
Additional sentinel translations verified that a later nonempty Russian edit
survives reapplication. Every target template's English name and title was
checked against the pre-audit snapshot; source BroadcastText rows were checked
unchanged. Production backups and rollback SQL are outside the repository.
Worldserver must load the locale rows and cache version; actual rendered names
and greetings remain subject to a post-reconnect in-game check.
