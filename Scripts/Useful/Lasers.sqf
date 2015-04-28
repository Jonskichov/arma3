
_unit = _this select 0;

{
	waitUntil {!(isNull _x) && alive _x && time > 0};	
    if (local _x) then {
    	_x enableIRLasers true;
        _x action ["NVGoggles", _x];
    }
}
forEach (units group _unit);