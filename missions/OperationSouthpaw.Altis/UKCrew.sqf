
_vehicle = _this select 0;

waitUntil {!(isNull _vehicle) && alive _vehicle && time > 0};
if (!local _vehicle) exitWith {};


_crew = [(driver _vehicle), (gunner _vehicle), (commander _vehicle)];
{
	waitUntil {!(isNull _x) && alive _x && time > 0};
	if (!local _x) exitWith {};
	
	
	comment "Remove existing items";
	removeAllWeapons _x;
	removeAllItems _x;
	removeAllAssignedItems _x;
	removeUniform _x;
	removeVest _x;
	removeBackpack _x;
	removeHeadgear _x;


	comment "Add clothes";
	_x forceAddUniform "U_B_CTRG_2";
	_x addHeadgear "H_HelmetCrew_B";
	_x addVest "V_BandollierB_rgr";
	
	
	comment "Add equipment";
	for "_i" from 1 to 3 do {_x addItemToUniform "FirstAidKit";};
	for "_i" from 1 to 1 do {_x addItemToVest "SmokeShell";};
	for "_i" from 1 to 2 do {_x addItemToVest "Chemlight_green";};
	
	
	comment "Add items";
	_x linkItem "ItemMap";
	_x linkItem "ItemCompass";
	_x linkItem "ItemWatch";
	_x linkItem "ItemRadio";
	
	
	comment "Set identity";
	_x setSpeaker (["Male01ENGB","Male02ENGB","Male03ENGB","Male04ENGB","Male05ENGB"] call BIS_fnc_selectRandom);
	
	
	comment "Add weapons";
	_x addItemToVest "30Rnd_65x39_caseless_mag";
	_x addWeapon "arifle_MXC_Black_F";
	for "_i" from 1 to 4 do {_x addItemToVest "30Rnd_65x39_caseless_mag";};
	_x addPrimaryWeaponItem "optic_Aco";
	
	_x addItemToUniform "11Rnd_45ACP_Mag";
	_x addWeapon "hgun_Pistol_heavy_01_F";
	for "_i" from 1 to 2 do {_x addItemToUniform "11Rnd_45ACP_Mag";};
}
forEach (_crew);