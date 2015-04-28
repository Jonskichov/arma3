
if (!isServer) exitWith {};


_unit = _this select 0;
_vehicle = _this select 1;

{
	_x moveinCargo _vehicle;
} 
foreach (units group _unit);