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

_unit addHeadgear "H_HelmetB_snakeskin";
_uniforms = ["U_B_CTRG_1", "U_B_CTRG_2", "U_B_CTRG_3"];
_uniform = _uniforms call BIS_fnc_selectRandom;
_unit addUniform _uniform;
_unit addVest "V_PlateCarrierH_CTRG";

_unit addMagazines ["16Rnd_9x21_Mag", 3];
_unit addMagazines ["Chemlight_green", 1];
_unit addMagazines ["Chemlight_red", 1];
_unit addMagazines ["Chemlight_blue", 1];
_unit addMagazines ["30Rnd_65x39_caseless_mag_Tracer", 9];
_unit addMagazines ["1Rnd_HE_Grenade_shell", 5];

_unit addWeapon "arifle_MX_GL_Black_F";
_unit addPrimaryWeaponItem "optic_Hamr";

_unit addWeapon "hgun_P07_F";

_unit addMagazines ["HandGrenade", 5];
_unit addMagazines ["SmokeShellGreen", 1];
_unit addMagazines ["SmokeShellRed", 1];
_unit addMagazines ["SmokeShell", 1];
_unit addItem "FirstAidKit";

_unit addWeapon "Binocular";

_unit addBackpack "B_AssaultPack_rgr";
_pack = unitBackpack _unit;

_pack addMagazineCargo ["1Rnd_HE_Grenade_shell", 4];
_pack addMagazineCargo ["HandGrenade", 3];
_pack addItemCargo ["FirstAidKit", 2];
_pack addMagazineCargo ["DemoCharge_Remote_Mag", 1];
_pack addMagazineCargo ["APERSBoundingMine_Range_Mag", 2];
