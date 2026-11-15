# MoshPit Collections

Client addon for WoW Forever 1.60.1 (70938), interface 16001.

Copy this directory to `_forever_/Interface/AddOns/MoshPitCollections` and restart
the client. The wardrobe Filter menu gains Collected and Uncollected checkboxes;
both are enabled by default. Choices persist in account SavedVariables.

The native Camelot wardrobe override forces uncollected appearances off every
time it builds the filter menu. This addon restores the preferences after that
method runs, preserving the native source filters and localized labels.

Source verified at Blizzard UI mirror commit
[`bebcb6bf309cf41b41bd74f8ca651e6a105b2676` (70938)](https://github.com/Gethe/wow-ui-source/blob/bebcb6bf309cf41b41bd74f8ca651e6a105b2676/Interface/AddOns/Blizzard_Collections/Camelot/Blizzard_Wardrobe.lua).

This only changes catalogue visibility. It grants no appearances and does not
bypass class, slot, source or native eligibility filters. Missing catalogue data
cannot be created by this addon. It does not implement Adventure Guide content.
