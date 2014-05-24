_unit = _this select 0;
_useHelmets = _this select 1;

waitUntil {!(isNull _unit) && alive _unit && time > 0};
if (!local _unit) exitWith {};

_handle = [_unit, _useHelmets] execVM "Rebel\Rebel_Uniform.sqf";
waitUntil {scriptDone _handle};

removeAllWeapons _unit;


_unit addMagazines ["30Rnd_556x45_Stanag_Tracer_Red", 1];
_unit addMagazines ["1Rnd_HE_Grenade_shell", 1];
_rifles = ["arifle_Mk20_GL_F", "arifle_TRG21_GL_F"];
_rifle = _rifles call BIS_fnc_selectRandom;
_unit addWeapon _rifle;
_unit addPrimaryWeaponItem "optic_MRCO";

_unit addMagazines ["9Rnd_45ACP_Mag", 1];
_unit addWeapon "hgun_ACPC2_F";

_unit addWeapon "Binocular";


_unit addMagazines ["9Rnd_45ACP_Mag", 2];
_unit addItem "FirstAidKit";
_unit addItem "FirstAidKit";

_unit addMagazines ["30Rnd_556x45_Stanag_Tracer_Red", 4];
_unit addMagazines ["HandGrenade", 4];
_unit addMagazines ["1Rnd_HE_Grenade_shell", 4];


_pack = unitBackpack _unit;
_pack addItemCargo ["FirstAidKit", 1];
_pack addMagazineCargo ["30Rnd_556x45_Stanag_Tracer_Red", 4];
_pack addMagazineCargo ["HandGrenade", 4];
_pack addMagazineCargo ["1Rnd_HE_Grenade_shell", 4];
_pack addMagazineCargo ["SmokeShellGreen", 1];
_pack addMagazineCargo ["SmokeShellRed", 1];
_pack addMagazineCargo ["SmokeShell", 1];
_pack addMagazineCargo ["Chemlight_green", 1];
_pack addMagazineCargo ["Chemlight_red", 1];
_pack addMagazineCargo ["Chemlight_blue", 1];

