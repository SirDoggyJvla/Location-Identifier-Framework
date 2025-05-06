local locations = require("LIF_Locations")
local LIF = {}

---Returns the location table of a certain coordinate
---@param x float
---@param y float
---@return table
function LIF.getLocation(x, y)
    if not x or not y then return {} end

    local activatedLocations = locations.ActivatedLocations

    for i = 1, #activatedLocations do
        local location = activatedLocations[i]

        if (x >= location.startX and x <= location.endX and y >= location.startY and y <= location.endY) then
            return location
        end
    end

    return {}
end

---Returns the location table of a player
---@param character IsoPlayer
---@return table
function LIF.getPlayerLocation(character)
    if not character then return {} end

    local x, y = character:getX(), character:getY()

    return LIF.getLocation(x, y)
end

return LIF

--[[
local LIF = require("LIF")
local character = getPlayer()
local location = LIF.getPlayerLocation(character)
local locationName = location.longName
print(locationName)
]]
