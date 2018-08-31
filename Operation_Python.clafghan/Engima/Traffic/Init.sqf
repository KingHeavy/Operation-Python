call compile preprocessFileLineNumbers "Engima\Traffic\Common\Common.sqf";
call compile preprocessFileLineNumbers "Engima\Traffic\Common\Debug.sqf";
call compile preprocessFileLineNumbers "Engima\Traffic\HeadlessClient.sqf";

ENGIMA_TRAFFIC_instanceIndex = -1;
ENGIMA_TRAFFIC_areaMarkerNames = ["mkr1", "mkr2", "mkr3", "mkr4", "mkr5", "mkr6", "mkr7", "mkr8", "mkr9", "mkr10", "mkr11", "mkr12", "mkr13", "mkr14", "mkr15", "mkr16", "mkr17", "mkr18", "mkr19", "mkr20"];
ENGIMA_TRAFFIC_roadSegments = [];
ENGIMA_TRAFFIC_edgeTopLeftRoads = [];
ENGIMA_TRAFFIC_edgeTopRightRoads = [];
ENGIMA_TRAFFIC_edgeBottomRightRoads = [];
ENGIMA_TRAFFIC_edgeBottomLeftRoads = [];
ENGIMA_TRAFFIC_edgeRoadsUseful = [];

private _headlessClientPresent =  !(isNil Engima_Traffic_HeadlessClientName);
private _runOnThisMachine = false;

if (_headlessClientPresent && isMultiplayer) then {
    if (!isServer && !hasInterface) then {
        _runOnThisMachine = true;
    };
}
else {
    if (isServer) then {
        _runOnThisMachine = true;;   
    };
};

if (_runOnThisMachine) then {
	call compile preprocessFileLineNumbers "Engima\Traffic\Server\Functions.sqf";
	call compile preprocessFileLineNumbers "Engima\Traffic\Server\MoveVehicle.sqf";
	call compile preprocessFileLineNumbers "Engima\Traffic\Server\StartTraffic.sqf";
	call compile preprocessFileLineNumbers "Engima\Traffic\ConfigAndStart.sqf";
};
