//HALOpack
//
//example:
// _nil = [this,"parachute classname"] execVM "attachbackpack.sqf"; //parachute is optional, leave "" blank for standard steerable
//

_unit = _this select 1;

haloed = true;
hintSilent "Click on the map where you'd like to HALO.";
onMapSingleClick "player setPos [(_pos select 0), (_pos select 1), 3000]; haloed = false;hint 'Close the map and dont forget to open your chute!'";
waitUntil{!haloed};
onMapSingleClick "";

if (isDedicated) exitWith {};
if (!local _unit) exitWith {};

_pack = unitBackpack _unit;

_unit addBackpack "B_Parachute";

//freefall:
_pack attachTo [_unit,[0,-0.13,0],"Pelvis"];
_pack setVectorDirAndUp [[0,0,1],[0,1,0]];

_nil = [_unit,_pack] spawn {
	_unit = _this select 0;
	_pack = _this select 1;
	
	waitUntil {animationState _unit == "para_pilot"}; //wait for parachute open
	//animation still weird, can't seem to attach while in parachute animation...so bury temporarily 
	_pack setPos [(getPos _unit) select 0,(getPos _unit) select 1,-50]; //bury nearby...

	waitUntil {isTouchingGround _unit || (getPosASL _unit) select 2 < 0.1};//wait for landing
	if(surfaceIsWater [getPos _unit select 0,getPos _unit select 1]) then {
		waitUntil {isTouchingGround _unit}; //will trigger offshore, bag will float then
		detach _pack;
		_pack setPosASL [getposASL _unit select 0, getposASL _unit select 1,-0.28];
	} else {
		detach _pack;
		_packPos = getPosATL _unit; //(getPos _unit) findEmptyPosition [1, 5];
		_pack setPosATL [_packPos select 0, _packPos select 1, 0.5];
	};
	
	_pack setVectorDirAndUp [[0,0,-1],[0,-1,0]];
		
	//_pack addAction ["Take Bag",{(_this select 1) action ["TakeBag",_this select 0];},"",6,true,true,"","true"];
	_unit addBackpack _pack;
};