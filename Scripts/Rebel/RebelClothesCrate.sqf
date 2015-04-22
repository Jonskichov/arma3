_crate = _this select 0;

if (!local _crate) exitWith {};
waitUntil {!(isNull _crate) && time > 0};

_uniforms = ["U_BG_Guerrilla_6_1", "U_BG_Guerilla1_1", "U_BG_Guerilla2_2", "U_BG_Guerilla2_1", "U_BG_Guerilla2_3"]; 
_vests = ["V_TacVest_khk", "V_TacVest_brn", "V_TacVest_oli", "V_TacVest_blk", "V_TacVest_camo"];
_backpacks = ["B_FieldPack_blk", "B_FieldPack_cbr", "B_FieldPack_khk", "B_FieldPack_ocamo", "B_FieldPack_oli", "B_FieldPack_oucamo"];
_helmets = ["H_HelmetIA", "H_HelmetB", "H_HelmetB_black", "H_HelmetB_desert", "H_HelmetB_grass"];
_headgears = ["H_Shemag_olive_hs", "H_MilCap_gry", "H_MilCap_blue", "H_Cap_oli_hs", "H_Booniehat_khk_hs", "H_Watchcap_blk", "H_Watchcap_khk", "H_Bandanna_khk_hs"];

_numItem = 2;

clearMagazineCargo _crate;
clearWeaponCargo _crate;
clearItemCargoGlobal _crate;
clearBackpackCargo _crate;

{_crate addItemCargoGlobal [_x, _numItem];} 
	forEach (_headgears + _helmets + _uniforms + _vests);

{_crate addBackpackCargoGlobal [_x, _numItem];} 
	forEach (_backpacks);
