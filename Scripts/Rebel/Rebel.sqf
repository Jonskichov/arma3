
comment "Rebel equipment";

_unit = _this select 0;
_weapon = _this select 1;
_helmet = _this select 2;


waitUntil {!(isNull _unit) && alive _unit && time > 0};
if (!local _unit) exitWith {};


comment "Remove existing items";
removeAllWeapons _unit;
removeAllItems _unit;
removeAllAssignedItems _unit;
removeUniform _unit;
removeVest _unit;
removeBackpack _unit;
removeHeadgear _unit;


comment "Random clothes";
_uniforms = ["U_BG_Guerrilla_6_1", "U_BG_Guerilla1_1", "U_BG_Guerilla2_2", "U_BG_Guerilla2_1", "U_BG_Guerilla2_3"]; 
_vests = ["V_TacVest_khk", "V_TacVest_brn", "V_TacVest_oli", "V_TacVest_blk", "V_TacVest_camo"];
_backpacks = ["B_FieldPack_blk", "B_FieldPack_cbr", "B_FieldPack_khk", "B_FieldPack_ocamo", "B_FieldPack_oli", "B_FieldPack_oucamo"];
_helmets = ["H_HelmetIA", "H_HelmetB", "H_HelmetB_black", "H_HelmetB_desert", "H_HelmetB_grass"];
_headgears = ["H_Shemag_olive_hs", "H_MilCap_gry", "H_MilCap_blue", "H_Cap_oli_hs", "H_Booniehat_khk_hs", "H_Watchcap_blk", "H_Watchcap_khk", "H_Bandanna_khk_hs"];


comment "Add clothes";
_unit forceAddUniform (_uniforms call BIS_fnc_selectRandom);
_unit addVest (_vests call BIS_fnc_selectRandom);                                         
_unit addBackpack (_backpacks call BIS_fnc_selectRandom);
if (_helmet) then {
	_unit addHeadgear (_helmets call BIS_fnc_selectRandom);
}
else {
	_unit addHeadgear (_headgears call BIS_fnc_selectRandom);
};


comment "Add equipment";
for "_i" from 1 to 2 do {_unit addItemToUniform "FirstAidKit";};
for "_i" from 1 to 3 do {_unit addItemToVest "HandGrenade";};        
for "_i" from 1 to 2 do {_unit addItemToVest "Chemlight_green";};    
for "_i" from 1 to 1 do {_unit addItemToVest "SmokeShell";};
if (_weapon == "Medic") then {
	for "_i" from 1 to 1 do {_unit addItemToVest "SmokeShellRed";};
	for "_i" from 1 to 1 do {_unit addItemToVest "SmokeShellBlue";};
	for "_i" from 1 to 1 do {_unit addItemToVest "Chemlight_red";};
	for "_i" from 1 to 1 do {_unit addItemToVest "Chemlight_blue";}; 
	_unit addItemToBackpack "Medikit";
	for "_i" from 1 to 4 do {_unit addItemToBackpack "FirstAidKit";};
};  
if (_weapon == "Demo") then {
	for "_i" from 1 to 2 do {_unit addItemToBackpack "IEDLandBig_Remote_Mag";};
};  


comment "Add items";
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "ItemRadio";
_unit addWeapon "Binocular";


comment "Add weapons";
if (_weapon == "GL") then {
	_weapons = ["arifle_TRG21_GL_F", "arifle_Mk20_GL_F"];               
	
	_unit addItemToVest "30Rnd_556x45_Stanag";
	_unit addItemToVest "1Rnd_HE_Grenade_shell";
	_unit addWeapon (_weapons call BIS_fnc_selectRandom);
	for "_i" from 1 to 5 do {_unit addItemToVest "30Rnd_556x45_Stanag";};
	for "_i" from 1 to 5 do {_unit addItemToVest "1Rnd_HE_Grenade_shell";};
	_unit addPrimaryWeaponItem "optic_MRCO";
};
if (_weapon == "Zafir") then {
	_optics = ["optic_ACO", "optic_ACO_grn", "optic_Holosight"];
	
	_unit addItemToVest "150Rnd_762x54_Box_Tracer";
	_unit addWeapon "LMG_Zafir_F";
	for "_i" from 1 to 1 do {_unit addItemToVest "150Rnd_762x54_Box_Tracer";};
	for "_i" from 1 to 1 do {_unit addItemToBackpack "150Rnd_762x54_Box_Tracer";};
	_unit addPrimaryWeaponItem (_optics call BIS_fnc_selectRandom);
};
if (_weapon == "M200") then {
	_optics = ["optic_ACO", "optic_ACO_grn", "optic_Holosight"];
	_bipods = ["bipod_03_F_blk", "bipod_02_F_blk", "bipod_01_F_blk"];
	
	_unit addItemToVest "200Rnd_65x39_cased_Box_Tracer";
	_unit addWeapon "LMG_Mk200_F";
	for "_i" from 1 to 1 do {_unit addItemToVest "200Rnd_65x39_cased_Box_Tracer";};
	for "_i" from 1 to 1 do {_unit addItemToBackpack "200Rnd_65x39_cased_Box_Tracer";};
	_unit addPrimaryWeaponItem (_optics call BIS_fnc_selectRandom);
	_unit addPrimaryWeaponItem (_bipods call BIS_fnc_selectRandom);
};
if (_weapon == "Rahim") then {
	_optics = ["optic_DMS", "optic_SOS"];
	_bipods = ["bipod_03_F_blk", "bipod_02_F_blk", "bipod_01_F_blk"];
	
	_unit addItemToVest "10Rnd_762x54_Mag";
	_unit addWeapon "srifle_DMR_01_F";
	for "_i" from 1 to 6 do {_unit addItemToVest "10Rnd_762x54_Mag";};
	for "_i" from 1 to 4 do {_unit addItemToBackpack "10Rnd_762x54_Mag";};
	_unit addPrimaryWeaponItem (_optics call BIS_fnc_selectRandom);
	_unit addPrimaryWeaponItem (_bipods call BIS_fnc_selectRandom);
};
if (_weapon == "Sting") then {
	_optics = ["optic_ACO_grn_smg", "optic_Aco_smg", "optic_Holosight_smg"];
	
	_unit addItemToVest "30Rnd_9x21_Mag";
	_unit addWeapon "SMG_02_F";
	for "_i" from 1 to 5 do {_unit addItemToVest "30Rnd_9x21_Mag";};
	_unit addPrimaryWeaponItem (_optics call BIS_fnc_selectRandom);
};
if (_weapon == "Carbine" || _weapon == "Medic" || _weapon == "AT" || _weapon == "Demo") then {
	_weapons = ["arifle_Mk20C_plain_F", "arifle_Mk20C_F", "arifle_TRG20_F"];
	_optics = ["optic_ACO", "optic_ACO_grn", "optic_Holosight"];
	
	_unit addItemToVest "30Rnd_556x45_Stanag";
	_unit addWeapon (_weapons call BIS_fnc_selectRandom);
	for "_i" from 1 to 6 do {_unit addItemToVest "30Rnd_556x45_Stanag";};
	_unit addPrimaryWeaponItem (_optics call BIS_fnc_selectRandom);
	
	if (_weapon == "AT") then {
		_unit addItemToBackpack "RPG32_F";
		_unit addWeapon "launch_RPG32_F";
		_unit addItemToBackpack "RPG32_F";
		_unit addItemToBackpack "RPG32_HE_F";
	};
};                                                           

for "_i" from 1 to 2 do {_unit addItemToUniform "9Rnd_45ACP_Mag";};
_unit addWeapon "hgun_ACPC2_F";
_unit addItemToUniform "9Rnd_45ACP_Mag";