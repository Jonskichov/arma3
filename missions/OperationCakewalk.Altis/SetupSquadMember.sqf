
_unit = _this select 0;
_weapon = _this select 1;
_addDemoCharges = _this select 2;

waitUntil {!(isNull _unit) && alive _unit && time > 0};

if (local _unit) then {
	_handle = [_unit, _weapon, true, false] execVM "UK.sqf";
	waitUntil {scriptDone _handle};
	
	if (_addDemoCharges) then {                           
		for "_i" from 1 to 2 do {_unit addItemToBackpack "DemoCharge_Remote_Mag";};
	};
};

_unit enableIRLasers true;
_unit action ["NVGoggles", _unit];
