                       
comment "Set voice to random UKGB";

_unit = _this select 0;
_unit setSpeaker (["Male01ENGB","Male02ENGB","Male03ENGB","Male04ENGB","Male05ENGB"] call BIS_fnc_selectRandom);