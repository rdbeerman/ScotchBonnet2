//Spawn opfor
{_x setpos (getmarkerpos "respawn_east")} foreach units team2;
//Spawn civs
{_x setpos (getmarkerpos "respawn_east")} foreach units team3;
//Spawn blufor
{_x setpos (getmarkerpos "respawn_west")} foreach units team1;