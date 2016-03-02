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
_respawnWestPos = [_locationPos, 600, 700, 3, 0, 20, 0] call BIS_fnc_findSafePos;
"respawn_west" setMarkerPos _respawnWestPos;

//Spawn opfor
{_x setpos (getmarkerpos "respawn_east")} foreach units team2;
};
//Spawn civs
{_x setpos (getmarkerpos "respawn_east")} foreach units team3;
//Spawn blufor
{_x setpos (getmarkerpos "respawn_west")} foreach units team1;