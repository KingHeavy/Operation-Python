/* 
 * This file contains parameters to config and function call to start an instance of
 * traffic in the mission. The file is edited by the mission developer.
 *
 * See file Engima\Traffic\Documentation.txt for documentation and a full reference of 
 * how to customize and use Engima's Traffic.
 */
 
 private ["_parameters"];

// Set traffic parameters.
_parameters = [
	["SIDE", civilian],
	["VEHICLES", ["C_AfghanCivilians_Civilian_Ural_4320_2002_01","C_AfghanCivilians_Civilian_GAZ_Black_2002_01","C_AfghanCivilians_Civilian_Gaz_Blue_2002_01","C_AfghanCivilians_Civilian_Datsun_Blue_2002_01","C_AfghanCivilians_Civilian_Datsun_Grey_2002_01","C_AfghanCivilians_Civilian_Hilux_White_2002_01","C_AfghanCivilians_Civilian_Hilux_Brown_2002_01","C_AfghanCivilians_Civilian_Lada_White_2002_01","C_AfghanCivilians_Civilian_Lada_LM_2002_01","C_AfghanCivilians_Civilian_S1230_Van_2002_01"]],
	["VEHICLES_COUNT", 6],
	["MIN_SPAWN_DISTANCE", 800],
	["MAX_SPAWN_DISTANCE", 1200],
	["MIN_SKILL", 0.4],
	["MAX_SKILL", 0.6],
	["DEBUG", false]
];

// Start an instance of the traffic
_parameters spawn ENGIMA_TRAFFIC_StartTraffic;
