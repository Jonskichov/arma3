                       
comment "UK equipment";

_unit = _this select 0;
_weapon = _this select 1;
_suppressor = _this select 2;
_light = _this select 3;


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


comment "Add clothes";
_unit forceAddUniform (["U_B_CTRG_1","U_B_CTRG_3"] call BIS_fnc_selectRandom);
if (_light) then {
	_unit addHeadgear "H_HelmetB_light_snakeskin";
	_unit addVest "V_PlateCarrierL_CTRG";
}
else {
	_unit addVest "V_PlateCarrierH_CTRG";
	_unit addHeadgear "H_HelmetB_snakeskin";
};


comment "Add equipment";
for "_i" from 1 to 3 do {_unit addItemToUniform "FirstAidKit";};
for "_i" from 1 to 2 do {_unit addItemToVest "HandGrenade";};
for "_i" from 1 to 1 do {_unit addItemToVest "SmokeShell";};
for "_i" from 1 to 2 do {_unit addItemToVest "Chemlight_green";};


if (_weapon == "AT" || _weapon == "Demo" || _weapon == "Medic") then {
	_unit addBackpack "B_Kitbag_rgr";
	if (_weapon == "Medic") then {                                    
		for "_i" from 1 to 1 do {_unit addItemToVest "SmokeShell";};
		for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShellRed";};
		for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShellBlue";};
		for "_i" from 1 to 2 do {_unit addItemToVest "Chemlight_red";};
		for "_i" from 1 to 2 do {_unit addItemToVest "Chemlight_blue";}; 
		_unit addItemToBackpack "Medikit";
		for "_i" from 1 to 6 do {_unit addItemToBackpack "FirstAidKit";};
	};
	if (_weapon == "Demo") then {
		_unit addItemToBackpack "MineDetector";
		_unit addItemToBackpack "ToolKit";
		for "_i" from 1 to 4 do {_unit addItemToBackpack "DemoCharge_Remote_Mag";};
	};
}
else {      
	if (!_light) then {                                                    
		_unit addBackpack "B_AssaultPack_rgr";
	};
	for "_i" from 1 to 2 do {_unit addItemToVest "HandGrenade";};
	for "_i" from 1 to 1 do {_unit addItemToVest "SmokeShell";};
};


comment "Add items";
_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ItemWatch";
_unit linkItem "ItemRadio";
_unit linkItem "ItemGPS";
_unit linkItem "NVGoggles_OPFOR";
_unit addWeapon "Binocular";


comment "Set identity";
_unit setSpeaker (["Male01ENGB","Male02ENGB","Male03ENGB","Male04ENGB","Male05ENGB"] call BIS_fnc_selectRandom);


comment "Add weapons";
if (_weapon == "MXGL") then {
	for "_i" from 1 to 6 do {_unit addItemToVest "30Rnd_65x39_caseless_mag";};
	for "_i" from 1 to 6 do {_unit addItemToVest "1Rnd_HE_Grenade_shell";};
	_unit addWeapon "arifle_MX_GL_Black_F";
	_unit addItemToVest "30Rnd_65x39_caseless_mag";
	_unit addItemToVest "1Rnd_HE_Grenade_shell";
	_unit addPrimaryWeaponItem "acc_pointer_IR";
	_unit addPrimaryWeaponItem "optic_Hamr";
	if (_suppressor) then {
		_unit addPrimaryWeaponItem "muzzle_snds_H";
	};
};
if (_weapon == "MXM") then {
	for "_i" from 1 to 6 do {_unit addItemToVest "30Rnd_65x39_caseless_mag";};
	_unit addWeapon "arifle_MXM_Black_F";
	_unit addItemToVest "30Rnd_65x39_caseless_mag";
	_unit addPrimaryWeaponItem "acc_pointer_IR";
	_unit addPrimaryWeaponItem "optic_SOS";
	_unit addPrimaryWeaponItem "bipod_01_F_blk";
	if (_suppressor) then {
		_unit addPrimaryWeaponItem "muzzle_snds_H";
	};
};
if (_weapon == "MXSW") then {
	for "_i" from 1 to 4 do {_unit addItemToVest "100Rnd_65x39_caseless_mag_Tracer";};
	_unit addWeapon "arifle_MX_SW_Black_F";
	_unit addItemToVest "100Rnd_65x39_caseless_mag_Tracer";
	_unit addPrimaryWeaponItem "acc_pointer_IR";
	_unit addPrimaryWeaponItem "optic_Hamr";
	_unit addPrimaryWeaponItem "bipod_01_F_blk";
	if (_suppressor) then {
		_unit addPrimaryWeaponItem "muzzle_snds_H";
	};
};
if (_weapon == "Sting") then {
	for "_i" from 1 to 6 do {_unit addItemToVest "30Rnd_9x21_Mag";};
	_unit addWeapon "SMG_02_F";
	_unit addItemToVest "30Rnd_9x21_Mag";
	_unit addPrimaryWeaponItem "acc_flashlight";
	_unit addPrimaryWeaponItem "optic_Aco_smg";
	if (_suppressor) then {
		_unit addPrimaryWeaponItem "muzzle_snds_L";
	};
};
if (_weapon == "Vermin") then {
	for "_i" from 1 to 6 do {_unit addItemToVest "30Rnd_45ACP_Mag_SMG_01";};
	_unit addWeapon "SMG_01_F";
	_unit addItemToVest "30Rnd_45ACP_Mag_SMG_01";
	_unit addPrimaryWeaponItem "optic_Aco_smg";
	if (_suppressor) then {
		_unit addPrimaryWeaponItem "muzzle_snds_acp";
	};
};
if (_weapon == "MXC" || _weapon == "Medic" || _weapon == "Demo" || _weapon == "AT") then {
	for "_i" from 1 to 6 do {_unit addItemToVest "30Rnd_65x39_caseless_mag";};
	_unit addWeapon "arifle_MXC_Black_F";
	_unit addItemToVest "30Rnd_65x39_caseless_mag";
	_unit addPrimaryWeaponItem "optic_Aco";
	if (_light) then {
		_unit addPrimaryWeaponItem "acc_flashlight";
	}
	else {
		_unit addPrimaryWeaponItem "acc_pointer_IR";
	};
	if (_suppressor) then {
		_unit addPrimaryWeaponItem "muzzle_snds_H";
	};
	
	if (_weapon == "AT") then {
		_unit addItemToBackpack "Titan_AT";
		_unit addWeapon "launch_I_Titan_short_F";
		_unit addItemToBackpack "Titan_AT";
		_unit addItemToBackpack "Titan_AP";
	};
};

for "_i" from 1 to 2 do {_unit addItemToUniform "11Rnd_45ACP_Mag";};
_unit addWeapon "hgun_Pistol_heavy_01_F";
_unit addItemToUniform "11Rnd_45ACP_Mag";
_unit addHandgunItem "optic_MRD";
if (_suppressor) then {
	_unit addHandgunItem "muzzle_snds_acp";
};
