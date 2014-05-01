_unit = _this select 0;

if (!isServer) exitWith {};
waitUntil {!(isNull _unit) && alive _unit && time > 0};


_voices = ["Male01ENGB","Male02ENGB","Male03ENGB","Male04ENGB"];
_voice = _voices call BIS_fnc_selectRandom;
_unit setSpeaker _voice;

removeAllWeapons _unit;
removeAllItems _unit;
removeHeadgear _unit;
removeUniform _unit;
removeVest _unit;
removeBackpack _unit;

_unit addHeadgear "H_HelmetB_light_snakeskin";
_unit addUniform "U_B_GhillieSuit";
_unit addVest "V_PlateCarrierL_CTRG";

_unit addMagazines ["16Rnd_9x21_Mag", 3];
_unit addMagazines ["Chemlight_green", 1];
_unit addMagazines ["Chemlight_red", 1];
_unit addMagazines ["Chemlight_blue", 1];
_unit addMagazines ["20Rnd_762x51_Mag", 9];

_unit addWeapon "srifle_EBR_F";
_unit addPrimaryWeaponItem "acc_pointer_IR";
_unit addPrimaryWeaponItem "optic_Hamr";
_unit addPrimaryWeaponItem "muzzle_snds_B";

_unit addWeapon "hgun_P07_F";
_unit addHandgunItem "muzzle_snds_L";

_unit addMagazines ["HandGrenade", 4];
_unit addMagazines ["SmokeShellGreen", 1];
_unit addMagazines ["SmokeShellRed", 1];
_unit addMagazines ["SmokeShell", 1];
_unit addItem "FirstAidKit";

_unit addWeapon "Rangefinder";

_unit addBackpack "B_AssaultPack_rgr";
_pack = unitBackpack _unit;

_pack addItemCargo ["FirstAidKit", 2];
_pack addMagazineCargo ["SLAMDirectionalMine_Wire_Mag", 3];
_pack addMagazineCargo ["SLAMDirectionalMine_Wire_Mag", 3];
