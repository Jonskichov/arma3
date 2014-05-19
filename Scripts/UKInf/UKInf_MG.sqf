_unit = _this select 0;

if (!local _unit) exitWith {};
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

_unit addHeadgear "H_HelmetB_snakeskin";
_uniforms = ["U_B_CTRG_1", "U_B_CTRG_2", "U_B_CTRG_3"];
_uniform = _uniforms call BIS_fnc_selectRandom;
_unit addUniform _uniform;
_unit addVest "V_PlateCarrierH_CTRG";

_unit addMagazines ["16Rnd_9x21_Mag", 3];
_unit addMagazines ["Chemlight_green", 1];
_unit addMagazines ["Chemlight_red", 1];
_unit addMagazines ["Chemlight_blue", 1];
_unit addMagazines ["100Rnd_65x39_caseless_mag_Tracer", 5];

_unit addWeapon "arifle_MX_SW_Black_F";
_unit addPrimaryWeaponItem "optic_ACO_grn";

_unit addWeapon "hgun_P07_F";

_unit addMagazines ["HandGrenade", 4];
_unit addMagazines ["SmokeShellGreen", 1];
_unit addMagazines ["SmokeShellRed", 1];
_unit addMagazines ["SmokeShell", 1];
_unit addItem "FirstAidKit";

_unit addWeapon "Binocular";

_unit addBackpack "B_AssaultPack_rgr";
_pack = unitBackpack _unit;

_pack addMagazineCargo ["100Rnd_65x39_caseless_mag_Tracer", 4];
_pack addMagazineCargo ["HandGrenade", 4];
_pack addItemCargo ["FirstAidKit", 2];
