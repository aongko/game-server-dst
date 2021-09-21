--There are two functions that will install mods, ServerModSetup and ServerModCollectionSetup. Put the calls to the functions in this file and they will be executed on boot.

--ServerModSetup takes a string of a specific mod's Workshop id. It will download and install the mod to your mod directory on boot.
	--The Workshop id can be found at the end of the url to the mod's Workshop page.
	--Example: http://steamcommunity.com/sharedfiles/filedetails/?id=350811795
	--ServerModSetup("350811795")

--ServerModSetup("1623498822")
--ServerModSetup("2225686180")
--ServerModSetup("2270316636")
--ServerModSetup("2289662010")
--ServerModSetup("2311599832")
--ServerModSetup("2321974509")
--ServerModSetup("2324689937")
--ServerModSetup("2420839895")
--ServerModSetup("2422129165")
--ServerModSetup("2454892046")
--ServerModSetup("2456874720")
--ServerModSetup("2475231544")
--ServerModSetup("2477889104")
--ServerModSetup("2487173121")
--ServerModSetup("2503293581")
--ServerModSetup("2557712505")
--ServerModSetup("2584216489")
--ServerModSetup("375859599")
--ServerModSetup("388109833")
--ServerModSetup("1089344410")

--ServerModSetup("362175979") --wormhole_marks
--ServerModSetup("378160973") --GlobalPositionsIcon
--ServerModSetup("458940297") --Food Values Item Tooltips
--ServerModSetup("466732225") --No Thermal Stone Durability
--ServerModSetup("543945797") --damage indicators
--ServerModSetup("666155465") --Show Me
--ServerModSetup("786654500") --FinderMod
--ServerModSetup("1185229307") --Epic Healthbar
--ServerModSetup("1595631294") --Smart minisign

--ServerModCollectionSetup takes a string of a specific mod's Workshop id. It will download all the mods in the collection and install them to the mod directory on boot.
	--The Workshop id can be found at the end of the url to the collection's Workshop page.
	--Example: http://steamcommunity.com/sharedfiles/filedetails/?id=379114180
	--ServerModCollectionSetup("379114180")

--https://steamcommunity.com/sharedfiles/filedetails/?id=2606958455
ServerModCollectionSetup("2606958455") --ao-dst-servermods
