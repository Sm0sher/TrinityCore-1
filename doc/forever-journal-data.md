# Native journal and collections for 70938

The optional server settings `Classic.AdventureGuide.Enabled` and
`Classic.Collections.ShowUncollected` default to zero. The first controls game
rule 42 instead of hard-coding the journal off. The second normalizes the native
collection CVar in both account and character config-cache responses, including
empty caches. It preserves other settings, updates cache timestamps only when
the response changes and grants no collectibles. It does not rewrite FrameXML.

Migration: `sql/custom/hotfixes/2026_11_15_03_hotfixes_native_journal_collections_70938.sql`.

## Data scope

The catalogue contains one Forever tier, 44 instances, 332 native difficulty-zero
encounters, 195 available boss models and 7,757 encounter/item links. Maps and
boss names come from the installed 70938 DB2 files; test map 13, missing maps
and non-dungeon/non-raid maps are excluded. Instance and boss IDs are in a
private range: `50000 + MapID` and `50000 + DungeonEncounterID`, respectively.
The tier is 60000 and item-link IDs start at 1000001.

Wago 70938 returns Table not found for the 14 Journal/AdventureJournal exports.
Pinned retail 12.1.7.70892 supplies optional localized boss lore only when both
DungeonEncounterID and MapID match the target build. Instance artwork is reused
by map. No retail ability sections, spell corrections, quest suggestions or
retail loot tables are imported. Bosses without verified lore remain textless.
Artwork still needs checking against the client's installed assets.

Loot is derived from the current world database. A spawned NPC must match the
boss's native localized name or its matched Wago English name on the same map.
Only that NPC's difficulty-zero loot and referenced loot templates contribute
items. Every linked item must exist in native ItemSparse or server hotfixes.
Chest rewards and script-only/summoned bosses without such a spawn are not
guessed. The guide is a catalogue and loot foundation, not a complete strategy
guide or proof that all encounters in the world are implemented.

The migration also restores 64 pet descriptions from the pinned localized Wago
export, requiring exact Species ID, CreatureID and SummonSpellID agreement.
For 61 pets a source line names a native summon item whose ItemXItemEffect and
ItemEffect chain reaches that summon spell. Retail vendor locations and prices
are not copied. Other source text remains empty.

The one-record toy experiment (Toy 29, item 21540) was verified in-game:
clearing flag 2 made the uncollected lantern appear. Follow-up migration
`2026_11_15_04_hotfixes_collection_visibility_70938.sql` applies that visibility
change to the 17 toy items present in native data or server hotfixes. Five
references remain deferred for missing item data: 279471, 279519, 284164,
286203 and 286573. No toys are awarded to the account.

## Wire format and verification

Typed DB2 stores, including JournalEncounter, use their normal hotfix tables.
Redundant blob copies for those stores are removed by the follow-up migration;
they only caused startup warnings and were ignored by the loader. Client-only journal tables
are sent through hotfix_blob using the target 70938 metadata, including native
integer widths, array order, NUL-terminated UTF-8 strings and omission of an
external record ID from the payload. The target table hashes are read from its
DB2 headers. Localized blobs are supplied for enUS and ruRU; canonical Russian
native names are retained where no safe English counterpart was selected.

The reserved hotfix push is 4050000, with a unique record sequence inside the
push. Reapplying the SQL is idempotent. Future revisions that must invalidate an
already-cached payload need a new push ID rather than editing this migration.

Validation includes two applications in an isolated hotfix schema, unique IDs,
all instance/encounter/item links, field widths and the exact production C++
cache normalizer exercised in a standalone Debug build. Full worldserver builds
with RelWithDebInfo. In-game availability, rendering and persistence still need
verification after deployment; server startup alone cannot establish them.

Sources: [Wago JournalEncounter](https://wago.tools/db2/JournalEncounter?build=12.1.7.70892),
[Wago BattlePetSpecies](https://wago.tools/db2/BattlePetSpecies?build=12.1.7.70892),
[native collections UI](https://github.com/Gethe/wow-ui-source/blob/bebcb6bf309cf41b41bd74f8ca651e6a105b2676/Interface/AddOns/Blizzard_Collections/Shared/Blizzard_Collections.lua).

## Client resource investigation: restoration not verified

In-game testing revealed `MainMenuBarMicroButtons.lua:1825: attempt to call a
nil value`: the journal button called CanShowEncounterJournal, but the bundled
journal TOC did not load its bootstrap for Camelot. Server data cannot define
that Lua function.

`contrib/forever-client-patches/install_native_journal.py` was an experimental
loose-file copy of two native Blizzard modules from the exact 70938 UI commit. Its manifest
pins all 58 source files by SHA256. It adds Camelot journal load conditions and
restores the native Collected/Not collected wardrobe checkboxes while preserving
source filters. It does not add a MoshPit helper addon or modify Wow.exe.

The actual client ignored these replacements after a full restart. The same
nil-function error remained. The installer is now disabled by default; the
`--experimental-loose-files` flag is only for explicitly reproducing that failed
experiment. These files must not be described as an installed working fix.

The two experiment directories were moved outside Interface/AddOns, preserving
their contents. No separate helper addon is installed.

Local read-only extraction from CASC confirmed the TOC load conditions and the
Camelot wardrobe's forced `SetUncollectedShown(false)`. This establishes client
behavior, but does not prove that archive modification is the correct solution;
server-controlled availability and loading conditions still require investigation.

An offline CASC candidate changed only the two TOCs and the Camelot wardrobe
Lua file. ROOT, VFS-575, VFS-root and ENCODING references were updated. All three
files round-tripped through the independently built CascLib reader with exact
byte agreement. That check was insufficient: the real client rejected the newly
generated container indexes before loading UI, with `Truncated updated section`
and `NeedsRepair` in Tact.log. The index writer omitted update-area capacity
for buckets larger than its fixed file-size assumption.

The candidate was rolled back. Original archive contents were never overwritten;
the added archive and build config are outside the client. Original build key
`3627b099867bfde3e37a17cf44f69cdc` is active again, and Battle.net completed its
file verification. No successful native guide-window test has been established.
Further client archive changes are suspended while server and database behavior
is checked. Server catalogue data and account ownership were not rolled back.
