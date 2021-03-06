_unit = _this select 0;

waitUntil {!(isNull _unit) && alive _unit && time > 0}; 
if (!local _unit) exitWith {};

removeAllAssignedItems _unit; 
removeAllWeapons _unit;
removeHeadgear _unit;
removeAllItems _unit;

_unit addHeadgear "H_Beret_grn";

_unit addMagazines ["30Rnd_9x21_Mag", 5];
_unit addWeapon "hgun_PDW2000_F";
_unit addPrimaryWeaponItem "optic_ACO_grn_smg";

_unit addMagazines ["9Rnd_45ACP_Mag", 5];
_unit addWeapon "hgun_ACPC2_F";

_unit addMagazines ["HandGrenade", 4];
