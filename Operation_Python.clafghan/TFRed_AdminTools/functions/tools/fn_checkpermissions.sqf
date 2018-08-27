private _permission = _this;
_returnValue = false;
private _uuids = [ "_SP_PLAYER_"];

switch(_permission) do {
	case "spectator":{
		_uuids append getArray(MissionconfigFile >> "TFR_adminSettings" >> "AccessLevels" >> "SpectatorAccess" >> "uuids");
	};
	case "zeus":{
		_uuids append getArray(MissionconfigFile >> "TFR_adminSettings" >> "AccessLevels" >> "ZeusAccess" >> "uuids");
	};
};
if (count _uuids != 0) then {
	if ((getPlayerUID  player) in _uuids) then {
		_returnValue = True
	}
};
_returnValue