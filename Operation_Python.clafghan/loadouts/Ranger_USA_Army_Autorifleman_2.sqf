comment "Exported from Arsenal by JerkinMerkin";

comment "Remove existing items";
removeAllWeapons _this;
removeAllItems _this;
removeAllAssignedItems _this;
removeUniform _this;
removeVest _this;
removeBackpack _this;
removeHeadgear _this;
removeGoggles _this;

comment "Add containers";
_this forceAddUniform "U_B_RBU_DCU";
for "_i" from 1 to 4 do {_this addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 2 do {_this addItemToUniform "ACE_elasticBandage";};
for "_i" from 1 to 4 do {_this addItemToUniform "ACE_packingBandage";};
for "_i" from 1 to 2 do {_this addItemToUniform "ACE_tourniquet";};
_this addItemToUniform "ACE_EarPlugs";
_this addItemToUniform "ACE_Flashlight_MX991";
for "_i" from 1 to 2 do {_this addItemToUniform "rhsusf_mag_15Rnd_9x19_FMJ";};
for "_i" from 1 to 2 do {_this addItemToUniform "Chemlight_green";};
_this addVest "V_IBA_ETLBV";
_this addItemToVest "rhsusf_mag_15Rnd_9x19_JHP";
for "_i" from 1 to 2 do {_this addItemToVest "rhs_mag_m67";};
for "_i" from 1 to 2 do {_this addItemToVest "rhs_mag_an_m8hc";};
for "_i" from 1 to 3 do {_this addItemToVest "rhs_200rnd_556x45_M_SAW";};
_this addBackpack "usm_pack_alice";
_this addItemToBackpack "Simc_PVS7";
_this addHeadgear "H_Mich_tan_W3_no";
_this addGoggles "rhsusf_shemagh_gogg_od";

comment "Add weapons";
_this addWeapon "rhs_weap_m249_pip_S_para";
_this addPrimaryWeaponItem "CUP_optic_CompM2_Black";
_this addPrimaryWeaponItem "CUP_acc_ANPEQ_2";
_this addWeapon "rhsusf_weap_m9";

comment "Add items";
_this linkItem "ItemMap";
_this linkItem "ItemCompass";
_this linkItem "tf_microdagr";
_this linkItem "TFAR_rf7800str";

comment "Set identity";
_this setFace "WhiteHead_11";
_this setSpeaker "male06eng";
[_this,"ua_173ab_sub"] call bis_fnc_setUnitInsignia;
