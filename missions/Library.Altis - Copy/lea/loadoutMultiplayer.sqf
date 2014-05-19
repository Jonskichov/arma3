/**
* Generated by LEA for Arma 3
* Version: 2.0.17
* Tue May 13 01:12:47 BST 2014
* Mission file name: Library.Altis - Copy
* Mission name: Library.Altis - Copy
* Required mods:
* + ArmA 3
* 
* Call the script: _dummy = [] execvm "lea\loadoutMultiplayer.sqf";
* 
*/

/**
* Loadout for crates
*/

//Empty, nothing to do. unit chopper
//Empty, nothing to do. unit truck_1
//Empty, nothing to do. unit truck_2
//Empty, nothing to do. unit truck_3
//Empty, nothing to do. unit apc_1
//Empty, nothing to do. unit heli_2
//Empty, nothing to do. unit heli_1
//Empty, nothing to do. unit apc_2
//Empty, nothing to do. unit apc_3
//Empty, nothing to do. unit apc_4

/**
* Loadout for soldiers units
*/

if (player == unit_0_0) exitwith {
removeallweapons unit_0_0;
removeallassigneditems unit_0_0;
removeHeadgear unit_0_0;
removeUniform unit_0_0;
removeBackpack unit_0_0;
removeVest unit_0_0;

unit_0_0 addBackpack "B_TacticalPack_blk";
(backpackContainer unit_0_0) addmagazinecargoGlobal ["30Rnd_65x39_caseless_green_mag_Tracer",1];
unit_0_0 addWeapon "arifle_Katiba_C_F";
removeBackpack unit_0_0;
unit_0_0 addPrimaryWeaponItem "optic_ACO_grn";
unit_0_0 addBackpack "B_TacticalPack_blk";
(backpackContainer unit_0_0) addmagazinecargoGlobal ["16Rnd_9x21_Mag",1];
unit_0_0 addWeapon "hgun_P07_F";
removeBackpack unit_0_0;
unit_0_0 addHandgunItem "muzzle_snds_L";
unit_0_0 addBackpack "B_TacticalPack_ocamo";
clearItemCargoGlobal (backpackContainer unit_0_0);
clearMagazineCargoGlobal (backpackContainer unit_0_0);
clearWeaponCargoGlobal (backpackContainer unit_0_0);
unit_0_0 addVest "V_Chestrig_khk";
clearItemCargoGlobal (vestContainer unit_0_0);
clearMagazineCargoGlobal (vestContainer unit_0_0);
clearWeaponCargoGlobal (vestContainer unit_0_0);
(vestContainer unit_0_0) addmagazinecargoGlobal ["30Rnd_65x39_caseless_green",2];
unit_0_0 addUniform "U_B_CombatUniform_mcam_tshirt";
clearItemCargoGlobal (uniformContainer unit_0_0);
clearMagazineCargoGlobal (uniformContainer unit_0_0);
clearWeaponCargoGlobal (uniformContainer unit_0_0);
unit_0_0 selectWeapon (primaryWeapon unit_0_0);
};
