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

_unit addHeadgear "H_HelmetB_snakeskin";
_uniforms = ["U_B_CTRG_1", "U_B_CTRG_2", "U_B_CTRG_3"];
_uniform = _uniforms call BIS_fnc_selectRandom;
_unit addUniform _uniform;
_unit addVest "V_PlateCarrierH_CTRG";
_unit addBackpack "B_Kitbag_rgr";


_unit addMagazines ["30Rnd_65x39_caseless_mag_Tracer", 1];
_unit addWeapon "arifle_MXC_Black_F";
_unit addPrimaryWeaponItem "optic_ACO_grn";

_unit addMagazines ["11Rnd_45ACP_Mag", 1];
_unit addWeapon "hgun_Pistol_heavy_01_F";
_unit addHandgunItem "optic_MRD";

_unit addMagazines ["Titan_AA", 1];
_unit addWeapon "launch_Titan_F";

_unit addWeapon "Binocular";


_unit addMagazines ["11Rnd_45ACP_Mag", 2];
_unit addItem "FirstAidKit";
_unit addItem "FirstAidKit";
_unit addItem "FirstAidKit";

_unit addMagazines ["30Rnd_65x39_caseless_mag_Tracer", 8];
_unit addMagazines ["HandGrenade", 4];

_pack = unitBackpack _unit;
_pack addMagazineCargo ["Titan_AA", 2];
_pack addMagazineCargo ["SmokeShellRed", 1];
_pack addMagazineCargo ["SmokeShell", 1];
_pack addMagazineCargo ["SmokeShellBlue", 1];
_pack addMagazineCargo ["Chemlight_green", 3];


