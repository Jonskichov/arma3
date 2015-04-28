
if (!isServer) exitWith {};

private ["_position", "_radius", "_minDelay", "_maxDelay", "_rounds", "_mortarPos"];

_position = _this select 0;
_radius = _this select 1;
_rounds = _this select 2;
_minDelay = _this select 3;
_maxDelay = _this select 4;

for "_i" from 1 to _rounds do {
	sleep (_minDelay + (random (_maxDelay - _minDelay)));
	_mortarPos = [(_position select 0) - _radius * sin(random 359), (_position select 1) - _radius * cos(random 359), 0];
	"R_80mm_HE" createVehicle _mortarPos;                
	sleep 0.3;
};
