if (isServer || !isMultiplayer) then {
	call TFR_Admin_fnc_zeusSetup;



};
if (hasInterface) then {
	if ("spectator" call TFR_Admin_fnc_checkPermissions) then {
		call TFR_Admin_fnc_keybindSetup;
	};
	
	if ("zeus" call TFR_Admin_fnc_checkPermissions) then {
		waitUntil{!isNull player}; 
		[player,(clientOwner)] remoteExecCall ["TFR_Admin_fnc_zeusLogin",2];
	};
};
