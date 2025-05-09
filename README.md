# 🗺️ Location Identifier Framework (LIF)

**Location Identifier Framework** is a **Project Zomboid** framework designed to help mods easily identify in-game world locations using coordinates. With LIF, you can retrieve structured and detailed information about any known map area, both vanilla and modded, by simply passing X and Y world coordinates.

## 🔍 What It Does

- Provides a **centralized location registry**.
- Allows other mods to call:  
  `getLocation(x, y)`  
   to retrieve structured location data (e.g., name, ID, mod origin).
- Supports **sub-locations**.
- Includes a growing list of over **180+ locations** from **B41**, **B42**, and community maps.

---

## 📚 Available Location Lists

- 🗺️ [View B41 Locations](docs/B41_LOCATIONS.md)
- 🗺️ [View B42 Locations](docs/B42_LOCATIONS.md)

---

## 💡 Using in Your Mod

1. Add **Location Identifier Framework** as a dependency.
2. Use the exposed function:

```lua
local LIF = require("LIF")

-- Get location data from coordinates
local loc = LIF.getLocation(5420, 9450)
print(loc.shortName) -- Outputs: Dixie

-- Get the current location of a player
local playerLoc = LIF.getPlayerLocation(player)
print(playerLoc.longName) -- Outputs: Dixie, KY
```

3. Use `location.id` for region-specific logic in your mod.

---

## 📦 Location Entry Structure

Every location entry in LIF is defined as a Lua table with the following fields:

| Field             | Description                                                                                                         |
| ----------------- | ------------------------------------------------------------------------------------------------------------------- |
| `longName`        | Full name of the location, often includes town and state. <br>**Example:** `"Dixie, KY"`                            |
| `shortName`       | Abbreviated or simplified name used for display or quick reference. <br>**Example:** `"Dixie"`                      |
| `id`              | A lowercase, unique identifier key for the location. Use this for region-specific logic. <br>**Example:** `"dixie"` |
| `mod`             | The mod ID that introduced the location. If the location is part of the base game, this will be `"Vanilla"`         |
| `isVanilla`       | Boolean flag. `true` if the location is from the base game; `false` if it's from a mod map                          |
| `startX` / `endX` | The **X-axis** world grid range that defines the horizontal bounds of the location                                  |
| `startY` / `endY` | The **Y-axis** world grid range that defines the vertical bounds of the location                                    |

> startX and startY point to the north-west corner of the region. endX and endY point to the south-east corner of the region.

---

## 🛠️ Contributing

We welcome contributions! You can help in several ways:

### 🐞 Submit a Bug Report

- [Open a bug issue](https://github.com/Arendameth/Location-Identifier-Framework/issues/new?template=bug_report.yml)

### 📌 Submit a New Location

- [Submit a new location request](https://github.com/Arendameth/Location-Identifier-Framework/issues/new?template=submit_location.yml)
- Or fork the repo and:

  - Add your location to the correct `.lua` file
  - Submit a **Pull Request**

### 🧭 Report Incorrect Coordinates

- [Use the Fix Coordinates template](https://github.com/Arendameth/Location-Identifier-Framework/issues/new?template=fix_location.yml)

---

## 🔧 Current Tasks

- **Fix the B41 Vanilla Locations List**  
  Currently, both B41 and B42 reference the same location data. This is not ideal:
  - Some vanilla locations in B42 don't exist in B41.
  - B41 and B42 vanilla location coordinates need to be double-checked for accuracy.

If you'd like to contribute:

1. **Fork** the repository
2. **Create a branch** for your fixes or additions
3. Update the appropriate `.lua` location files
4. **Submit a Pull Request** with a clear explanation of your changes

> You can also [submit a fix via the coordinate correction template](https://github.com/Arendameth/Location-Identifier-Framework/issues/new?template=fix_location.yml) if you prefer not to work with Git directly.

---

## 🔗 External Resources

- **PZWiki Mod Page:** [Location Identifier Framework on PZWiki](https://pzwiki.net/wiki/Location_Identifier_Framework)
- **Steam Mod Page:** [Location Identifier Framework on Steam](https://steamcommunity.com/sharedfiles/filedetails/?id=3473144811)

---

## 📜 License

This project is licensed under the [MIT License](LICENSE).
