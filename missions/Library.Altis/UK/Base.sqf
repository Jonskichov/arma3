                       
comment "Base UK equipment";

_unit = _this select 0;

comment "Remove existing items";
removeAllWeapons _unit;
removeAllItems _unit;
removeAllAssignedItems _unit;
removeUniform _unit;
removeVest _unit;
removeBackpack _unit;
removeHeadgear _unit;

comment "Add containers";
_unit forceAddUniform "U_B_CTRG_1";
for "_i" from 1 to 3 do {_unit addItemToUniform "FirstAidKit";};
for "_i" from 1 to 2 do {_unit addItemToUniform "11Rnd_45ACP_Mag";};
_unit addVest "V_PlateCarrierH_CTRG";
for "_i" from 1 to 4 do {_unit addItemToVest "HandGrenade";};
for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShell";};
for "_i" from 1 to 2 do {_unit addItemToVest "Chemlight_green";};
_unit addBackpack "B_AssaultPack_rgr";
_unit addHeadgear "H_HelmetB_snakeskin";

comment "Add weapons";
_unit addWeapon "hgun_Pistol_heavy_01_F";
_unit addItemToUniform "11Rnd_45ACP_Mag";
_unit addHandgunItem "optic_MRD";
_unit addWeapon "Binocular";

comment "Add items";
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "ItemRadio";
_unit linkItem "ItemGPS";
_unit linkItem "NVGoggles_OPFOR";

comment "Set identity";
_handle = [_unit] execVM "UK\Identity.sqf";
