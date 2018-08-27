params ["_unit","_callerClientId"];

_curator = MissionNamespace getVariable ("TFR_Admin_Curator_" + (getPlayerUID _unit));
[[_curator,_unit],{

//(_this select 0) addCuratorEditableObjects [(allMissionObjects "All"),true];
unassignCurator (_this select 0);
(_this select 1) assignCurator  (_this select 0);

(_this select 1) addEventHandler ["Respawn", {
params["_newUnit","_corpse"];
_curatorModule = (getAssignedCuratorLogic _corpse);
unassignCurator _curatorModule;
_newUnit assignCurator _curatorModule;

}];







}] remoteExec ["call", _callerClientId];