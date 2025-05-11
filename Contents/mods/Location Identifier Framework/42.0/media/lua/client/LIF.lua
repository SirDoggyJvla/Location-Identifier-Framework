local locations = require("LIF_Locations")
local LIF = {}


---Returns the location table of map coordinates from cell coordinates.
---@param cellX any
---@param cellY any
---@return table|nil
function LIF.getCellLocation(cellX, cellY)
    if not cellX or not cellY then return nil end -- imo this is not needed, if the modders send wrong informations, they need to be aware of it by getting an error, because it's their job to check they are using right arguments
    local cellID = cellX .. "_" .. cellY

    local mapID = locations.CellToMap[cellID]
    if not mapID then return nil end

    return locations.Maps[mapID]
end

---Returns the location table of map coordinates.
---@param x number
---@param y number
---@return table|nil
function LIF.getLocation(x, y)
    if not x or not y then return nil end

    local activatedLocations = locations.ActivatedLocations

    for i = 1, #activatedLocations do
        local location = activatedLocations[i]

        if (x >= location.startX and x <= location.endX and y >= location.startY and y <= location.endY) then
            return location
        end
    end

    ---I really don't think an empty table should be returned here. 
    ---This should return nil if there's no informations, or mods will have to constantly check for empty tables, and considering this is a key table it's particularly annoying to check. 
    ---Checking for nil is way way much easier on the other hand.
    ---
    ---I applied the correction to the other functions too.
    return nil
end

---Returns the location table of a player
---@param character IsoPlayer
---@return table|nil
function LIF.getPlayerLocation(character)
    if not character then return nil end

    -- try retrieving from cell coordinates first
    local cell = character:getCell()
    if not cell then return nil end

    local mapInformations = LIF.getCellLocation(cell:getWorldX(), cell:getWorldY())
    if not mapInformations then
        local x, y = character:getX(), character:getY()

        mapInformations = LIF.getLocation(x, y)
    end

    return mapInformations
end

return LIF

--[[
local LIF = require("LIF")
local character = getPlayer()
local location = LIF.getPlayerLocation(character)
local locationName = location.longName
print(locationName)
]]
