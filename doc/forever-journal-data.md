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

One reversible toy experiment changes Toy record 29 (item 21540) from flags 2
to 0. It tests uncollected visibility without granting ownership. Do not extend
that change to the other toys before checking the native client result.

## Wire format and verification

Typed DB2 stores use their normal hotfix tables. Client-only journal tables
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
