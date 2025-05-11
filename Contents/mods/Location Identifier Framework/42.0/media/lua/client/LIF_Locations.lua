-- **********************************************************************************************************
-- ** Data originally created by Braven. I only modifier them for additional fields. All rights go to him. **
-- **********************************************************************************************************

---requirements
--caching
local separator = getFileSeparator()




local LIFLocations = {}
LIFLocations.ActivatedLocations = {}
LIFLocations.AllLocations =
{
    --VANILLA SUB-LOCATIONS (They should take precedence before main locations)
    {
        longName = "Bunker, March Ridge, KY",
        shortName = "March Ridge Bunker",
        id = "marchridge_bunker",
        mod = "Vanilla",
        isVanilla = true,
        startX = 9902,
        endX = 9950,
        startY = 12589,
        endY = 12662,
    },

    -- VANILLA LOCATION
    {
        longName = "Dixie, KY",
        shortName = "Dixie",
        id = "dixie",
        mod = "Vanilla",
        isVanilla = true,
        startX = 5400,
        endX = 5700,
        startY = 9300,
        endY = 9900,
    },
    {
        longName = "Doe Valley, KY",
        shortName = "Doe Valley",
        id = "doevalley",
        mod = "Vanilla",
        isVanilla = true,
        startX = 6600,
        endX = 6900,
        startY = 9900,
        endY = 10200,
    },
    {
        longName = "Fallas Lake, KY",
        shortName = "Fallas Lake",
        id = "fallaslake",
        mod = "Vanilla",
        isVanilla = true,
        startX = 6900,
        endX = 7500,
        startY = 8100,
        endY = 8700,
    },
    {
        longName = "Louisville, KY",
        shortName = "Louisville",
        id = "louisville",
        mod = "Vanilla",
        isVanilla = true,
        startX = 11700,
        endX = 14100,
        startY = 1200,
        endY = 4500,
    },
    {
        longName = "Muldraugh, KY",
        shortName = "Muldraugh",
        id = "muldraugh",
        mod = "Vanilla",
        isVanilla = true,
        startX = 10500,
        endX = 11100,
        startY = 9000,
        endY = 10800,
    },
    {
        longName = "March Ridge, KY",
        shortName = "March Ridge",
        id = "marchridge",
        mod = "Vanilla",
        isVanilla = true,
        startX = 9600,
        endX = 10500,
        startY = 12300,
        endY = 13200,
    },
    {
        longName = "Riverside, KY",
        shortName = "Riverside",
        id = "riverside",
        mod = "Vanilla",
        isVanilla = true,
        startX = 5700,
        endX = 6900,
        startY = 5100,
        endY = 5700,
    },
    {
        longName = "Riverside Trailer Park, KY",
        shortName = "Riverside Trailer Park",
        id = "riversidetrailerpark",
        mod = "Vanilla",
        isVanilla = true,
        startX = 5100,
        endX = 5400,
        startY = 5700,
        endY = 6300,
    },
    {
        longName = "Rosewood, KY",
        shortName = "Rosewood",
        id = "rosewood",
        mod = "Vanilla",
        isVanilla = true,
        startX = 7900,
        endX = 8700,
        startY = 11100,
        endY = 12300,
    },
    {
        longName = "Kentucky State Prison, KY",
        shortName = "Kentucky State Prison",
        id = "kentuckystateprison",
        mod = "Vanilla",
        isVanilla = true,
        startX = 7500,
        endX = 7840,
        startY = 11800,
        endY = 12000,
    },
    {
        longName = "Valley Station, KY",
        shortName = "Valley Station",
        id = "valleystation",
        mod = "Vanilla",
        isVanilla = true,
        startX = 12300,
        endX = 13200,
        startY = 4500,
        endY = 6300,
    },
    {
        longName = "West Point, KY",
        shortName = "West Point",
        id = "westpoint",
        mod = "Vanilla",
        isVanilla = true,
        startX = 10800,
        endX = 12600,
        startY = 6600,
        endY = 7500,
    },
    {
        longName = "Echo Creek, KY",
        shortName = "Echo Creek",
        id = "echocreek",
        mod = "Vanilla",
        isVanilla = true,
        startX = 3365,
        endX = 3894,
        startY = 10854,
        endY = 11394,
    },
    {
        longName = "Ekron, KY",
        shortName = "Ekron",
        id = "ekron",
        mod = "Vanilla",
        isVanilla = true,
        startX = 1,
        endX = 1150,
        startY = 9221,
        endY = 10477,
    },
    {
        longName = "Scenic Grove Mobile Home Park, KY",
        shortName = "Scenic Grove Mobile Home Park",
        id = "scenicgrovemobilehomepark",
        mod = "Vanilla",
        isVanilla = true,
        startX = 5248,
        endX = 5634,
        startY = 5840,
        endY = 6140,
    },
    {
        longName = "Bradenburg, KY",
        shortName = "Bradenburg",
        id = "bradenburg",
        mod = "Vanilla",
        isVanilla = true,
        startX = 798,
        endX = 3090,
        startY = 5115,
        endY = 7484,
    },
    {
        longName = "Irvington, KY",
        shortName = "Irvington",
        id = "irvington",
        mod = "Vanilla",
        isVanilla = true,
        startX = 822,
        endX = 3881,
        startY = 12557,
        endY = 15044,
    },

    -- MODDED
    {
        longName = "Ashenwood, KY",
        shortName = "Ashenwood",
        id = "ashenwood",
        mod = "Ashenwood",
        isVanilla = false,
        startX = 11400,
        endX = 11700,
        startY = 11100,
        endY = 11700,
    },
    {
        longName = "Bedford Falls, KY",
        shortName = "Bedford Falls",
        id = "bedfordfalls",
        mod = "BedfordFalls",
        isVanilla = false,
        startX = 12900,
        endX = 15000,
        startY = 9900,
        endY = 11400,
    },
    {
        longName = "Big Bear Lake, KY",
        shortName = "Big Bear Lake",
        id = "bigbearlake",
        mod = "BBL",
        isVanilla = false,
        startX = 4800,
        endX = 7200,
        startY = 6900,
        endY = 7800,
    },
    {
        longName = "Blackwood, KY",
        shortName = "Blackwood",
        id = "blackwood",
        mod = "Blackwood",
        isVanilla = false,
        startX = 7800,
        endX = 8100,
        startY = 10500,
        endY = 10800,
    },
    {
        longName = "Cedar Hill, KY",
        shortName = "Cedar Hill",
        id = "cedarhill",
        mod = "CedarHill",
        isVanilla = false,
        startX = 4800,
        endX = 5100,
        startY = 5700,
        endY = 6000,
    },
    {
        longName = "Chestown, KY",
        shortName = "Chestown",
        id = "chestown",
        mod = "Chestown",
        isVanilla = false,
        startX = 4500,
        endX = 4800,
        startY = 6600,
        endY = 6900,
    },
    {
        longName = "Elysium Island, KY",
        shortName = "Elysium Island",
        id = "elysiumisland",
        mod = "Elysium_Island",
        isVanilla = false,
        startX = 10500,
        endX = 10800,
        startY = 6600,
        endY = 6900,
    },
    {
        longName = "Fort Redstone, KY",
        shortName = "Fort Redstone",
        id = "fortredstone",
        mod = "FORTREDSTONE",
        isVanilla = false,
        startX = 5400,
        endX = 6000,
        startY = 11100,
        endY = 12300,
    },
    {
        longName = "Fort Rock Ridge, KY",
        shortName = "Fort Rock Ridge",
        id = "fortrockridge",
        mod = "Fort Rock Ridge",
        isVanilla = false,
        startX = 6600,
        endX = 7200,
        startY = 6000,
        endY = 6300,
    },
    {
        longName = "Grapeseed, KY",
        shortName = "Grapeseed",
        id = "grapeseed",
        mod = "Grapeseed",
        isVanilla = false,
        startX = 7200,
        endX = 7500,
        startY = 11100,
        endY = 11400,
    },
    {
        longName = "Greenleaf, KY",
        shortName = "Greenleaf",
        id = "greenleaf",
        mod = "Greenleaf",
        isVanilla = false,
        startX = 6300,
        endX = 6600,
        startY = 10200,
        endY = 10500,
    },
    {
        longName = "Kingsmouth, KY",
        shortName = "Kingsmouth",
        id = "kingsmouth",
        mod = "KingsmouthKY",
        isVanilla = false,
        startX = 3000,
        endX = 4200,
        startY = 4200,
        endY = 6800,
    },
    {
        longName = "Lake Ivy Township, KY",
        shortName = "Lake Ivy Township",
        id = "lakeivytownship",
        mod = "lakeivytownship",
        isVanilla = false,
        startX = 8700,
        endX = 9300,
        startY = 9600,
        endY = 10500,
    },
    {
        longName = "Petroville, KY",
        shortName = "Petroville",
        id = "petroville",
        mod = "Petroville",
        isVanilla = false,
        startX = 10500,
        endX = 11100,
        startY = 11700,
        endY = 12600,
    },
    {
        longName = "Pitstop, KY",
        shortName = "Pitstop",
        id = "pitstop",
        mod = "Pitstop",
        isVanilla = false,
        startX = 9600,
        endX = 9900,
        startY = 11100,
        endY = 11400,
    },
    {
        longName = "Raven Creek, KY",
        shortName = "Raven Creek",
        id = "ravencreek",
        mod = "RavenCreek",
        isVanilla = false,
        startX = 3000,
        endX = 5400,
        startY = 11100,
        endY = 13500,
    },
    {
        longName = "Seaside, KY",
        shortName = "Seaside",
        id = "seaside",
        mod = "Seaside",
        isVanilla = false,
        startX = 12300,
        endX = 12600,
        startY = 900,
        endY = 1200,
    },
    {
        longName = "The Frigate, KY",
        shortName = "The Frigate",
        id = "thefrigate",
        mod = "The Frigate",
        isVanilla = false,
        startX = 12300,
        endX = 12600,
        startY = 6300,
        endY = 6600,
    },
    {
        longName = "Utopia, KY",
        shortName = "Utopia",
        id = "utopia",
        mod = "Utopia",
        isVanilla = false,
        startX = 7200,
        endX = 7500,
        startY = 9600,
        endY = 9900,
    },
    {
        longName = "Fort Knox, KY",
        shortName = "Fort Knox",
        id = "fortknox",
        mod = "FortKnoxLinked",
        isVanilla = false,
        startX = 12300,
        endX = 15899,
        startY = 13200,
        endY = 17999
    },
    {
        longName = "Road between Fort Knox and Bedford Falls, KY",
        shortName = "Road between Fort Knox and Bedford Falls",
        id = "roadbetweenfortknoxandbedfordfalls",
        mod = "FortKnoxRoad",
        isVanilla = false,
        startX = 13500,
        endX = 13799,
        startY = 11400,
        endY = 13199
    },
    {
        longName = "Road from Monmouth County to Bedford Falls, KY",
        shortName = "Road from Monmouth County to Bedford Falls",
        id = "roadfrommonmouthcountytobedfordfalls",
        mod = "RfMCtBF_addon",
        isVanilla = false,
        startX = 12900,
        endX = 13499,
        startY = 8100,
        endY = 8399
    },
    {
        longName = "Monmouth County, KY",
        shortName = "Monmouth County",
        id = "monmouthcounty",
        mod = "MonmouthCounty_new",
        isVanilla = false,
        startX = 11700,
        endX = 12899,
        startY = 7800,
        endY = 8999
    },
    {
        longName = "Addams Family Mansion, KY",
        shortName = "Addams Family Mansion",
        id = "addamsfamilymansion",
        mod = "AddamsMansion",
        isVanilla = false,
        startX = 11100,
        endX = 11399,
        startY = 9300,
        endY = 9599
    },
    {
        longName = "Bendy's Bunker, KY",
        shortName = "Bendy's Bunker",
        id = "bendysbunker",
        mod = "Bendys Bunker v2",
        isVanilla = false,
        startX = 6600,
        endX = 6899,
        startY = 8100,
        endY = 8399
    },
    {
        longName = "Betsy's Farm, KY",
        shortName = "Betsy's Farm",
        id = "betsysfarm",
        mod = "DJBetsysFarm",
        isVanilla = false,
        startX = 9000,
        endX = 9299,
        startY = 9300,
        endY = 9599
    },
    {
        longName = "Breakpoint, KY",
        shortName = "Breakpoint",
        id = "breakpoint",
        mod = "Breakpoint",
        isVanilla = false,
        startX = 12600,
        endX = 12899,
        startY = 4800,
        endY = 5099
    },
    {
        longName = "Bunker = Day of the Dead, KY",
        shortName = "Bunker = Day of the Dead",
        id = "bunkerdayofthedead",
        mod = "BunkerDayOfTheDead",
        isVanilla = false,
        startX = 6000,
        endX = 6299,
        startY = 10500,
        endY = 10799
    },
    {
        longName = "Bunker = Last Minute Prepper, KY",
        shortName = "Bunker = Last Minute Prepper",
        id = "bunkerlastminuteprepper",
        mod = "LastMinutePrepperReloaded",
        isVanilla = false,
        startX = 13200,
        endX = 13499,
        startY = 3600,
        endY = 3899
    },
    {
        longName = "C.O.N. Research & Testing Facility, KY",
        shortName = "C.O.N. Research & Testing Facility",
        id = "conresearchtestingfacility",
        mod = "CONRTF",
        isVanilla = false,
        startX = 9300,
        endX = 9599,
        startY = 12600,
        endY = 12899
    },
    {
        longName = "Canvasback Studios, KY",
        shortName = "Canvasback Studios",
        id = "canvasbackstudios",
        mod = "Canvasback Studios",
        isVanilla = false,
        startX = 9900,
        endX = 10199,
        startY = 10200,
        endY = 10499
    },
    {
        longName = "Chernaville, KY",
        shortName = "Chernaville",
        id = "chernaville",
        mod = "Chernaville",
        isVanilla = false,
        startX = 9600,
        endX = 9899,
        startY = 10200,
        endY = 10799
    },
    {
        longName = "Chinatown, KY",
        shortName = "Chinatown",
        id = "chinatown",
        mod = "Chinatown",
        isVanilla = false,
        startX = 11100,
        endX = 11399,
        startY = 8700,
        endY = 8999
    },
    {
        longName = "Chinatown Expansion, KY",
        shortName = "Chinatown Expansion",
        id = "chinatownexpansion",
        mod = "Chinatown expansion",
        isVanilla = false,
        startX = 10800,
        endX = 11099,
        startY = 8400,
        endY = 8999
    },
    {
        longName = "Cigaro Gated Community, KY",
        shortName = "Cigaro Gated Community",
        id = "cigarogatedcommunity",
        mod = "CigaroHouse",
        isVanilla = false,
        startX = 7200,
        endX = 7499,
        startY = 5400,
        endY = 5699
    },
    {
        longName = "Ciudad Madriguera, KY",
        shortName = "Ciudad Madriguera",
        id = "ciudadmadriguera",
        mod = "CM_Rivendel",
        isVanilla = false,
        startX = 10500,
        endX = 10799,
        startY = 11100,
        endY = 11399
    },
    {
        longName = "Corn Farm, KY",
        shortName = "Corn Farm",
        id = "cornfarm",
        mod = "FarmHouseMatrioshka",
        isVanilla = false,
        startX = 9600,
        endX = 9899,
        startY = 7500,
        endY = 7799
    },
    {
        longName = "Coryerdon Over the River Road, KY",
        shortName = "Coryerdon Over the River Road",
        id = "coryerdonovertheriverroad",
        mod = "Over the River by JW-Corydondoner",
        isVanilla = false,
        startX = 9900,
        endX = 10199,
        startY = 11100,
        endY = 11399
    },
    {
        longName = "Cotton Candy Mine, KY",
        shortName = "Cotton Candy Mine",
        id = "cottoncandymine",
        mod = "CottonCandyMine",
        isVanilla = false,
        startX = 9600,
        endX = 9899,
        startY = 5700,
        endY = 5999
    },
    {
        longName = "Crisis at Raccoon Tunnel, KY",
        shortName = "Crisis at Raccoon Tunnel",
        id = "crisisatraccoontunnel",
        mod = "CrisisAtRaccoonTunnel",
        isVanilla = false,
        startX = 10800,
        endX = 10999,
        startY = 3300,
        endY = 3499
    },
    {
        longName = "Croft Manor, KY",
        shortName = "Croft Manor",
        id = "croftmanor",
        mod = "CroftManor",
        isVanilla = false,
        startX = 11400,
        endX = 11599,
        startY = 9900,
        endY = 10099
    },
    {
        longName = "D.E.R.P. Research Facility, KY",
        shortName = "D.E.R.P. Research Facility",
        id = "derpresearchfacility",
        mod = "DERP",
        isVanilla = false,
        startX = 10500,
        endX = 10699,
        startY = 10800,
        endY = 10999
    },
    {
        longName = "Dancin' Donuts, KY",
        shortName = "Dancin' Donuts",
        id = "dancindonuts",
        mod = "DancinDonuts",
        isVanilla = false,
        startX = 13500,
        endX = 13799,
        startY = 5400,
        endY = 5599
    },
    {
        longName = "Dead Pool Lake, KY",
        shortName = "Dead Pool Lake",
        id = "deadpoollake",
        mod = "DeadPool",
        isVanilla = false,
        startX = 6900,
        endX = 7199,
        startY = 4500,
        endY = 4699
    },
    {
        longName = "DeathCreek, KY",
        shortName = "DeathCreek",
        id = "deathcreek",
        mod = "DeathCreek",
        isVanilla = false,
        startX = 13200,
        endX = 13399,
        startY = 7800,
        endY = 7999
    },
    {
        longName = "Desert City, KY",
        shortName = "Desert City",
        id = "desertcity",
        mod = "DesertCity",
        isVanilla = false,
        startX = 12900,
        endX = 13199,
        startY = 4500,
        endY = 4799
    },
    {
        longName = "Dinkletown, KY",
        shortName = "Dinkletown",
        id = "dinkletown",
        mod = "Dinkletown",
        isVanilla = false,
        startX = 12000,
        endX = 12199,
        startY = 10500,
        endY = 10799
    },
    {
        longName = "Dirtbelt Raceway, KY",
        shortName = "Dirtbelt Raceway",
        id = "dirtbeltraceway",
        mod = "Dirtbelt_Raceway",
        isVanilla = false,
        startX = 6900,
        endX = 7199,
        startY = 9900,
        endY = 10199
    },
    {
        longName = "Dudly Hargraves Shooting Range, KY",
        shortName = "Dudly Hargraves Shooting Range",
        id = "dudlyhargravesshootingrange",
        mod = "DudlyHargraves",
        isVanilla = false,
        startX = 13500,
        endX = 13799,
        startY = 9900,
        endY = 10199
    },
    {
        longName = "Eastsville, KY",
        shortName = "Eastsville",
        id = "eastsville",
        mod = "Eastsville",
        isVanilla = false,
        startX = 7500,
        endX = 7799,
        startY = 12300,
        endY = 12599
    },
    {
        longName = "Elysium, KY",
        shortName = "Elysium",
        id = "elysium",
        mod = "Elysium",
        isVanilla = false,
        startX = 10500,
        endX = 10699,
        startY = 4200,
        endY = 4399
    },
    {
        longName = "Epic Compound, KY",
        shortName = "Epic Compound",
        id = "epiccompound",
        mod = "Epic_Compound",
        isVanilla = false,
        startX = 6600,
        endX = 6899,
        startY = 12300,
        endY = 12599
    },
    {
        longName = "Fairfield, KY",
        shortName = "Fairfield",
        id = "fairfield",
        mod = "Fairfield",
        isVanilla = false,
        startX = 8100,
        endX = 8399,
        startY = 9300,
        endY = 9599
    },
    {
        longName = "Fallow Hills, KY",
        shortName = "Fallow Hills",
        id = "fallowhills",
        mod = "FallowHills",
        isVanilla = false,
        startX = 9900,
        endX = 10199,
        startY = 7500,
        endY = 7799
    },
    {
        longName = "Fisherville, KY",
        shortName = "Fisherville",
        id = "fisherville",
        mod = "Fisherville",
        isVanilla = false,
        startX = 12300,
        endX = 12599,
        startY = 5100,
        endY = 5399
    },
    {
        longName = "Foxton, KY",
        shortName = "Foxton",
        id = "foxton",
        mod = "Foxton",
        isVanilla = false,
        startX = 11400,
        endX = 11599,
        startY = 11700,
        endY = 11999
    },
    {
        longName = "Frank Lloyd Ranch, KY",
        shortName = "Frank Lloyd Ranch",
        id = "franklloydranch",
        mod = "FrankLloydWright",
        isVanilla = false,
        startX = 12900,
        endX = 13099,
        startY = 6300,
        endY = 6599
    },
    {
        longName = "Friden, KY",
        shortName = "Friden",
        id = "friden",
        mod = "Friden",
        isVanilla = false,
        startX = 4500,
        endX = 4799,
        startY = 11100,
        endY = 11299
    },
    {
        longName = "Frosty Pines Resort, KY",
        shortName = "Frosty Pines Resort",
        id = "frostypinesresort",
        mod = "FrostyPinesResort",
        isVanilla = false,
        startX = 6900,
        endX = 7099,
        startY = 12900,
        endY = 13099
    },
    {
        longName = "Graham Residence, KY",
        shortName = "Graham Residence",
        id = "grahamresidence",
        mod = "GrahamResidence",
        isVanilla = false,
        startX = 12300,
        endX = 12499,
        startY = 6000,
        endY = 6199
    },
    {
        longName = "Gravelands, KY",
        shortName = "Gravelands",
        id = "gravelands",
        mod = "Gravelands",
        isVanilla = false,
        startX = 11700,
        endX = 11999,
        startY = 4500,
        endY = 4799
    },
    {
        longName = "Greenbriar Acres, KY",
        shortName = "Greenbriar Acres",
        id = "greenbriaracres",
        mod = "GreenbriarAcres",
        isVanilla = false,
        startX = 8100,
        endX = 8399,
        startY = 10500,
        endY = 10799
    },
    {
        longName = "Greenhill, KY",
        shortName = "Greenhill",
        id = "greenhill",
        mod = "Greenhill",
        isVanilla = false,
        startX = 11100,
        endX = 11299,
        startY = 8100,
        endY = 8399
    },
    {
        longName = "Green Valley, KY",
        shortName = "Green Valley",
        id = "greenvalley",
        mod = "Green_Valley",
        isVanilla = false,
        startX = 10800,
        endX = 10999,
        startY = 6900,
        endY = 7099
    },
    {
        longName = "Greenwood Cemetery, KY",
        shortName = "Greenwood Cemetery",
        id = "greenwoodcemetery",
        mod = "GreenwoodCemetery",
        isVanilla = false,
        startX = 7800,
        endX = 8099,
        startY = 11700,
        endY = 11999
    },
    {
        longName = "Grizzlys Bar & Grill, KY",
        shortName = "Grizzlys Bar & Grill",
        id = "grizzlysbargrill",
        mod = "GrizzlysBarAndGrill",
        isVanilla = false,
        startX = 10800,
        endX = 10999,
        startY = 7800,
        endY = 7999
    },
    {
        longName = "Grove Street Apartments, KY",
        shortName = "Grove Street Apartments",
        id = "grovestreetapartments",
        mod = "GroveStreet",
        isVanilla = false,
        startX = 7200,
        endX = 7399,
        startY = 8400,
        endY = 8599
    },
    {
        longName = "Havendale, KY",
        shortName = "Havendale",
        id = "havendale",
        mod = "Havendale",
        isVanilla = false,
        startX = 12000,
        endX = 12199,
        startY = 6300,
        endY = 6499
    },
    {
        longName = "Helms Deep, KY",
        shortName = "Helms Deep",
        id = "helmsdeep",
        mod = "HelmsDeep",
        isVanilla = false,
        startX = 9000,
        endX = 9299,
        startY = 11700,
        endY = 11999
    },
    {
        longName = "Hidden Springs, KY",
        shortName = "Hidden Springs",
        id = "hiddensprings",
        mod = "HiddenSprings",
        isVanilla = false,
        startX = 9000,
        endX = 9299,
        startY = 6000,
        endY = 6199
    },
    {
        longName = "Highland Park, KY",
        shortName = "Highland Park",
        id = "highlandpark",
        mod = "HighlandPark",
        isVanilla = false,
        startX = 12600,
        endX = 12799,
        startY = 6900,
        endY = 7099
    },
    {
        longName = "Hillside, KY",
        shortName = "Hillside",
        id = "hillside",
        mod = "Hillside",
        isVanilla = false,
        startX = 7800,
        endX = 8099,
        startY = 6600,
        endY = 6799
    },
    {
        longName = "Hobbiton, KY",
        shortName = "Hobbiton",
        id = "hobbiton",
        mod = "Hobbiton",
        isVanilla = false,
        startX = 11400,
        endX = 11599,
        startY = 7800,
        endY = 7999
    },
    {
        longName = "Horse Ranch, KY",
        shortName = "Horse Ranch",
        id = "horseranch",
        mod = "HorseRanch",
        isVanilla = false,
        startX = 6900,
        endX = 7099,
        startY = 8700,
        endY = 8899
    },
    {
        longName = "Hudson River Valley, KY",
        shortName = "Hudson River Valley",
        id = "hudsonrivervalley",
        mod = "HudsonRiverValley",
        isVanilla = false,
        startX = 11400,
        endX = 11599,
        startY = 4500,
        endY = 4699
    },
    {
        longName = "Ironforge, KY",
        shortName = "Ironforge",
        id = "ironforge",
        mod = "Ironforge",
        isVanilla = false,
        startX = 9900,
        endX = 10099,
        startY = 12900,
        endY = 13099
    },
    {
        longName = "Jade Helm, KY",
        shortName = "Jade Helm",
        id = "jadehelm",
        mod = "JadeHelm",
        isVanilla = false,
        startX = 11700,
        endX = 11999,
        startY = 10500,
        endY = 10799
    },
    {
        longName = "Lake Galway, KY",
        shortName = "Lake Galway",
        id = "lakegalway",
        mod = "LakeGalway",
        isVanilla = false,
        startX = 11100,
        endX = 11399,
        startY = 11100,
        endY = 11399
    },
    {
        longName = "Lakeside Cabins, KY",
        shortName = "Lakeside Cabins",
        id = "lakesidecabins",
        mod = "LakesideCabins",
        isVanilla = false,
        startX = 10200,
        endX = 10399,
        startY = 11400,
        endY = 11599
    },
    {
        longName = "Lakeview Hotel, KY",
        shortName = "Lakeview Hotel",
        id = "lakeviewhotel",
        mod = "LakeviewHotel",
        isVanilla = false,
        startX = 12600,
        endX = 12799,
        startY = 7800,
        endY = 7999
    },
    {
        longName = "Layton Lake, KY",
        shortName = "Layton Lake",
        id = "laytonlake",
        mod = "LaytonLake",
        isVanilla = false,
        startX = 8100,
        endX = 8399,
        startY = 11100,
        endY = 11399
    },
    {
        longName = "Leah's Landing, KY",
        shortName = "Leah's Landing",
        id = "leahslanding",
        mod = "LeahsLanding",
        isVanilla = false,
        startX = 11400,
        endX = 11599,
        startY = 12300,
        endY = 12599
    },
    {
        longName = "Leesburg, KY",
        shortName = "Leesburg",
        id = "leesburg",
        mod = "Leesburg",
        isVanilla = false,
        startX = 10200,
        endX = 10399,
        startY = 9900,
        endY = 10099
    },
    {
        longName = "Lemoyne, KY",
        shortName = "Lemoyne",
        id = "lemoyne",
        mod = "Lemoyne",
        isVanilla = false,
        startX = 12600,
        endX = 12799,
        startY = 4200,
        endY = 4399
    },
    {
        longName = "Lighthouse Point, KY",
        shortName = "Lighthouse Point",
        id = "lighthousepoint",
        mod = "LighthousePoint",
        isVanilla = false,
        startX = 12900,
        endX = 13099,
        startY = 6000,
        endY = 6199
    },
    {
        longName = "Lillysville, KY",
        shortName = "Lillysville",
        id = "lillysville",
        mod = "Lillysville",
        isVanilla = false,
        startX = 13200,
        endX = 13399,
        startY = 6000,
        endY = 6199
    },
    {
        longName = "Little Creek, KY",
        shortName = "Little Creek",
        id = "littlecreek",
        mod = "LittleCreek",
        isVanilla = false,
        startX = 6900,
        endX = 7099,
        startY = 9000,
        endY = 9199
    },
    {
        longName = "Little Hope, KY",
        shortName = "Little Hope",
        id = "littlehope",
        mod = "LittleHope",
        isVanilla = false,
        startX = 10800,
        endX = 10999,
        startY = 11100,
        endY = 11299
    },
    {
        longName = "Lost Lakes, KY",
        shortName = "Lost Lakes",
        id = "lostlakes",
        mod = "LostLakes",
        isVanilla = false,
        startX = 12300,
        endX = 12599,
        startY = 8700,
        endY = 8899
    },
    {
        longName = "Lost Village, KY",
        shortName = "Lost Village",
        id = "lostvillage",
        mod = "LostVillage",
        isVanilla = false,
        startX = 12600,
        endX = 12799,
        startY = 11700,
        endY = 11999
    },
    {
        longName = "Lucky Landing, KY",
        shortName = "Lucky Landing",
        id = "luckylanding",
        mod = "LuckyLanding",
        isVanilla = false,
        startX = 9600,
        endX = 9799,
        startY = 5100,
        endY = 5299
    },
    {
        longName = "Lynncreek, KY",
        shortName = "Lynncreek",
        id = "lynncreek",
        mod = "Lynncreek",
        isVanilla = false,
        startX = 10200,
        endX = 10399,
        startY = 7500,
        endY = 7799
    },
    {
        longName = "Malden, KY",
        shortName = "Malden",
        id = "malden",
        mod = "Malden",
        isVanilla = false,
        startX = 11100,
        endX = 11399,
        startY = 4500,
        endY = 4699
    },
    {
        longName = "Maple Ridge, KY",
        shortName = "Maple Ridge",
        id = "mapleridge",
        mod = "MapleRidge",
        isVanilla = false,
        startX = 8700,
        endX = 8899,
        startY = 10500,
        endY = 10799
    },
    {
        longName = "Mason's Point, KY",
        shortName = "Mason's Point",
        id = "masonspoint",
        mod = "MasonsPoint",
        isVanilla = false,
        startX = 7800,
        endX = 7999,
        startY = 6000,
        endY = 6199
    },
    {
        longName = "Meadowview, KY",
        shortName = "Meadowview",
        id = "meadowview",
        mod = "Meadowview",
        isVanilla = false,
        startX = 7500,
        endX = 7699,
        startY = 10800,
        endY = 10999
    },
    {
        longName = "Melody Acres, KY",
        shortName = "Melody Acres",
        id = "melodyacres",
        mod = "MelodyAcres",
        isVanilla = false,
        startX = 10800,
        endX = 10999,
        startY = 12900,
        endY = 13099
    },
    {
        longName = "Misty Falls, KY",
        shortName = "Misty Falls",
        id = "mistyfalls",
        mod = "MistyFalls",
        isVanilla = false,
        startX = 12000,
        endX = 12199,
        startY = 10200,
        endY = 10399
    },
    {
        longName = "Misty Hollow, KY",
        shortName = "Misty Hollow",
        id = "mistyhollow",
        mod = "MistyHollow",
        isVanilla = false,
        startX = 10200,
        endX = 10399,
        startY = 9900,
        endY = 10099
    },
    {
        longName = "Moonlight Bay, KY",
        shortName = "Moonlight Bay",
        id = "moonlightbay",
        mod = "MoonlightBay",
        isVanilla = false,
        startX = 9900,
        endX = 10199,
        startY = 12900,
        endY = 13099
    },
    {
        longName = "Morgantown, KY",
        shortName = "Morgantown",
        id = "morgantown",
        mod = "Morgantown",
        isVanilla = false,
        startX = 6900,
        endX = 7099,
        startY = 8400,
        endY = 8599
    },
    {
        longName = "Mount Autumn, KY",
        shortName = "Mount Autumn",
        id = "mountautumn",
        mod = "MountAutumn",
        isVanilla = false,
        startX = 11400,
        endX = 11599,
        startY = 9900,
        endY = 10099
    },
    {
        longName = "Mountain Shadows, KY",
        shortName = "Mountain Shadows",
        id = "mountainshadows",
        mod = "MountainShadows",
        isVanilla = false,
        startX = 8700,
        endX = 8899,
        startY = 6000,
        endY = 6199
    },
    {
        longName = "Nashville, KY",
        shortName = "Nashville",
        id = "nashville",
        mod = "Nashville",
        isVanilla = false,
        startX = 9000,
        endX = 9299,
        startY = 6300,
        endY = 6499
    },
    {
        longName = "Newport, KY",
        shortName = "Newport",
        id = "newport",
        mod = "Newport",
        isVanilla = false,
        startX = 8700,
        endX = 8899,
        startY = 10200,
        endY = 10399
    },
    {
        longName = "Nightshade Mansion, KY",
        shortName = "Nightshade Mansion",
        id = "nightshademansion",
        mod = "NightshadeMansion",
        isVanilla = false,
        startX = 11700,
        endX = 11899,
        startY = 6300,
        endY = 6499
    },
    {
        longName = "Northbridge, KY",
        shortName = "Northbridge",
        id = "northbridge",
        mod = "Northbridge",
        isVanilla = false,
        startX = 7200,
        endX = 7399,
        startY = 11400,
        endY = 11599
    },
    {
        longName = "Northpoint, KY",
        shortName = "Northpoint",
        id = "northpoint",
        mod = "Northpoint",
        isVanilla = false,
        startX = 10800,
        endX = 10999,
        startY = 7500,
        endY = 7699
    },
    {
        longName = "Oakridge, KY",
        shortName = "Oakridge",
        id = "oakridge",
        mod = "Oakridge",
        isVanilla = false,
        startX = 11700,
        endX = 11899,
        startY = 8100,
        endY = 8299
    },
    {
        longName = "Oceanview, KY",
        shortName = "Oceanview",
        id = "oceanview",
        mod = "Oceanview",
        isVanilla = false,
        startX = 7200,
        endX = 7399,
        startY = 11100,
        endY = 11399
    },
    {
        longName = "Old Town, KY",
        shortName = "Old Town",
        id = "oldtown",
        mod = "OldTown",
        isVanilla = false,
        startX = 11400,
        endX = 11599,
        startY = 8400,
        endY = 8599
    },
    {
        longName = "Overlook, KY",
        shortName = "Overlook",
        id = "overlook",
        mod = "Overlook",
        isVanilla = false,
        startX = 11400,
        endX = 11599,
        startY = 6000,
        endY = 6199
    },
    {
        longName = "Oxford, KY",
        shortName = "Oxford",
        id = "oxford",
        mod = "Oxford",
        isVanilla = false,
        startX = 12300,
        endX = 12499,
        startY = 7800,
        endY = 7999
    },
    {
        longName = "Pacific Bay, KY",
        shortName = "Pacific Bay",
        id = "pacificbay",
        mod = "PacificBay",
        isVanilla = false,
        startX = 9900,
        endX = 10099,
        startY = 5100,
        endY = 5299
    },
    {
        longName = "Palisades, KY",
        shortName = "Palisades",
        id = "palisades",
        mod = "Palisades",
        isVanilla = false,
        startX = 12300,
        endX = 12499,
        startY = 11700,
        endY = 11999
    },
    {
        longName = "Palm Grove, KY",
        shortName = "Palm Grove",
        id = "palmgrove",
        mod = "PalmGrove",
        isVanilla = false,
        startX = 9000,
        endX = 9199,
        startY = 7200,
        endY = 7399
    },
    {
        longName = "Paradise Hills, KY",
        shortName = "Paradise Hills",
        id = "paradisehills",
        mod = "ParadiseHills",
        isVanilla = false,
        startX = 12600,
        endX = 12799,
        startY = 9900,
        endY = 10099
    },
    {
        longName = "Pebblebrook, KY",
        shortName = "Pebblebrook",
        id = "pebblebrook",
        mod = "Pebblebrook",
        isVanilla = false,
        startX = 7500,
        endX = 7699,
        startY = 10500,
        endY = 10799
    },
    {
        longName = "Pikeville, KY",
        shortName = "Pikeville",
        id = "pikeville",
        mod = "Pikeville",
        isVanilla = false,
        startX = 10200,
        endX = 10399,
        startY = 6000,
        endY = 6199
    },
    {
        longName = "Pinegrove, KY",
        shortName = "Pinegrove",
        id = "pinegrove",
        mod = "Pinegrove",
        isVanilla = false,
        startX = 8100,
        endX = 8299,
        startY = 6000,
        endY = 6199
    },
    {
        longName = "Pine Hollow, KY",
        shortName = "Pine Hollow",
        id = "pinehollow",
        mod = "PineHollow",
        isVanilla = false,
        startX = 9600,
        endX = 9799,
        startY = 8700,
        endY = 8899
    },
    {
        longName = "Portside, KY",
        shortName = "Portside",
        id = "portside",
        mod = "Portside",
        isVanilla = false,
        startX = 12900,
        endX = 13099,
        startY = 9900,
        endY = 10099
    },
    {
        longName = "Prosperity, KY",
        shortName = "Prosperity",
        id = "prosperity",
        mod = "Prosperity",
        isVanilla = false,
        startX = 12900,
        endX = 13099,
        startY = 6000,
        endY = 6199
    },
    {
        longName = "Quarry Junction, KY",
        shortName = "Quarry Junction",
        id = "quarryjunction",
        mod = "QuarryJunction",
        isVanilla = false,
        startX = 10800,
        endX = 10999,
        startY = 9000,
        endY = 9199
    },
    {
        longName = "Quincy, KY",
        shortName = "Quincy",
        id = "quincy",
        mod = "Quincy",
        isVanilla = false,
        startX = 10200,
        endX = 10399,
        startY = 6000,
        endY = 6199
    },
    {
        longName = "Raven Rock, KY",
        shortName = "Raven Rock",
        id = "ravenrock",
        mod = "RavenRock",
        isVanilla = false,
        startX = 11700,
        endX = 11999,
        startY = 8700,
        endY = 8899
    },
    {
        longName = "Redwood Forest, KY",
        shortName = "Redwood Forest",
        id = "redwoodforest",
        mod = "RedwoodForest",
        isVanilla = false,
        startX = 12300,
        endX = 12499,
        startY = 7800,
        endY = 7999
    },
    {
        longName = "Ridgeview, KY",
        shortName = "Ridgeview",
        id = "ridgeview",
        mod = "Ridgeview",
        isVanilla = false,
        startX = 12000,
        endX = 12199,
        startY = 10200,
        endY = 10399
    },
    {
        longName = "Rivertown, KY",
        shortName = "Rivertown",
        id = "rivertown",
        mod = "Rivertown",
        isVanilla = false,
        startX = 11100,
        endX = 11399,
        startY = 9000,
        endY = 9199
    },
    {
        longName = "Rockford, KY",
        shortName = "Rockford",
        id = "rockford",
        mod = "Rockford",
        isVanilla = false,
        startX = 10200,
        endX = 10399,
        startY = 7200,
        endY = 7399
    },
    {
        longName = "Rustic Hills, KY",
        shortName = "Rustic Hills",
        id = "rustichills",
        mod = "RusticHills",
        isVanilla = false,
        startX = 12900,
        endX = 13099,
        startY = 10800,
        endY = 10999
    },
    {
        longName = "Salem, KY",
        shortName = "Salem",
        id = "salem",
        mod = "Salem",
        isVanilla = false,
        startX = 7800,
        endX = 7999,
        startY = 9900,
        endY = 10099
    },
    {
        longName = "Sandstone, KY",
        shortName = "Sandstone",
        id = "sandstone",
        mod = "Sandstone",
        isVanilla = false,
        startX = 12600,
        endX = 12799,
        startY = 12300,
        endY = 12499
    },
    {
        longName = "Sapphire Springs, KY",
        shortName = "Sapphire Springs",
        id = "sapphiresprings",
        mod = "SapphireSprings",
        isVanilla = false,
        startX = 11400,
        endX = 11599,
        startY = 6000,
        endY = 6199
    },
    {
        longName = "Shadowbrook, KY",
        shortName = "Shadowbrook",
        id = "shadowbrook",
        mod = "Shadowbrook",
        isVanilla = false,
        startX = 7800,
        endX = 7999,
        startY = 12900,
        endY = 13099
    },
    {
        longName = "Silver Creek, KY",
        shortName = "Silver Creek",
        id = "silvercreek",
        mod = "SilverCreek",
        isVanilla = false,
        startX = 12300,
        endX = 12499,
        startY = 6000,
        endY = 6199
    },
    {
        longName = "Sleepy Hollow, KY",
        shortName = "Sleepy Hollow",
        id = "sleepyhollow",
        mod = "SleepyHollow",
        isVanilla = false,
        startX = 7800,
        endX = 7999,
        startY = 9900,
        endY = 10099
    },
    {
        longName = "Southfield, KY",
        shortName = "Southfield",
        id = "southfield",
        mod = "Southfield",
        isVanilla = false,
        startX = 9900,
        endX = 10099,
        startY = 8700,
        endY = 8899
    },
    {
        longName = "South Haven, KY",
        shortName = "South Haven",
        id = "southhaven",
        mod = "SouthHaven",
        isVanilla = false,
        startX = 7800,
        endX = 7999,
        startY = 12900,
        endY = 13099
    },
    {
        longName = "Southport, KY",
        shortName = "Southport",
        id = "southport",
        mod = "Southport",
        isVanilla = false,
        startX = 9600,
        endX = 9799,
        startY = 9900,
        endY = 10099
    },
    {
        longName = "Southridge, KY",
        shortName = "Southridge",
        id = "southridge",
        mod = "Southridge",
        isVanilla = false,
        startX = 8100,
        endX = 8299,
        startY = 12300,
        endY = 12499
    },
    {
        longName = "Southside, KY",
        shortName = "Southside",
        id = "southside",
        mod = "Southside",
        isVanilla = false,
        startX = 9900,
        endX = 10199,
        startY = 7200,
        endY = 7399
    },
    {
        longName = "Springfield, KY",
        shortName = "Springfield",
        id = "springfield",
        mod = "Springfield",
        isVanilla = false,
        startX = 10500,
        endX = 10699,
        startY = 6300,
        endY = 6499
    },
    {
        longName = "Stonewood, KY",
        shortName = "Stonewood",
        id = "stonewood",
        mod = "Stonewood",
        isVanilla = false,
        startX = 7200,
        endX = 7399,
        startY = 10200,
        endY = 10399
    },
    {
        longName = "Stonybrook, KY",
        shortName = "Stonybrook",
        id = "stonybrook",
        mod = "Stonybrook",
        isVanilla = false,
        startX = 7800,
        endX = 7999,
        startY = 6900,
        endY = 7099
    },
    {
        longName = "Sunset Bay, KY",
        shortName = "Sunset Bay",
        id = "sunsetbay",
        mod = "SunsetBay",
        isVanilla = false,
        startX = 8100,
        endX = 8299,
        startY = 8100,
        endY = 8299
    },
    {
        longName = "Sycamore, KY",
        shortName = "Sycamore",
        id = "sycamore",
        mod = "Sycamore",
        isVanilla = false,
        startX = 11100,
        endX = 11299,
        startY = 7800,
        endY = 7999
    },
    {
        longName = "Sylvan Springs, KY",
        shortName = "Sylvan Springs",
        id = "sylvansprings",
        mod = "SylvanSprings",
        isVanilla = false,
        startX = 11700,
        endX = 11899,
        startY = 10800,
        endY = 10999
    },
    {
        longName = "Tanglewood, KY",
        shortName = "Tanglewood",
        id = "tanglewood",
        mod = "Tanglewood",
        isVanilla = false,
        startX = 12300,
        endX = 12499,
        startY = 10200,
        endY = 10399
    },
    {
        longName = "The Pines, KY",
        shortName = "The Pines",
        id = "thepines",
        mod = "ThePines",
        isVanilla = false,
        startX = 9900,
        endX = 10099,
        startY = 11100,
        endY = 11399
    },
    {
        longName = "Timberline, KY",
        shortName = "Timberline",
        id = "timberline",
        mod = "Timberline",
        isVanilla = false,
        startX = 12600,
        endX = 12799,
        startY = 8700,
        endY = 8899
    },
    {
        longName = "Tranquil Valley, KY",
        shortName = "Tranquil Valley",
        id = "tranquilvalley",
        mod = "TranquilValley",
        isVanilla = false,
        startX = 12300,
        endX = 12499,
        startY = 7800,
        endY = 7999
    },
    {
        longName = "Twin Lakes, KY",
        shortName = "Twin Lakes",
        id = "twinlakes",
        mod = "TwinLakes",
        isVanilla = false,
        startX = 10500,
        endX = 10699,
        startY = 11100,
        endY = 11399
    },
    {
        longName = "Valleyview, KY",
        shortName = "Valleyview",
        id = "valleyview",
        mod = "Valleyview",
        isVanilla = false,
        startX = 11700,
        endX = 11899,
        startY = 10200,
        endY = 10399
    },
    {
        longName = "Victoria, KY",
        shortName = "Victoria",
        id = "victoria",
        mod = "Victoria",
        isVanilla = false,
        startX = 10800,
        endX = 10999,
        startY = 6300,
        endY = 6499
    },
    {
        longName = "Vineyard, KY",
        shortName = "Vineyard",
        id = "vineyard",
        mod = "Vineyard",
        isVanilla = false,
        startX = 7200,
        endX = 7399,
        startY = 9900
        ,
        endY = 10099
    },
    {
        longName = "Waverly, KY",
        shortName = "Waverly",
        id = "waverly",
        mod = "Waverly",
        isVanilla = false,
        startX = 10500,
        endX = 10699,
        startY = 12300,
        endY = 12499
    },
    {
        longName = "Westfield, KY",
        shortName = "Westfield",
        id = "westfield",
        mod = "Westfield",
        isVanilla = false,
        startX = 10800,
        endX = 10999,
        startY = 7200,
        endY = 7399
    },
    {
        longName = "Westgate, KY",
        shortName = "Westgate",
        id = "westgate",
        mod = "Westgate",
        isVanilla = false,
        startX = 10200,
        endX = 10399,
        startY = 12900,
        endY = 13099
    },
    {
        longName = "Weston, KY",
        shortName = "Weston",
        id = "weston",
        mod = "Weston",
        isVanilla = false,
        startX = 7500,
        endX = 7699,
        startY = 9000,
        endY = 9199
    },
    {
        longName = "Westport, KY",
        shortName = "Westport",
        id = "westport",
        mod = "Westport",
        isVanilla = false,
        startX = 10500,
        endX = 10699,
        startY = 7800,
        endY = 7999
    },
    {
        longName = "Westwood, KY",
        shortName = "Westwood",
        id = "westwood",
        mod = "Westwood",
        isVanilla = false,
        startX = 9000,
        endX = 9199,
        startY = 11100,
        endY = 11399
    },
    {
        longName = "Whispering Pines, KY",
        shortName = "Whispering Pines",
        id = "whisperingpines",
        mod = "WhisperingPines",
        isVanilla = false,
        startX = 9000,
        endX = 9199,
        startY = 6000,
        endY = 6199
    },
    {
        longName = "White Oaks, KY",
        shortName = "White Oaks",
        id = "whiteoaks",
        mod = "WhiteOaks",
        isVanilla = false,
        startX = 7800,
        endX = 7999,
        startY = 10200,
        endY = 10399
    },
    {
        longName = "Whitewater, KY",
        shortName = "Whitewater",
        id = "whitewater",
        mod = "Whitewater",
        isVanilla = false,
        startX = 12900,
        endX = 13099,
        startY = 7200,
        endY = 7399
    },
    {
        longName = "Wildwood, KY",
        shortName = "Wildwood",
        id = "wildwood",
        mod = "Wildwood",
        isVanilla = false,
        startX = 8100,
        endX = 8299,
        startY = 6300,
        endY = 6499
    },
    {
        longName = "Willow Creek, KY",
        shortName = "Willow Creek",
        id = "willowcreek",
        mod = "WillowCreek",
        isVanilla = false,
        startX = 10200,
        endX = 10399,
        startY = 7800,
        endY = 7999
    },
    {
        longName = "Windsor, KY",
        shortName = "Windsor",
        id = "windsor",
        mod = "Windsor",
        isVanilla = false,
        startX = 7200,
        endX = 7399,
        startY = 10800,
        endY = 10999
    },
    {
        longName = "Woodland, KY",
        shortName = "Woodland",
        id = "woodland",
        mod = "Woodland",
        isVanilla = false,
        startX = 11400,
        endX = 11599,
        startY = 9000,
        endY = 9199
    },
    {
        longName = "Woodridge, KY",
        shortName = "Woodridge",
        id = "woodridge",
        mod = "Woodridge",
        isVanilla = false,
        startX = 11100,
        endX = 11299,
        startY = 9900,
        endY = 10099
    },
    {
        longName = "Woodside, KY",
        shortName = "Woodside",
        id = "woodside",
        mod = "Woodside",
        isVanilla = false,
        startX = 7200,
        endX = 7399,
        startY = 11700,
        endY = 11899
    },
    {
        longName = "Wyndham, KY",
        shortName = "Wyndham",
        id = "wyndham",
        mod = "Wyndham",
        isVanilla = false,
        startX = 11700,
        endX = 11899,
        startY = 6300,
        endY = 6499
    },
}

LIFLocations.SetupMapInformations = function()
    print("LIF: LOADING MODDED MAPS INFORMATIONS")

    local activeModIDs = getActivatedMods()
    for i = 0, activeModIDs:size()-1 do
        LIFLocations.ParseMapFiles(activeModIDs:get(i))
    end
end


local modsMapsPath = "media/maps"

LIFLocations.GetMapFiles = function(modID,mapFolderName)
    local maps = {}

    for i=0,mapFolderName:size()-1 do
        local mapPath = mapFolderName:get(i)
        local testFolder = modsMapsPath..separator..mapPath

        local files = listFilesInModDirectory(modID,testFolder)
        if files and files:size() > 0 then
            maps[testFolder] = files
        end
    end

    return maps
end

---Retrieve map informations from its map.info file.
---@param modID string
---@param mapFolder string
---@return table|nil
LIFLocations.GetMapInformations = function(modID,mapFolder)
    print("getting map informations for "..mapFolder)
    -- verify has a map.info file
    local reader = getModFileReader(modID, mapFolder..separator.."map.info", false)
    if not reader then return end

    local mapInformations = {
        id = modID,
        description = {},
    }
    print(modID)

    local line = reader:readLine()
    while line do
        if not line then break end
        if string.contains(line, "lots=") then
            mapInformations.worldMap = string.split(line,"=")[2]
        elseif string.contains(line, "description=") then
            table.insert(mapInformations.description,string.split(line,"=")[2])
        elseif string.contains(line, "title=") then
            mapInformations.longName = string.split(line,"=")[2]
        elseif string.contains(line, "fixed2x=") then
            mapInformations.fixed2x = string.split(line,"=")[2]
        end
        line = reader:readLine()
    end
    reader:close()

    return mapInformations
end

---Verifies the map is located in the Kentucky main world map.
---@param mapInformations table
---@return boolean
LIFLocations.IsKentucky = function(mapInformations)
    if mapInformations.worldMap == "Muldraugh, KY" then return true end
    return false
end

---Retrieve the map cells from the map `.lotheader` files.
---@param files ArrayList
---@return table
LIFLocations.GetMapCells = function(files)
    local cells = {}
    for i=0,files:size()-1 do
        local file = files:get(i)
        if string.contains(file,".lotheader") then
            local cellID = string.split(file,"\\.")[1]
            -- local split = string.split(cellID,"\\_")

            table.insert(cells,cellID)
        end
    end

    return cells
end

LIFLocations.ParseMapFiles = function(modID)
    local mapFolderName = getMapFoldersForMod(modID)
    if not mapFolderName then return end

    local maps = LIFLocations.GetMapFiles(modID,mapFolderName)

    for mapPath,files in pairs(maps) do repeat
        local mapInformations = LIFLocations.GetMapInformations(modID,mapPath)
        if not mapInformations then break end

        if not LIFLocations.IsKentucky(mapInformations) then break end

        local cells = LIFLocations.GetMapCells(files)
        LIFLocations.PopulateNewMap(mapInformations, cells)

        ---either retrieve corner boundaries
        ---or use the lookup system for maps which should be better, faster and more efficient overall
        ---and so use the cell ID directly ("X_Y") as the lookup entries to not make X = {Y=map} but X_Y = map
        ---
        ---also add checks for maps sharing the same cells
    until true end
end


LIFLocations.CellToMap = {}
LIFLocations.Maps = {}

---Populate the map information into the LIFLocations `Maps` table to retrieve the map from the map long name and in `CellToMap` to retrieve the map long name from the cell ID.
---
---Combine both for an easy access to the map information directly from the cell ID.
---@param mapInformations any
---@param cells any
---@param _isVanilla any
LIFLocations.PopulateNewMap = function(mapInformations,cells,_isVanilla)
    _isVanilla = _isVanilla or false

    LIFLocations.Maps[mapInformations.longName] = mapInformations

    for i = 1, #cells do
        local cell = cells[i]

        -- possibly allow multiple entries per cells instead. Alternatively, take into account load order of maps to know which one will be loaded here with a cleanup function after parsing every maps
        if LIFLocations.CellToMap[cell] then
            print("LIF: WARNING: Map "..mapInformations.longName.." has the same cell ID as "..LIFLocations.CellToMap[cell]..". ("..cell..")")
        end

        -- register map celll
        LIFLocations.CellToMap[cell] = mapInformations.longName
    end
end


LIFLocations.SetupMapInformations()

return LIFLocations
