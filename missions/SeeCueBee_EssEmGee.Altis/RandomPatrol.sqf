_unit = _this select 0;
_radius = _this select 1;

waitUntil {!(isNull _unit) && alive _unit && time > 0};
if (!isServer) exitWith {};

_patrolTypeList = [true, false, false];
_patrolType = _patrolTypeList call BIS_fnc_selectRandom;
	
if (_patrolType) then {
	_markerName = "Marker_" + (str _unit);  
	_markerName = createMarker [_markerName, position _unit];
	_handle = [_unit, 100, _radius, _markerName , _markerName, _radius, true, "SAFE", "RED", "LIMITED", "COLUMN", 0, (_radius / 5), 0, [true, 35, 25, 3, 1]] execVM "USPS.sqf";
	waitUntil {scriptDone _handle};
}
else {
	group _unit setCombatMode "RED";
	group _unit setBehaviour "SAFE";
	_handle = [_unit, _radius, false, [60, 4], true] execVM "Garrison_script.sqf";
	waitUntil {scriptDone _handle};
};
