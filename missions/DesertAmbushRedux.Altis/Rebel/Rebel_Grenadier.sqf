_unit = _this select 0;
_useHelmets = _this select 1;

waitUntil {!(isNull _unit) && alive _unit && time > 0};
if (!local _unit) exitWith {};

_handle = [_unit, _useHelmets] execVM "Rebel\Rebel_Uniform.sqf";
waitUntil {scriptDone _handle};

removeAllWeapons _unit;

_unit addMagazines ["9Rnd_45ACP_Mag", 3];
_unit addMagazines ["Chemlight_green", 1];
_unit addMagazines ["Chemlight_red", 1];
_unit addMagazines ["Chemlight_blue", 1];
_unit addItem "FirstAidKit";
_unit addMagazines ["30Rnd_556x45_Stanag_Tracer_Red", 9];
_unit addMagazines ["1Rnd_HE_Grenade_shell", 5];

_rifles = ["arifle_Mk20_GL_F", "arifle_TRG21_GL_F"];
_rifle = _rifles call BIS_fnc_selectRandom;
_unit addWeapon _rifle;
_unit addPrimaryWeaponItem "optic_MRCO";
_unit addWeapon "hgun_ACPC2_F";

_unit addMagazines ["HandGrenade", 4];
_unit addMagazines ["SmokeShellGreen", 1];
_unit addMagazines ["SmokeShellRed", 1];
_unit addMagazines ["SmokeShell", 1];

_unit addWeapon "Binocular";

_pack = unitBackpack _unit;
_pack addMagazineCargo ["1Rnd_HE_Grenade_shell", 6];
_pack addMagazineCargo ["HandGrenade", 4];
_pack addItemCargo ["FirstAidKit", 2];

