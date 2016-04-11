if (isServer) then {
// Find array of towns
_townlist = nearestLocations [[0, 0, 0], ["NameCityCapital", "NameCity", "NameVillage", "NameLocal"],1000000];

// Get random town
_rnd = floor random (count _townlist);
_town = _townlist select _rnd;
_town_name = text (_town);

//Get town location
_locationPos = locationPosition (_town) vectorAdd [50, -20, 0];

//Place respawn_east in safe position
_respawnEastPos = [_locationPos, 5, 50, 3, 0, 20, 0] call BIS_fnc_findSafePos;
"respawn_east" setMarkerPos _respawnEastPos;

//Place respawn_west in safe positon
_respawnWestPos = [_locationPos, 400, 500, 3, 0, 20, 0] call BIS_fnc_findSafePos;
"respawn_west" setMarkerPos _respawnWestPos;
};