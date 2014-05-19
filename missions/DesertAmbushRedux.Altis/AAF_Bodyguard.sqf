_unit = _this select 0;

if (!local _unit) exitWith {};
waitUntil {!(isNull _unit) && alive _unit && time > 0}; 

_unit addHeadgear "H_Beret_grn";
removeAllAssignedItems _unit; 
removeAllWeapons _unit;
_unit addMagazines ["30Rnd_9x21_Mag", 5];
_unit addWeapon "hgun_PDW2000_F";
_unit addPrimaryWeaponItem "optic_Holosight_smg";
_unit addMagazines ["9Rnd_45ACP_Mag", 5];
_unit addWeapon "hgun_ACPC2_F";
_unit addMagazines ["HandGrenade", 4];
