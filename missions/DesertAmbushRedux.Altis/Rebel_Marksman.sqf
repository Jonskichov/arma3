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
_unit addMagazines ["10Rnd_762x51_Mag", 8];

_unit addWeapon "srifle_DMR_01_F";
_unit addPrimaryWeaponItem "optic_DMS";
_unit addWeapon "hgun_ACPC2_F";

_unit addMagazines ["HandGrenade", 4];
_unit addMagazines ["SmokeShellGreen", 1];
_unit addMagazines ["SmokeShellRed", 1];
_unit addMagazines ["SmokeShell", 1];

_unit addWeapon "Binocular";

_pack = unitBackpack _unit;
_pack addMagazineCargo ["HandGrenade", 4];
_pack addItemCargo ["FirstAidKit", 3];
_pack addMagazineCargo ["10Rnd_762x51_Mag", 6];

