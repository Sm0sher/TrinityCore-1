# MoshPit Collections

Client addon for WoW Forever 1.60.1 (70938), interface 16001.

Copy this directory to `_forever_/Interface/AddOns/MoshPitCollections` and restart
the client. The wardrobe Filter menu gains Collected and Uncollected checkboxes;
both are enabled by default. Choices persist in account SavedVariables.

Mounts, Pets, Toys and Wardrobe tabs remain visible even when the account has
collected nothing. Mount, pet, toy and appearance-set filters start each UI
session with both collected and uncollected entries enabled. Native filter menus
remain available, including the pet filter that Camelot otherwise hides. Filters
can be changed normally during the session. No global CVar or game files change.

Heirlooms and other unsupported collection types keep their native availability
checks. Appearance sets keep their native class and valid-set checks.

The native Camelot wardrobe override forces uncollected appearances off every
time it builds the filter menu. This addon restores the preferences after that
method runs, preserving the native source filters and localized labels.

Source verified at Blizzard UI mirror commit
[`bebcb6bf309cf41b41bd74f8ca651e6a105b2676` (70938)](https://github.com/Gethe/wow-ui-source/blob/bebcb6bf309cf41b41bd74f8ca651e6a105b2676/Interface/AddOns/Blizzard_Collections/Camelot/Blizzard_Wardrobe.lua).

Wago CSV exports for build 1.60.1.70938 contain 144 mounts, 122 pet species,
22 toys and 9 appearance sets. Their ID sets match the installed DB2 files;
no catalogue import is needed. Counts include entries that native eligibility
filters can exclude for a particular character. Heirloom data is empty locally,
and the corresponding Wago export returns Table not found.

This only changes catalogue visibility. It grants no collectibles and does not
bypass class, slot, source or native eligibility filters. Missing catalogue data
cannot be created by this addon. It does not implement Adventure Guide content.
