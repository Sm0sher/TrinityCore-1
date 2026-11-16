# Collections in WoW Forever 70938

## Catalogues and ownership

Wago CSV exports for `build=1.60.1.70938` contain 144 Mount rows,
122 BattlePetSpecies rows, 22 Toy rows and 9 TransmogSet rows. Their ID sets
match the decoded installed DB2 files. Importing those catalogues again does
not change account ownership or collection-tab visibility.

The core loads account mounts and toys through CollectionMgr and sends full
updates in Player::SendInitialPacketsBeforeAddToMap. The pet journal has a
separate request handler. An empty ownership list is valid for a new account;
do not grant collectibles simply to make a tab visible.

## Native collection setting

`onlyShowCollectedItemsInJournal` controls native tab visibility. When true,
Blizzard_Collections hides Mounts, Pets and Toys if the account owns none of
those objects. The Classic pet UI also hides its filter dropdown in this mode.

To request the full catalogue through the normal client setting:

```text
/console onlyShowCollectedItemsInJournal 0
/reload
```

The setting is character-specific. Its saved line is:

```text
SET onlyShowCollectedItemsInJournal "0"
```

The client stores this in the character's `config-cache.wtf`; the server stores
the corresponding plain-text cache in `character_account_data`, type 1
(`PER_CHARACTER_CONFIG_CACHE`). If editing caches offline, close the client,
ensure the character is offline, back up both copies and preserve all unrelated
settings. Updating the server cache timestamp lets the client detect the change.
Prefer the console command for normal use.

To inspect the value in-game without installing an addon:

```text
/dump C_CVar.GetCVarInfo("onlyShowCollectedItemsInJournal")
```

After changing it, verify the tabs, filter dropdowns and uncollected entries in
the actual client. Saved cache values alone do not prove the rendered result.

### Confirmed in-game checks

On 70938 the tabs appeared after the native CVar change. The mount list was
still empty because its separate **Not collected** checkbox was off. Enabling
that checkbox populated the list and its 3D preview. **Unusable** additionally
allows browsing mounts the current character cannot use. The owned counter can
remain zero while the uncollected catalogue is visible.

The toy list was subsequently verified in-game with 17 uncollected entries
after the flag-2 visibility hotfix in
`2026_11_15_04_hotfixes_collection_visibility_70938.sql`. The owned counter
remains zero, which is correct for this account. Mount browsing and its 3D
preview were also verified with no owned mounts.

Five toy references still lack usable ItemSparse records: 279471, 279519,
284164, 286203 and 286573. Their Item and ItemXItemEffect records alone are not
enough to construct full item definitions. They retain their native hidden
flags; no placeholder item records or ownership grants are introduced.

All 122 native BattlePetSpecies entries have empty Description and SourceText;
the Wago 70938 export has the same empty fields. The native Classic pet card's
OnEnter only opens its source tooltip when sourceText is nonempty. This explains
the missing source tooltip without an account-ownership or Lua runtime failure.
The preceding journal migration restored 64 descriptions and 61 summon-item
sources. The crimson snake's localized description and item-source tooltip
were verified in-game. Exporting the empty native text fields again cannot
supply the missing information.

## Additional collection sources

`2026_11_16_00_hotfixes_collection_sources_70938.sql` adds source text for
61 more native pet species and 139 native mounts, using hotfix push 4050002.
For 36 pets and 115 mounts, an existing item must link through ItemXItemEffect
and ItemEffect to exactly the native summon spell. The remaining 25 pets and
24 mounts show a named summon-spell link. A spell link is explicitly labelled
as such; it is not presented as a vendor, quest or drop location.

All 122 native pet species consequently have source text in the effective
database. Only the previously verified 64 flavour descriptions are supplied;
unverified descriptions are left empty. Five mounts have neither a verified
summon-item source nor a usable spell-name record and are deferred: Mount IDs
2971, 2978, 3112, 3113 and 3114. Native visibility restrictions remain in place.

The migration provides ruRU source text in locale tables. Existing nonempty
sources, descriptions, gameplay fields and account ownership are preserved.
New hotfix rows use the native 70938 record fields. Applying the migration twice
in an isolated schema produced identical results: 200 unique hotfix records
and 200 localized sources, with preexisting gameplay fields unchanged.

Production deployment preserved account ownership and restarted worldserver.
The fresh startup retained 3112 database-error messages, with no new collection
locale errors. The final UI check after deployment was interrupted by the
user's physical Escape key. New-source rendering and filter persistence after
relogin/reload therefore remain unverified; do not describe those checks as
passed. Client files and the Adventure Guide were not changed by this update.

## Separate wardrobe limitation

The Camelot wardrobe override independently calls
`C_TransmogCollection.SetUncollectedShown(false)` whenever it builds the item
filter menu. Changing the general collection CVar does not remove that override.
Full uncollected-appearance browsing therefore needs a separate client UI
change; it cannot be implemented by inserting account ownership rows.

Heirloom catalogue data is empty in the installed build and its Wago CSV export
returns `Table not found`. Preserve native availability checks for unsupported
collections. The appearance-set tab also has native valid-set/class checks.

## Sources

- [Native tab checks, exact 70938 UI source](https://github.com/Gethe/wow-ui-source/blob/bebcb6bf309cf41b41bd74f8ca651e6a105b2676/Interface/AddOns/Blizzard_Collections/Shared/Blizzard_Collections.lua)
- [Classic pet filter](https://github.com/Gethe/wow-ui-source/blob/bebcb6bf309cf41b41bd74f8ca651e6a105b2676/Interface/AddOns/Blizzard_Collections/Classic/Blizzard_PetCollection.lua)
- [Camelot wardrobe override](https://github.com/Gethe/wow-ui-source/blob/bebcb6bf309cf41b41bd74f8ca651e6a105b2676/Interface/AddOns/Blizzard_Collections/Camelot/Blizzard_Wardrobe.lua)
- [Wago Mount export](https://wago.tools/db2/Mount/csv?build=1.60.1.70938)
- [Wago BattlePetSpecies export](https://wago.tools/db2/BattlePetSpecies/csv?build=1.60.1.70938)
- [Wago Toy export](https://wago.tools/db2/Toy/csv?build=1.60.1.70938)
- [Wago TransmogSet export](https://wago.tools/db2/TransmogSet/csv?build=1.60.1.70938)

The pinned native-module restoration in `doc/forever-journal-data.md` supplies
the wardrobe UI change described above. Its restored menu uses the regular
native collection APIs and preferences.
