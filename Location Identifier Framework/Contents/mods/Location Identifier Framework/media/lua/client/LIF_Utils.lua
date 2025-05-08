local LIFUtils = {}

local function JavaArrayToKeyTable(t)
    local keyTable = {}
    for i = 0, t:size() - 1 do
        local v = t:get(i)
        keyTable[v] = true
    end
    return keyTable
end

local function getModMapPairTable()
    local mapTable = {}

    local activeModIDs = getActivatedMods()
    activeModIDs = JavaArrayToKeyTable(activeModIDs)

    for modID, _ in pairs(activeModIDs) do
        local mapFolders = getMapFoldersForMod(modID)
        if mapFolders and mapFolders:size() > 0 then
            local folderList = {}
            for i = 0, mapFolders:size() - 1 do
                local folder = mapFolders:get(i)
                table.insert(folderList, folder)
            end
            mapTable[modID] = folderList
            -- print("Mod ID enables maps: " .. modID .. " => " .. table.concat(folderList, ", "))
        end
    end

    return mapTable
end

local function getWorldMapBounds(modMapPairs)
    local result = {}

    for modID, mapFolders in pairs(modMapPairs) do
        for _, mapFolder in ipairs(mapFolders) do
            local filePath = "media/maps/" .. mapFolder .. "/worldmap.xml"
            local reader = getModFileReader(modID, filePath, false)

            if reader then
                local lines = {}
                local line = reader:readLine()
                while line do
                    table.insert(lines, line)
                    line = reader:readLine()
                end
                reader:close()

                local xml = table.concat(lines, "\n")

                local minX, minY = math.huge, math.huge
                local maxX, maxY = -math.huge, -math.huge

                for cellBlock, cellX, cellY in xml:gmatch('(<cell x="(%d+)" y="(%d+)">.-</cell>)') do
                    local cellOffsetX = tonumber(cellX) * 300
                    local cellOffsetY = tonumber(cellY) * 300

                    for pointX, pointY in cellBlock:gmatch('<point x="(%d+)" y="(%d+)"') do
                        local worldX = cellOffsetX + tonumber(pointX)
                        local worldY = cellOffsetY + tonumber(pointY)

                        if worldX < minX then minX = worldX end
                        if worldX > maxX then maxX = worldX end
                        if worldY < minY then minY = worldY end
                        if worldY > maxY then maxY = worldY end
                    end
                end

                if minX ~= math.huge then
                    result[mapFolder] = {
                        mod = modID,
                        startX = minX,
                        startY = minY,
                        endX = maxX,
                        endY = maxY,
                    }

                    -- print(string.format(
                    --     "[LIF Debug] Map: %s => Bounds: (minX: %d, minY: %d, maxX: %d, maxY: %d)",
                    --     mapFolder, minX, minY, maxX, maxY
                    -- ))
                else
                    print("[LIF Debug] Map: " .. mapFolder .. " => No valid points found.")
                end
            else
                print("[LIF Debug] Could not read worldmap.xml for map: " .. mapFolder .. " in mod: " .. modID)
            end
        end
    end

    return result
end


function LIFUtils.getMaps()
    local modMapPairs = getModMapPairTable()
    return getWorldMapBounds(modMapPairs)
end

return LIFUtils

--[[
local LIFUtils = require("LIF_Utils")
local maps = LIFUtils.getMaps()
print(maps)

for mapName, data in pairs(maps) do
    print("Map Folder: ", mapName)
    print("Mod ID: ", data.mod)
    print("Bounds: ", string.format("startX: %d, startY: %d, endX: %d, endY: %d", data.startX, data.startY, data.endX, data.endY))
end
]]
