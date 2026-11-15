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
