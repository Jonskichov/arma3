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
_unit addMagazines ["150Rnd_762x51_Box_Tracer", 3];

_unit addWeapon "LMG_Zafir_F";
_optics = ["optic_ACO", "optic_ACO_grn", "optic_Holosight"];
_optic = _optics call BIS_fnc_selectRandom;
_unit addPrimaryWeaponItem _optic;

_unit addWeapon "hgun_ACPC2_F";

_unit addMagazines ["HandGrenade", 4];
_unit addMagazines ["SmokeShellGreen", 1];
_unit addMagazines ["SmokeShellRed", 1];
_unit addMagazines ["SmokeShell", 1];

_unit addWeapon "Binocular";

_pack = unitBackpack _unit;
_pack addMagazineCargo ["150Rnd_762x51_Box_Tracer", 3];
_pack addItemCargo ["FirstAidKit", 3];



/*
_rifles = ["LMG_Zafir_F", "LMG_Mk200_F"];
_rifle = _rifles call BIS_fnc_selectRandom;
*/

/*
if (_rifle == "LMG_Zafir_F") then {
    _unit addMagazines ["150Rnd_762x51_Box_Tracer", 3];
}
else {
    _unit addMagazines ["200Rnd_65x39_cased_Box_Tracer", 3];
};
*/

/*
if (_rifle == "LMG_Zafir_F") then {
    _pack addMagazineCargo ["150Rnd_762x51_Box_Tracer", 3];
}
else {
    _pack addMagazineCargo ["200Rnd_65x39_cased_Box_Tracer", 3];
};
*/

