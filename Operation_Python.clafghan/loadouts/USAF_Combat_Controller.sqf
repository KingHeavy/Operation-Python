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
_this forceAddUniform "U_B_RBU_DCU_no";
for "_i" from 1 to 4 do {_this addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 2 do {_this addItemToUniform "ACE_elasticBandage";};
for "_i" from 1 to 4 do {_this addItemToUniform "ACE_packingBandage";};
for "_i" from 1 to 2 do {_this addItemToUniform "ACE_tourniquet";};
_this addItemToUniform "ACE_EarPlugs";
_this addItemToUniform "ACE_Flashlight_MX991";
for "_i" from 1 to 2 do {_this addItemToUniform "rhsusf_mag_15Rnd_9x19_FMJ";};
for "_i" from 1 to 2 do {_this addItemToUniform "Chemlight_green";};
_this addVest "V_IBA_DCU_ETLBV_D";
_this addItemToVest "ACE_DAGR";
_this addItemToVest "rhsusf_mag_15Rnd_9x19_JHP";
for "_i" from 1 to 2 do {_this addItemToVest "rhs_mag_m67";};
for "_i" from 1 to 2 do {_this addItemToVest "rhs_mag_an_m8hc";};
for "_i" from 1 to 6 do {_this addItemToVest "rhs_mag_30Rnd_556x45_M855_Stanag";};
for "_i" from 1 to 2 do {_this addItemToVest "rhs_mag_m18_green";};
for "_i" from 1 to 2 do {_this addItemToVest "rhs_mag_m18_purple";};
for "_i" from 1 to 2 do {_this addItemToVest "rhs_mag_m18_red";};
_this addBackpack "usm_pack_alice_prc119";
_this addItemToBackpack "Simc_PVS7";
_this addHeadgear "H_Mich_BK_W3_G";
_this addGoggles "rhsusf_shemagh_od";

comment "Add weapons";
_this addWeapon "rhs_weap_m4a1_d_grip3";
_this addPrimaryWeaponItem "rhsusf_acc_eotech_552_d";
_this addPrimaryWeaponItem "RH_peq2_top";
_this addPrimaryWeaponItem "rhsusf_acc_grip3";
_this addWeapon "rhsusf_weap_m9";
_this addWeapon "Binocular";

comment "Add items";
_this linkItem "ItemMap";
_this linkItem "ItemCompass";
_this linkItem "tf_microdagr";
_this linkItem "TFAR_anprc152";

comment "Set identity";
_this setFace "WhiteHead_11";
_this setSpeaker "male06eng";
