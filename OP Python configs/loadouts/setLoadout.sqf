//created by [SHG]Jmaster

params["_unit","_corpse"];

waitUntil {!isNull player};
_unit execVM (_corpse getVariable "SHG_Loadout");