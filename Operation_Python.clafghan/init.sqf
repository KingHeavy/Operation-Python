RHSDecalsOff = true;

//Exec Vcom AI function
[] execVM "Vcom\VcomInit.sqf";
//End of Vcom commands

if ((!isServer) && (player != player)) then {waitUntil {player == player};};

[] execVM "briefing.sqf";

// Snow Storm

// running script with breath vapors and wind bursts on server side, fog managed by script
//null = [direction_storm,duration_storm,effect_on_objects,ambient_sounds_al,breath_vapors,snow_burst_server_side,snow_burst_client_side,al_fog_snow,snow_indoor,local_fog] execvm "AL_snowstorm\al_snow.sqf";
null = [80,1440,false,1,true,false,false,false,true,false] execvm "AL_snowstorm\al_snow.sqf";

// Change day night cycle length - by RickOShay
// This will run on the server and not clients
// Example below changes the length of the day and night cycle
// Example below: Persistent mission day length of 4 hrs and night length of 2 hours;

if (!isServer) exitWith {};


////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Set length of day and night cycle in hours line below
_daylength = 4;
_nightlength = 2;
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

_dtm = (12/_daylength);
_ntm = (12/_nightlength);

[_dtm,_ntm] spawn {
	params ["_dtm", "_ntm"];

	_tod = sunormoon;
	_tm = timeMultiplier;

	while {_tod == 1 && _tm != _dtm} do {
		settimeMultiplier _dtm;
	};
	while {_tod == 0 && _tm != _ntm} do {
		setTimeMultiplier _ntm;
	};
	hint format ["TM: %1",_tm];
};

call compile preprocessFile "staticData.sqf";

enableSaving[false,false];enableTeamswitch false;////Comment: Not relevant line
/////////////////////////////////////////////////////
/////////////////////////////////////////////////////
//THIS FINDS OUT WHAT MAP IS RUNNING AND WHAT SET OF HOUSES TO CHECK FOR
//MAPS SUPPORTED: Stratis, Altis, Tanoa, Takistan, Zargabad, and Chernarus
//You can easily add more maps to list by adjusting examples below
if(isServer)then{
switch(worldName)do{
case "Stratis":{//IF map is Stratis = Altis/Stratis Houses
nH_List=["Land_CarService_F","Land_Chapel_Small_V1_F","Land_Chapel_Small_V2_F","Land_Chapel_V1_F","Land_Chapel_V2_F","Land_d_Stone_Shed_V1_F","Land_FuelStation_Build_F","Land_FuelStation_Shed_F","Land_Hospital_main_F","Land_Hospital_side1_F","Land_Hospital_side2_F","Land_i_Addon_02_V1_F","Land_i_Addon_03mid_V1_F","Land_i_Addon_03_V1_F","Land_i_Addon_04_V1_F","Land_i_Barracks_V1_F","Land_i_Barracks_V2_F","Land_i_Garage_V1_F","Land_i_Garage_V2_F","Land_i_House_Big_01_V1_F","Land_i_House_Big_01_V2_F","Land_i_House_Big_01_V3_F","Land_i_House_Big_02_V1_F","Land_i_House_Big_02_V2_F","Land_i_House_Big_02_V3_F","Land_i_House_Small_01_V1_F","Land_i_House_Small_01_V2_F","Land_i_House_Small_01_V3_F","Land_i_House_Small_02_V1_F","Land_i_House_Small_02_V2_F","Land_i_House_Small_02_V3_F","Land_i_House_Small_03_V1_F","Land_i_Shed_Ind_F","Land_i_Shop_01_V1_F","Land_i_Shop_01_V2_F","Land_i_Shop_01_V3_F","Land_i_Shop_02_V1_F","Land_i_Shop_02_V2_F","Land_i_Shop_02_V3_F","Land_i_Stone_HouseBig_V1_F","Land_i_Stone_HouseBig_V2_F","Land_i_Stone_HouseBig_V3_F","Land_i_Stone_HouseSmall_V1_F","Land_i_Stone_HouseSmall_V2_F","Land_i_Stone_HouseSmall_V3_F","Land_i_Stone_Shed_V1_F","Land_i_Stone_Shed_V2_F","Land_i_Stone_Shed_V3_F","Land_Metal_Shed_F","Land_MilOffices_V1_F","Land_Offices_01_V1_F","Land_Slum_House01_F","Land_Slum_House02_F","Land_Slum_House03_F","Land_Unfinished_Building_01_F","Land_Unfinished_Building_02_F","Land_u_Addon_01_V1_F","Land_u_Addon_02_V1_F","Land_u_Barracks_V2_F","Land_u_House_Big_01_V1_F","Land_u_House_Big_02_V1_F","Land_u_House_Small_01_V1_F","Land_u_House_Small_02_V1_F","Land_u_Shed_Ind_F","Land_u_Shop_01_V1_F","Land_u_Shop_02_V1_F","Land_WIP_F"];
};

case "Altis":{//IF MAP IS ALTIS = Altis/Stratis Houses
nH_List=["Land_CarService_F","Land_Chapel_Small_V1_F","Land_Chapel_Small_V2_F","Land_Chapel_V1_F","Land_Chapel_V2_F","Land_d_Stone_Shed_V1_F","Land_FuelStation_Build_F","Land_FuelStation_Shed_F","Land_Hospital_main_F","Land_Hospital_side1_F","Land_Hospital_side2_F","Land_i_Addon_02_V1_F","Land_i_Addon_03mid_V1_F","Land_i_Addon_03_V1_F","Land_i_Addon_04_V1_F","Land_i_Barracks_V1_F","Land_i_Barracks_V2_F","Land_i_Garage_V1_F","Land_i_Garage_V2_F","Land_i_House_Big_01_V1_F","Land_i_House_Big_01_V2_F","Land_i_House_Big_01_V3_F","Land_i_House_Big_02_V1_F","Land_i_House_Big_02_V2_F","Land_i_House_Big_02_V3_F","Land_i_House_Small_01_V1_F","Land_i_House_Small_01_V2_F","Land_i_House_Small_01_V3_F","Land_i_House_Small_02_V1_F","Land_i_House_Small_02_V2_F","Land_i_House_Small_02_V3_F","Land_i_House_Small_03_V1_F","Land_i_Shed_Ind_F","Land_i_Shop_01_V1_F","Land_i_Shop_01_V2_F","Land_i_Shop_01_V3_F","Land_i_Shop_02_V1_F","Land_i_Shop_02_V2_F","Land_i_Shop_02_V3_F","Land_i_Stone_HouseBig_V1_F","Land_i_Stone_HouseBig_V2_F","Land_i_Stone_HouseBig_V3_F","Land_i_Stone_HouseSmall_V1_F","Land_i_Stone_HouseSmall_V2_F","Land_i_Stone_HouseSmall_V3_F","Land_i_Stone_Shed_V1_F","Land_i_Stone_Shed_V2_F","Land_i_Stone_Shed_V3_F","Land_Metal_Shed_F","Land_MilOffices_V1_F","Land_Offices_01_V1_F","Land_Slum_House01_F","Land_Slum_House02_F","Land_Slum_House03_F","Land_Unfinished_Building_01_F","Land_Unfinished_Building_02_F","Land_u_Addon_01_V1_F","Land_u_Addon_02_V1_F","Land_u_Barracks_V2_F","Land_u_House_Big_01_V1_F","Land_u_House_Big_02_V1_F","Land_u_House_Small_01_V1_F","Land_u_House_Small_02_V1_F","Land_u_Shed_Ind_F","Land_u_Shop_01_V1_F","Land_u_Shop_02_V1_F","Land_WIP_F"];
};

case "Tanoa":{//IF MAP IS TANOA = Tanoa Houses
nH_List=["Land_Airport_02_terminal_F","Land_House_Big_04_F","Land_House_Small_04_F","Land_House_Small_05_F","Land_Shop_City_01_F","Land_Shop_City_02_F","Land_Addon_04_F","Land_Shop_City_05_F","Land_School_01_F","Land_House_Big_03_F","Land_House_Native_01_F","Land_House_Native_02_F","Land_Temple_Native_01_F","Land_SM_01_shed_F","Land_Warehouse_03_F","Land_Barracks_01_dilapidated_F","Land_Barracks_01_grey_F","Land_Barracks_01_camo_F","Land_Cathedral_01_F","Land_GuardHouse_01_F","Land_FuelStation_01_shop_F","Land_FuelStation_01_workshop_F","Land_FuelStation_02_workshop_F","Land_Hotel_01_F","Land_Hotel_02_F","Land_Supermarket_01_F","Land_House_Small_02_F","Land_House_Big_02_F","Land_House_Small_03_F","Land_House_Small_06_F","Land_House_Big_01_F","Land_Shed_07_F","Land_Shed_05_F","Land_Shed_02_F","Land_Slum_05_F","Land_Slum_02_F","Land_Slum_01_F","Land_GarageShelter_01_F","Land_Shop_Town_03_F","Land_Shop_Town_05_F","Land_Shop_Town_01_F","Land_House_Small_01_F","Land_Slum_03_F","Land_Slum_04_F","Land_Shed_01_F","Land_Shed_04_F"];
};

case "Takistan":{//IF MAP IS TAKISTAN = Middle Eastern Houses
nH_List=["Land_House_K_1_EP1","Land_House_K_3_EP1","Land_House_K_5_EP1","Land_House_K_6_EP1","Land_House_K_7_EP1","Land_House_K_8_EP1","Land_House_L_1_EP1","Land_House_L_2_EP1","Land_House_L_3_EP1","Land_House_L_4_EP1","Land_House_L_6_EP1","Land_House_L_7_EP1","Land_House_L_8_EP1","Land_House_L_9_EP1","Land_House_C_1_EP1","Land_House_C_1_v2_EP1","Land_House_C_2_EP1","Land_House_C_3_EP1","Land_House_C_4_EP1","Land_House_C_5_EP1","Land_House_C_5_V1_EP1","Land_House_C_5_V2_EP1","Land_House_C_5_V3_EP1","Land_House_C_10_EP1","Land_House_C_11_EP1","Land_House_C_12_EP1","Land_A_Mosque_small_1_EP1","Land_A_Mosque_small_2_EP1","Land_A_Mosque_big_addon_EP1","Land_A_Mosque_big_hq_EP1"];
};

case "Zargabad":{//IF MAP IS ZARGABAD = Middle Eastern Houses
nH_List=["Land_House_K_1_EP1","Land_House_K_3_EP1","Land_House_K_5_EP1","Land_House_K_6_EP1","Land_House_K_7_EP1","Land_House_K_8_EP1","Land_House_L_1_EP1","Land_House_L_2_EP1","Land_House_L_3_EP1","Land_House_L_4_EP1","Land_House_L_6_EP1","Land_House_L_7_EP1","Land_House_L_8_EP1","Land_House_L_9_EP1","Land_House_C_1_EP1","Land_House_C_1_v2_EP1","Land_House_C_2_EP1","Land_House_C_3_EP1","Land_House_C_4_EP1","Land_House_C_5_EP1","Land_House_C_5_V1_EP1","Land_House_C_5_V2_EP1","Land_House_C_5_V3_EP1","Land_House_C_10_EP1","Land_House_C_11_EP1","Land_House_C_12_EP1","Land_A_Mosque_small_1_EP1","Land_A_Mosque_small_2_EP1","Land_A_Mosque_big_addon_EP1","Land_A_Mosque_big_hq_EP1"];
};

case "Chernarus":{//IF MAP IS CHERNARUS = Chernarus buildings
nH_List=["Land_A_BuildingWIP","Land_A_FuelStation_Build","Land_A_GeneralStore_01","Land_A_GeneralStore_01a","Land_A_Hospital","Land_A_Pub_01","Land_a_stationhouse","Land_Barn_Metal","Land_Barn_W_01","Land_Church_03","Land_Farm_Cowshed_a","Land_Farm_Cowshed_b","Land_Farm_Cowshed_c","Land_Hlidac_budka","Land_HouseBlock_A1","Land_HouseB_Tenement","Land_HouseV2_01A","Land_HouseV2_02_Interier","Land_HouseV2_04_interier","Land_HouseV_1I1","Land_HouseV_1I4","Land_HouseV_1L1","Land_HouseV_1L2","Land_HouseV_2L","Land_Ind_Garage01","Land_Ind_Workshop01_01","Land_Ind_Workshop01_02","Land_Ind_Workshop01_04","Land_Ind_Workshop01_L","Land_kulna","Land_Mil_Barracks_i","Land_Mil_ControlTower","Land_Panelak","Land_Panelak2","Land_Rail_House_01","Land_rail_station_big","Land_Shed_Ind02","Land_Shed_W01","Land_stodola_old_open","Land_Tovarna2","Land_vez"];
};

default{//If any of the above maps aren't detected, default select A2 Takistan houses
nH_List=["Land_House_K_1_EP1","Land_House_K_3_EP1","Land_House_K_5_EP1","Land_House_K_6_EP1","Land_House_K_7_EP1","Land_House_K_8_EP1","Land_House_L_1_EP1","Land_House_L_2_EP1","Land_House_L_3_EP1","Land_House_L_4_EP1","Land_House_L_6_EP1","Land_House_L_7_EP1","Land_House_L_8_EP1","Land_House_L_9_EP1","Land_House_C_1_EP1","Land_House_C_1_v2_EP1","Land_House_C_2_EP1","Land_House_C_3_EP1","Land_House_C_4_EP1","Land_House_C_5_EP1","Land_House_C_5_V1_EP1","Land_House_C_5_V2_EP1","Land_House_C_5_V3_EP1","Land_House_C_10_EP1","Land_House_C_11_EP1","Land_House_C_12_EP1","Land_A_Mosque_small_1_EP1","Land_A_Mosque_small_2_EP1","Land_A_Mosque_big_addon_EP1","Land_A_Mosque_big_hq_EP1"];
};
publicVariable "nH_List";
};


//THIS IS THE EVENTHANDLER THAT MAKES THE CIVILIANS FLEE
{if(side _x==civilian)then{
_x addEventHandler["FiredNear",{
_civ=_this select 0;

	switch(round(random 2))do{
		case 0:{_civ switchMove "ApanPercMstpSnonWnonDnon_G01";_civ setSpeedMode "FULL";};
		case 1:{_civ playMoveNow "ApanPknlMstpSnonWnonDnon_G01";_civ setSpeedMode "FULL";};
		case 2:{_civ playMoveNow "ApanPpneMstpSnonWnonDnon_G01";_civ setSpeedMode "FULL";};
		default{_civ playMoveNow "ApanPknlMstpSnonWnonDnon_G01";_civ setSpeedMode "FULL";};};

//nearestObjects[ PositionOrTarget, ["List","Of","Classnames","To","Look","For"], MaxDistanceToSearchAroundTarget ];
_nH=nearestObjects[_civ,nH_List,100];


_H=selectRandom _nH;//Pick an object found in the above nearestObjects array

_HP=_H buildingPos -1;//Finds list of all available building positions in the selected building

_HP=selectRandom _HP;//Picks a building position from the list of building positions

_civ doMove _HP;//Orders the civilian to move to the building position

//Remove the eventHandler to prevent spamming
_civ removeAllEventHandlers "FiredNear";}];};
}forEach allUnits-switchableUnits-playableUnits
};

enableSaving false;
if(isClass(configFile>>"CfgPatches">>"TPW_MODS"))then{endMission"END2";};
if(isClass(configFile>>"CfgPatches">>"task_force_radio"))then{isTFAR=true;}else{isTFAR=false;};
if(isClass(configFile>>"CfgPatches">>"acre_main"))then{isACRE=true;}else{isACRE=false;};
if(isClass(configFile>>"cfgPatches">>"ace_common"))then{isACE=true;}else{isACE=false;};
if(isClass(configFile>>"cfgPatches">>"Taliban_fighters"))then{isTalib=true;}else{isTalib=false;};
if(isClass(configFile>>"cfgPatches">>"CUP_Weapons_WeaponsCore"))then{isCUPW=true;}else{isCUPW=false;};
if(isClass(configFile>>"cfgPatches">>"CUP_Creatures_People_Core"))then{isCUPU=true;}else{isCUPU=false;};
if((isClass(configFile>>"cfgPatches">>"CUP_WheeledVehicles_Core"))&&{(isClass(configFile>>"cfgPatches">>"CUP_BaseConfigs"))})then{isCUPV=true;}else{isCUPV=false;};
if(isClass(configFile>>"cfgPatches">>"SFG_Tac_Beard"))then{isBeard=true;}else{isBeard=false;};
if(isClass(configFile>>"cfgPatches">>"rhs_t72"))then{isRHSRF=true;}else{isRHSRF=false;};
if(isClass(configFile>>"cfgPatches">>"rhsusf_vehicles"))then{isRHSUS=true;}else{isRHSUS=false;};
#include"eos\fn\fn.sqf";
#include"common\server\civ\civActions.sqf";
call compile preprocessFileLineNumbers"common\server\civ\traffic.sqf";
call compile preprocessFileLineNumbers"common\server\civ\dbugT.sqf";
call compile preprocessFileLineNumbers"common\server\civ\dbugC.sqf";
civs_SIDE=civilian;
civs_MINSKILL=0;
civs_MAXSKILL=0;
civs_MAXWAITINGTIME=300;
civs_RUNNINGCHANCE=0.05;
civs_BEHAVIOURS=[["CITIZEN",100]];
civs_INSTANCE_NO=0;
civTraffic_instanceIndex=-1;
civTraffic_areaMarkerNames=[];
civTraffic_roadSegments=[];
civTraffic_edgeTopLeftRoads=[];
civTraffic_edgeTopRightRoads=[];
civTraffic_edgeBottomRightRoads=[];
civTraffic_edgeBottomLeftRoads=[];
civTraffic_edgeRoadsUseful=[];

//what does this do?!  - Jmaster
#ifndef execNow
#define execNow call compile preprocessFileLineNumbers
#endif
ia_say=compileFinal"_this select 0 say3D(_this select 1);";
if(isServer)then{
null=[]execVM"eos\openMe.sqf";
call compile preprocessFileLineNumbers"common\server\civ\serverFN.sqf";call compile preprocessFileLineNumbers"common\server\civ\cCFG.sqf";
call compile preprocessFileLineNumbers"common\server\civ\fn.sqf";call compile preprocessFileLineNumbers"common\server\civ\tCFG.sqf";};
if(paramsArray select 3==1)then{0=[12,1000,300]execVM"common\server\civ\tpw_animals.sqf";};
execVM "common\server\ctp\ctp.sqf";

civ_startAsk_intel_1 = compile PreprocessFileLineNumbers "common\server\civ\civIntel.sqf";
civ_startAsk_intel_2 = compile PreprocessFileLineNumbers "common\server\civ\civIntel2.sqf";
civ_startAsk_intel_3 = compile PreprocessFileLineNumbers "common\server\civ\civIntel3.sqf";
civ_startAsk_intel_4 = compile PreprocessFileLineNumbers "common\server\civ\civIntel4.sqf";
civ_startAsk_intel_5 = compile PreprocessFileLineNumbers "common\server\civ\civIntel5.sqf";
civ_startCO_talk = compile PreprocessFileLineNumbers "common\server\civ\CO_talk.sqf";
civ_startCO_talk_2 = compile PreprocessFileLineNumbers "common\server\civ\CO_talk2.sqf";
civ_startSoldier_talk = compile PreprocessFileLineNumbers "common\server\civ\Soldier_talk.sqf";
civ_startSoldier_talk_2 = compile PreprocessFileLineNumbers "common\server\civ\Soldier_talk2.sqf";
civ_startSoldier_talk_3 = compile PreprocessFileLineNumbers "common\server\civ\Soldier_talk3.sqf";
civ_startSoldier_talk_4 = compile PreprocessFileLineNumbers "common\server\civ\Soldier_talk4.sqf";
civ_startSoldier_talk_5 = compile PreprocessFileLineNumbers "common\server\civ\Soldier_talk5.sqf";
civ_startSoldier_talk_6 = compile PreprocessFileLineNumbers "common\server\civ\Soldier_talk6.sqf";
civ_startWounded_soldier_talk = compile PreprocessFileLineNumbers "common\server\civ\Wounded_soldier_talk.sqf";
