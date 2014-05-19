_unit = _this select 0;

if (!local _unit) exitWith {};
waitUntil {!(isNull _unit) && alive _unit && time > 0};

removeAllWeapons _unit;
_unit addMagazines ["9Rnd_45ACP_Mag", 5];
_unit addWeapon "hgun_ACPC2_F";
