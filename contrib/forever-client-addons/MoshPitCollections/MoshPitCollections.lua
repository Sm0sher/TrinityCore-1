local addonName = ...;
local installed = false;

local function GetSettings()
    if type(MoshPitCollectionsSettings) ~= "table" then
        MoshPitCollectionsSettings = {};
    end
    local settings = MoshPitCollectionsSettings;
    if type(settings.collected) ~= "boolean" then
        settings.collected = true;
    end
    if type(settings.uncollected) ~= "boolean" then
        settings.uncollected = true;
    end
    return settings;
end

local function ApplyFilters()
    local settings = GetSettings();
    C_TransmogCollection.SetCollectedShown(settings.collected);
    C_TransmogCollection.SetUncollectedShown(settings.uncollected);
end

local function InstallCatalogues()
    -- Keep the native availability checks for unsupported collection types.
    local validateTab = CollectionsJournal_ValidateTab;
    CollectionsJournal_ValidateTab = function(tabIndex)
        if tabIndex == 1 or tabIndex == 2 or tabIndex == 3 or tabIndex == 5 then
            return true;
        end
        return validateTab(tabIndex);
    end;

    -- Start each UI session with both owned and unowned entries visible.
    -- These APIs filter the catalogue; they do not learn mounts, pets or toys.
    C_MountJournal.SetCollectedFilterSetting(LE_MOUNT_JOURNAL_FILTER_COLLECTED, true);
    C_MountJournal.SetCollectedFilterSetting(LE_MOUNT_JOURNAL_FILTER_NOT_COLLECTED, true);
    C_PetJournal.SetFilterChecked(LE_PET_JOURNAL_FILTER_COLLECTED, true);
    C_PetJournal.SetFilterChecked(LE_PET_JOURNAL_FILTER_NOT_COLLECTED, true);
    C_ToyBox.SetCollectedShown(true);
    C_ToyBox.SetUncollectedShown(true);
    C_TransmogSets.SetBaseSetsFilter(LE_TRANSMOG_SET_FILTER_COLLECTED, true);
    C_TransmogSets.SetBaseSetsFilter(LE_TRANSMOG_SET_FILTER_UNCOLLECTED, true);

    -- Camelot can skip creating this menu when its collected-only CVar is set.
    PetJournal_InitFilterDropdown(PetJournal);
    PetJournal.FilterDropdown:Show();
    CollectionsJournal_CheckAndDisplayTabs();
end

local function Install()
    if installed or not WardrobeCollectionFrame or not C_TransmogCollection
        or type(WardrobeCollectionFrame.InitItemsFilterButtonSetupMenu) ~= "function" then
        return;
    end

    installed = true;
    hooksecurefunc(WardrobeCollectionFrame, "InitItemsFilterButtonSetupMenu", function(self, dropdown, rootDescription)
        -- The native Camelot override resets both filters whenever the menu opens.
        ApplyFilters();
        rootDescription:CreateDivider();
        rootDescription:CreateCheckbox(COLLECTED, function()
            return GetSettings().collected;
        end, function()
            local settings = GetSettings();
            settings.collected = not settings.collected;
            ApplyFilters();
        end);
        rootDescription:CreateCheckbox(NOT_COLLECTED, function()
            return GetSettings().uncollected;
        end, function()
            local settings = GetSettings();
            settings.uncollected = not settings.uncollected;
            ApplyFilters();
        end);
    end);
    ApplyFilters();
    InstallCatalogues();
end

local listener = CreateFrame("Frame");
listener:RegisterEvent("ADDON_LOADED");
listener:SetScript("OnEvent", function(self, event, loadedAddon)
    if loadedAddon == addonName or loadedAddon == "Blizzard_Collections" then
        Install();
        if installed then
            self:UnregisterEvent("ADDON_LOADED");
        end
    end
end);
