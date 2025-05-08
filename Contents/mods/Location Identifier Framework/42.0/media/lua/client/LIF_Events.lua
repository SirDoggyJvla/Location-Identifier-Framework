local locations = require("LIF_Locations")
local allLocations = locations.AllLocations

local function onGameStart()
    local activatedMods = getActivatedMods()
    for i = 1, #allLocations do
        local location = allLocations[i]
        if (location.mod and activatedMods:contains(location.mod)) or location.isVanilla then
            table.insert(locations.ActivatedLocations, location)
        end
    end
end

Events.OnGameStart.Add(onGameStart)
