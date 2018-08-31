comment "Exported from Arsenal by JerkinMerkin";

comment "Remove existing items";
removeAllWeapons this;
removeAllItems this;
removeAllAssignedItems this;
removeUniform this;
removeVest this;
removeBackpack this;
removeHeadgear this;
removeGoggles this;

comment "Add containers";
this forceAddUniform "U_B_RBU_DCU";
for "_i" from 1 to 4 do {this addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 2 do {this addItemToUniform "ACE_elasticBandage";};
for "_i" from 1 to 4 do {this addItemToUniform "ACE_packingBandage";};
for "_i" from 1 to 2 do {this addItemToUniform "ACE_tourniquet";};
this addItemToUniform "ACE_EarPlugs";
_this addItemToUniform "ACE_Flashlight_MX991";
for "_i" from 1 to 2 do {this addItemToUniform "rhsusf_mag_15Rnd_9x19_FMJ";};
for "_i" from 1 to 2 do {this addItemToUniform "Chemlight_green";};
this addVest "V_IBA_ETLBV";
this addItemToVest "rhsusf_mag_15Rnd_9x19_JHP";
for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_m67";};
for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_an_m8hc";};
for "_i" from 1 to 6 do {this addItemToVest "rhs_mag_30Rnd_556x45_M855_Stanag";};
this addBackpack "usm_pack_alice";
this addItemToBackpack "Simc_PVS7";
this addHeadgear "H_Mich_tan_W3_no";
this addGoggles "rhsusf_shemagh_od";

comment "Add weapons";
this addWeapon "rhs_weap_m4a1_carryhandle";
this addPrimaryWeaponItem "rhsusf_acc_eotech_552";
this addPrimaryWeaponItem "rhsusf_acc_grip3";
_this addPrimaryWeaponItem "CUP_acc_ANPEQ_2";
this addWeapon "rhsusf_weap_m9";

comment "Add items";
this linkItem "ItemMap";
this linkItem "ItemCompass";
this linkItem "tf_microdagr";
this linkItem "TFAR_rf7800str";

comment "Set identity";
this setFace "WhiteHead_11";
this setSpeaker "male06eng";
[_this,"USP_PATCH_USA_TAB_75RGR"] call bis_fnc_setUnitInsignia;