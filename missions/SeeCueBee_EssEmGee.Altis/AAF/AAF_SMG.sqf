_unit = _this select 0;

waitUntil {!(isNull _unit) && alive _unit && time > 0}; 
if (!local _unit) exitWith {};

_unit unassignItem "NVGoggles_INDEP";
_unit removeItem "NVGoggles_INDEP";
removeAllWeapons _unit;
                                       
_unit addMagazines ["30Rnd_9x21_Mag", 1];  
_unit addWeapon "SMG_02_F";
_unit addPrimaryWeaponItem "optic_ACO_grn_smg";

_unit addMagazines ["9Rnd_45ACP_Mag", 1];
_unit addWeapon "hgun_ACPC2_F";

_unit addMagazines ["9Rnd_45ACP_Mag", 2];
_unit addItem "FirstAidKit";
_unit addItem "FirstAidKit";  
_unit addItem "FirstAidKit";  

_unit addMagazines ["30Rnd_9x21_Mag", 6];
_unit addMagazines ["HandGrenade", 4];
_unit addMagazines ["SmokeShell", 1];
_unit addMagazines ["SmokeShellGreen", 1];
_unit addMagazines ["SmokeShellRed", 1];
_unit addMagazines ["Chemlight_green", 1];
_unit addMagazines ["Chemlight_red", 1];
_unit addMagazines ["Chemlight_blue", 1];
