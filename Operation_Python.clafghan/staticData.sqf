O_Taliban_2002_typeMappings = [] call ALiVE_fnc_hashCreate;

O_Taliban_2002_factionCustomGroups = [] call ALiVE_fnc_hashCreate;
[O_Taliban_2002_factionCustomGroups,"Infantry", ["o_taliban_infantry_fireteam_1_2002","o_taliban_infantry_fireteam_2_2002","o_taliban_infantry_fireteam_3_2002","o_taliban_infantry_fireteam_4_2002","o_taliban_infantry_fireteam_5_2002","o_taliban_infantry_fireteam_6_2002","o_taliban_infantry_squad_1_2002","o_taliban_infantry_squad_2_2002","o_taliban_infantry_squad_3_2002"]] call ALiVE_fnc_hashSet;
[O_Taliban_2002_factionCustomGroups,"SpecOps", []] call ALiVE_fnc_hashSet;
[O_Taliban_2002_factionCustomGroups,"Motorized", ["o_otaliban2002_motorized_hilux_hmg","o_otaliban2002_motorized_hilux_1","o_otaliban2002_motorized_hilux_2","o_otaliban2002_motorized_datsun_hmg","o_otaliban2002_motorized_datsun_1","o_otaliban2002_motorized_datsun_2","o_otaliban2002_motorized_s1201_van","o_otaliban2002_motorized_ural_4320"]] call ALiVE_fnc_hashSet;
[O_Taliban_2002_factionCustomGroups,"Motorized_MTP", []] call ALiVE_fnc_hashSet;
[O_Taliban_2002_factionCustomGroups,"Mechanized", []] call ALiVE_fnc_hashSet;
[O_Taliban_2002_factionCustomGroups,"Armored", ["o_otaliban2002_armored_t55a"]] call ALiVE_fnc_hashSet;
[O_Taliban_2002_factionCustomGroups,"Artillery", []] call ALiVE_fnc_hashSet;
[O_Taliban_2002_factionCustomGroups,"Naval", []] call ALiVE_fnc_hashSet;
[O_Taliban_2002_factionCustomGroups,"Air", []] call ALiVE_fnc_hashSet;
[O_Taliban_2002_factionCustomGroups,"Support", []] call ALiVE_fnc_hashSet;

O_Taliban_2002_mappings = [] call ALiVE_fnc_hashCreate;
[O_Taliban_2002_mappings,"Side", "EAST"] call ALiVE_fnc_hashSet;
[O_Taliban_2002_mappings,"GroupSideName", "EAST"] call ALiVE_fnc_hashSet;
[O_Taliban_2002_mappings,"FactionName", "O_Taliban_2002"] call ALiVE_fnc_hashSet;
[O_Taliban_2002_mappings,"GroupFactionName", "O_Taliban_2002"] call ALiVE_fnc_hashSet;
[O_Taliban_2002_mappings,"GroupFactionTypes", O_Taliban_2002_typeMappings] call ALiVE_fnc_hashSet;
[O_Taliban_2002_mappings,"Groups", O_Taliban_2002_factionCustomGroups] call ALiVE_fnc_hashSet;

[ALiVE_factionCustomMappings,"O_Taliban_2002", O_Taliban_2002_mappings] call ALiVE_fnc_hashSet;
