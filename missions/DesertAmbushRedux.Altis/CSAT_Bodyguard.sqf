_unit = _this select 0;

if (!local _unit) exitWith {};
waitUntil {!(isNull _unit) && alive _unit && time > 0};
 
_unit addHeadgear "H_Beret_ocamo";
removeAllAssignedItems _unit;
removeAllWeapons _unit;
_unit addMagazines ["30Rnd_9x21_Mag", 5];
_unit addWeapon "SMG_02_F";
_unit addPrimaryWeaponItem "optic_ACO_grn_smg";
_unit addMagazines ["16Rnd_9x21_Mag", 5];
_unit addWeapon "hgun_Rook40_F";
_unit addMagazines ["HandGrenade", 4];

