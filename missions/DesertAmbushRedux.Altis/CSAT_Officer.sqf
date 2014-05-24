_unit = _this select 0;

waitUntil {!(isNull _unit) && alive _unit && time > 0};
if (!local _unit) exitWith {};

removeAllWeapons _unit;
removeAllItems _unit;

_unit addMagazines ["16Rnd_9x21_Mag", 5];
_unit addWeapon "hgun_Rook40_F";
