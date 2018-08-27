//created by [SHG]Jmaster
params["_unit","_loadout"];


_loadoutFormat = format["loadouts\%1.sqf",_loadout];
_unit setVariable ["SHG_Loadout",_loadoutFormat,false];

waitUntil {!isNull player};
_unit execVM _loadoutFormat;

_unit addeventhandler ["respawn",{
[_this select 0,_this select 1] spawn compile preprocessFileLineNumbers "loadouts\setLoadout.sqf";

}];
