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

The toy list remained empty with Collected and Not collected enabled, Usable
only disabled and the World of Warcraft expansion enabled. Selecting all
sources and toggling Not collected off/on did not resolve it. Do not describe
the toy catalogue as fixed merely because its tab is visible.

All 22 native Toy rows have Flags=2; that observation alone does not establish
the flag's meaning. Eight referenced items are absent from decoded ItemSparse,
but three of those are supplied by server hotfixes. The remaining five require
checking client-effective item data: 279471, 279519, 284164, 286203 and 286573.
Missing items alone do not explain why every toy is hidden.

All 122 native BattlePetSpecies entries have empty Description and SourceText;
the Wago 70938 export has the same empty fields. The native Classic pet card's
OnEnter only opens its source tooltip when sourceText is nonempty. This explains
the missing source tooltip without an account-ownership or Lua runtime failure.
Restoring descriptions requires a separately verified content source; exporting
the same empty table again cannot supply them.

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
