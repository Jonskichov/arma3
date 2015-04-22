_unit = _this select 0;

waitUntil {!(isNull _unit) && alive _unit && time > 0};
if (!local _unit) exitWith {};


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
_unit addBackpack "B_AssaultPack_rgr";


_unit addMagazines ["20Rnd_762x51_Mag", 1];
_unit addWeapon "srifle_EBR_F";
_unit addPrimaryWeaponItem "acc_pointer_IR";
_unit addPrimaryWeaponItem "optic_Hamr";
_unit addPrimaryWeaponItem "muzzle_snds_B";

_unit addMagazines ["11Rnd_45ACP_Mag", 1];
_unit addWeapon "hgun_Pistol_heavy_01_F";
_unit addHandgunItem "muzzle_snds_acp";
_unit addHandgunItem "optic_MRD";

_unit addWeapon "Rangefinder";


_unit addMagazines ["11Rnd_45ACP_Mag", 4];
_unit addItem "FirstAidKit";
_unit addItem "FirstAidKit";
_unit addItem "FirstAidKit";

_unit addMagazines ["20Rnd_762x51_Mag", 6];
_unit addMagazines ["HandGrenade", 4];


_pack = unitBackpack _unit;
_pack addMagazineCargo ["20Rnd_762x51_Mag", 4];
_pack addMagazineCargo ["SLAMDirectionalMine_Wire_Mag", 4];
_pack addMagazineCargo ["SmokeShellGreen", 1];
_pack addMagazineCargo ["SmokeShellRed", 1];
_pack addMagazineCargo ["SmokeShell", 1];
_pack addMagazineCargo ["Chemlight_green", 1];
_pack addMagazineCargo ["Chemlight_red", 1];
_pack addMagazineCargo ["Chemlight_blue", 1];
