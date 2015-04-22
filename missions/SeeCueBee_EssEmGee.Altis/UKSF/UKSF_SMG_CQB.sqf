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
_uniforms = ["U_B_CTRG_1", "U_B_CTRG_2", "U_B_CTRG_3"];
_uniform = _uniforms call BIS_fnc_selectRandom;
_unit addUniform _uniform;
_unit addVest "V_PlateCarrierL_CTRG";


_unit addMagazines ["30Rnd_45ACP_Mag_SMG_01_tracer_green", 1];
_unit addWeapon "SMG_01_F";
_unit addPrimaryWeaponItem "optic_Holosight_smg";

_unit addMagazines ["11Rnd_45ACP_Mag", 1];
_unit addWeapon "hgun_Pistol_heavy_01_F";
_unit addHandgunItem "optic_MRD";

_unit addWeapon "Binocular";


_unit addMagazines ["11Rnd_45ACP_Mag", 2];
_unit addItem "FirstAidKit";
_unit addItem "FirstAidKit";
_unit addItem "FirstAidKit";
                                      
_unit addItem "muzzle_snds_acp";                 
_unit addItem "muzzle_snds_acp";
_unit addMagazines ["30Rnd_45ACP_Mag_SMG_01_tracer_green", 6];
_unit addMagazines ["HandGrenade", 6];
_unit addMagazines ["SmokeShell", 1];
_unit addMagazines ["SmokeShellRed", 1];
_unit addMagazines ["Chemlight_green", 1];
_unit addMagazines ["Chemlight_red", 1];
