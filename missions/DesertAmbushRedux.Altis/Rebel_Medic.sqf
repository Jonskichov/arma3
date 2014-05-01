_unit = _this select 0;
_useHelmets = _this select 1;

if (!isServer) exitWith {};
waitUntil {!(isNull _unit) && alive _unit && time > 0};

_handle = [_unit, _useHelmets] execVM "Rebel_Uniform.sqf";
waitUntil {scriptDone _handle};

removeAllWeapons _unit;

_unit addMagazines ["9Rnd_45ACP_Mag", 3];
_unit addMagazines ["Chemlight_green", 1];
_unit addMagazines ["Chemlight_red", 1];
_unit addMagazines ["Chemlight_blue", 1];
_unit addItem "FirstAidKit";
_unit addMagazines ["30Rnd_556x45_Stanag_Tracer_Red", 9];

_rifles = ["arifle_Mk20C_F", "arifle_TRG20_F"];
_rifle = _rifles call BIS_fnc_selectRandom;
_unit addWeapon _rifle;

_optics = ["optic_ACO", "optic_ACO_grn", "optic_Holosight"];
_optic = _optics call BIS_fnc_selectRandom;
_unit addPrimaryWeaponItem _optic;

_unit addWeapon "hgun_ACPC2_F";

_unit addMagazines ["HandGrenade", 4];
_unit addMagazines ["SmokeShellGreen", 1];
_unit addMagazines ["SmokeShellRed", 1];
_unit addMagazines ["SmokeShell", 3];

_unit addWeapon "Binocular";

_pack = unitBackpack _unit;
_pack addItemCargo ["Medikit", 1];
_pack addItemCargo ["FirstAidKit", 8];

