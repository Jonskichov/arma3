_unit = _this select 0;
_useHelmets = _this select 1;

waitUntil {!(isNull _unit) && alive _unit && time > 0};
if (!local _unit) exitWith {};

_handle = [_unit, _useHelmets] execVM "Rebel\Rebel_Uniform.sqf";
waitUntil {scriptDone _handle};

removeAllWeapons _unit;


_unit addMagazines ["150Rnd_762x51_Box_Tracer", 1];
_unit addWeapon "LMG_Zafir_F";
_optics = ["optic_ACO", "optic_ACO_grn", "optic_Holosight"];
_optic = _optics call BIS_fnc_selectRandom;
_unit addPrimaryWeaponItem _optic;

_unit addMagazines ["9Rnd_45ACP_Mag", 1];
_unit addWeapon "hgun_ACPC2_F";

_unit addWeapon "Binocular";


_unit addMagazines ["9Rnd_45ACP_Mag", 2];
_unit addItem "FirstAidKit";
_unit addItem "FirstAidKit";

_unit addMagazines ["150Rnd_762x51_Box_Tracer", 2];
_unit addMagazines ["HandGrenade", 2];


_pack = unitBackpack _unit;
_pack addItemCargo ["FirstAidKit", 1];
_pack addMagazineCargo ["150Rnd_762x51_Box_Tracer", 2];
_pack addMagazineCargo ["HandGrenade", 4];
_pack addMagazineCargo ["SmokeShellRed", 1];
_pack addMagazineCargo ["SmokeShell", 1];
_pack addMagazineCargo ["SmokeShellBlue", 1];
_pack addMagazineCargo ["Chemlight_green", 3];



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

