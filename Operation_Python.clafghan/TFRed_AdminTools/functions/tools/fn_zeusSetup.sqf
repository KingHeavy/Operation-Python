



_uuids = [ "_SP_PLAYER_"];
_uuids append getArray(MissionconfigFile >> "TFR_adminSettings" >> "AccessLevels" >> "ZeusAccess" >> "uuids");

 _cfgPatches = "true" configClasses (configfile >> "cfgpatches"); 
 _addons = []; 
{ 
 _addons pushback configName(_x); 
}foreach _cfgPatches; 
 _missionObjects = (allMissionObjects "All");
 /*{
	if (isObjectHidden _x) then {
		_missionObjects = _missionObjects - [_x];
	} else if ((side _x) == sideLogic) then {
		_missionObjects = _missionObjects - [_x];
	};
 
 
 
 }foreach _missionObjects; 
 */
{
_curator = (createGroup sideLogic) createUnit ["ModuleCurator_F",[0,0,0],[],0,"NONE"]; 




removeallcuratoraddons _curator; 
_curator addcuratoraddons _addons; 
_curator setcuratorcoef["place", 0]; 
_curator setcuratorcoef["delete", 0]; 
_curator addCuratorEditableObjects [_missionObjects,true];
private _formattedCuratorVar = "TFR_Admin_Curator_" + _x;
missionNamespace setvariable [_formattedCuratorVar,_curator];

} foreach _uuids;