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
_this forceAddUniform "nomex_Olive";
for "_i" from 1 to 4 do {_this addItemToUniform "ACE_fieldDressing";};
for "_i" from 1 to 2 do {_this addItemToUniform "ACE_elasticBandage";};
for "_i" from 1 to 4 do {_this addItemToUniform "ACE_packingBandage";};
for "_i" from 1 to 2 do {_this addItemToUniform "ACE_tourniquet";};
_this addItemToUniform "ACE_EarPlugs";
for "_i" from 1 to 2 do {_this addItemToUniform "rhsusf_mag_15Rnd_9x19_FMJ";};
for "_i" from 1 to 2 do {_this addItemToUniform "Chemlight_green";};
_this addVest "Airchew_vest_NH";
for "_i" from 1 to 4 do {this addItemToVest "rhs_mag_30Rnd_556x45_M855_Stanag";};
for "_i" from 1 to 2 do {this addItemToVest "rhs_mag_an_m8hc";};
for "_i" from 1 to 2 do {this addItemToVest "ACE_HandFlare_Red";};
_this addItemToVest "Simc_PVS7";
_this addItemToVest "ACE_IR_Strobe_Item";
_this addHeadgear "SP_SPH4Helmet_Black";
_this addGoggles "rhsusf_shemagh_od";

comment "Add weapons";
_this addWeapon "rhs_weap_m4_carryhandle";
_this addWeapon "rhsusf_weap_m9";
_this addWeapon "Binocular";

comment "Add items";
_this linkItem "ItemMap";
_this linkItem "ItemCompass";
_this linkItem "tf_microdagr";
_this linkItem "tf_anprc152";

comment "Set identity";
_this setFace "WhiteHead_17";
_this setSpeaker "male08eng";
