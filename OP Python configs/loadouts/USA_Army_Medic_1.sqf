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
_this forceAddUniform "U_B_BDU_101AB_knee";
for "_i" from 1 to 4 do {_this addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 2 do {_this addItemToUniform "ACE_elasticBandage";};
for "_i" from 1 to 4 do {_this addItemToUniform "ACE_packingBandage";};
for "_i" from 1 to 2 do {_this addItemToUniform "ACE_tourniquet";};
_this addItemToUniform "ACE_EarPlugs";
_this addItemToUniform "ACE_Flashlight_MX991";
for "_i" from 1 to 2 do {_this addItemToUniform "rhsusf_mag_15Rnd_9x19_FMJ";};
for "_i" from 1 to 2 do {_this addItemToUniform "Chemlight_green";};
_this addVest "V_IBA_Alice";
_this addItemToVest "rhsusf_mag_15Rnd_9x19_JHP";
for "_i" from 1 to 2 do {_this addItemToVest "rhs_mag_m67";};
for "_i" from 1 to 2 do {_this addItemToVest "rhs_mag_an_m8hc";};
for "_i" from 1 to 6 do {_this addItemToVest "rhs_mag_30Rnd_556x45_M855_Stanag";};
_this addBackpack "usm_pack_alice_medic";
_this addItemToBackpack "Simc_PVS7";
for "_i" from 1 to 20 do {_this addItemToBackpack "ACE_fieldDressing";};
for "_i" from 1 to 15 do {_this addItemToBackpack "ACE_elasticBandage";};
for "_i" from 1 to 15 do {_this addItemToBackpack "ACE_quikclot";};
for "_i" from 1 to 5 do {_this addItemToBackpack "ACE_atropine";};
for "_i" from 1 to 5 do {_this addItemToBackpack "ACE_adenosine";};
for "_i" from 1 to 5 do {_this addItemToBackpack "ACE_epinephrine";};
for "_i" from 1 to 5 do {_this addItemToBackpack "ACE_morphine";};
for "_i" from 1 to 15 do {_this addItemToBackpack "ACE_packingBandage";};
_this addItemToBackpack "ACE_personalAidKit";
for "_i" from 1 to 2 do {_this addItemToBackpack "ACE_plasmaIV_250";};
_this addItemToBackpack "ACE_plasmaIV_500";
for "_i" from 1 to 4 do {_this addItemToBackpack "ACE_tourniquet";};
_this addHeadgear "H_PASGT_dcu";
_this addGoggles "rhsusf_shemagh_od";

comment "Add weapons";
_this addWeapon "rhs_weap_m4_carryhandle";
_this addPrimaryWeaponItem "CUP_acc_ANPEQ_2";
_this addPrimaryWeaponItem "rhsusf_acc_grip3";
_this addWeapon "rhsusf_weap_m9";

comment "Add items";
_this linkItem "ItemMap";
_this linkItem "ItemCompass";
_this linkItem "tf_microdagr";
_this linkItem "tf_rf7800str";

comment "Set identity";
_this setFace "WhiteHead_11";
_this setSpeaker "male06eng";
