
_unit = _this select 0;
_useHelmets = _this select 1;

waitUntil {!(isNull _unit) && alive _unit && time > 0};
if (!local _unit) exitWith {};

_backpacks = ["B_FieldPack_blk", "B_FieldPack_cbr", "B_FieldPack_khk", "B_FieldPack_ocamo", "B_FieldPack_oli", "B_FieldPack_oucamo"];
_headgears = ["H_MilCap_dgtl", "H_Shemag_khk", "H_Beret_blk", "H_Booniehat_dgtl", "H_Booniehat_mcamo", "H_Booniehat_indp", "H_Shemag_olive_hs", "H_Bandanna_khk_hs", "H_BandMask_blk", "H_Bandanna_camo", "H_Watchcap_blk", "H_Watchcap_camo", "H_Beret_ocamo", "H_Beret_grn_SF", "H_Cap_brn_SPECOPS", "H_Cap_blk", "H_Cap_tan", "H_Hat_grey"];
_helmets = ["H_HelmetB_plain_mcamo", "H_HelmetB_plain_blk", "H_HelmetIA", "H_HelmetIA_net", "H_HelmetIA_camo", "H_HelmetO_oucamo", "H_HelmetO_ocamo"];
_uniforms = ["U_IG_Guerilla1_1", "U_IG_Guerilla2_1", "U_IG_Guerilla2_2", "U_IG_Guerilla2_3", "U_IG_leader", "U_BG_Guerilla1_1", "U_BG_Guerilla2_1", "U_BG_Guerilla2_2", "U_BG_Guerilla2_3", "U_BG_leader", "U_OG_Guerilla1_1", "U_OG_Guerilla2_1", "U_OG_Guerilla2_2", "U_OG_Guerilla2_3", "U_OG_leader"]; 
_vests = ["V_TacVestCamo_khk", "V_TacVest_camo", "V_TacVestIR_blk", "V_TacVest_brn", "V_TacVest_blk", "V_TacVest_oli", "V_TacVest_khk"];
                 
removeGoggles _unit;
removeHeadgear _unit;
removeUniform _unit;
removeVest _unit;
removeBackpack _unit;

_headgear = nil;
if (_useHelmets) then {
	_headgear = _helmets call BIS_fnc_selectRandom;
}
else {
	_headgear = _headgears call BIS_fnc_selectRandom;
};
_uniform = _uniforms call BIS_fnc_selectRandom;
_vest = _vests call BIS_fnc_selectRandom;
_backpack = _backpacks call BIS_fnc_selectRandom;

_unit addHeadgear _headgear;
_unit addUniform _uniform;
_unit addVest _vest;
_unit addBackpack _backpack;
