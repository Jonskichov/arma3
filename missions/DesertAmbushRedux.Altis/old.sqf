

_isCombatVehicle = !_isSquad && !(isNull (gunner _unit));
_side = side _unit;


_unitGroup = nil;
_vehicleGroup = nil;

if (!_isSquad && !_isCombatVehicle) then {
	_unitGroup = 
};

_group = group _unit;
if (_isVehicle && (count units _group) > 1) then {
	[_unit] joinSilent grpNull;
	_group = group _unit;
};
                       
            
// Set combat mode
_group setCombatMode "RED";
_group setBehaviour "COMBAT";
_group setSpeedMode "NORMAL";
_group setFormation "WEDGE";
_unit forceSpeed -1;

                   

if (_isVehicle) then {
	_cargo = (crew _unit);
	
	
	if (_isCombatVehicle) then {
		_cargo = _cargo - [(gunner _unit), (driver _unit), (commander _unit), _unit];
		
		
		// New group from passengers
		_newGroup = createGroup (side _unit);
		_cargo joinSilent _newGroup;
		
		                                    
		// Vehicle waypoints
		_waypoint1 = _group addWaypoint [getPos _unit, 50];
		_waypoint1 setWaypointType "TR UNLOAD";
		
		_waypoint2 = _group addWaypoint [getPos _waypoint1, 0];
		_waypoint2 setWaypointType "HOLD";
		
		_group setCurrentWaypoint _waypoint1;
		          
		                                    
		// New group waypoints
		_waypoint3 = _newGroup addWaypoint [getPos _waypoint1, 0];
		_waypoint3 setWaypointType "GETOUT";
		
		_waypoint4 = _newGroup addWaypoint [getPos _waypoint1, 30];
		_waypoint4 setWaypointType "MOVE";
		
		_waypoint5 = _newGroup addWaypoint [getPos _waypoint4, 0];
		_waypoint5 setWaypointType "HOLD"; 
		
		_newGroup setCurrentWaypoint _waypoint3;
		
		_waypoint1 synchronizeWaypoint [_waypoint3];
	}
	else {
		_waypoint1 = _group addWaypoint [getPos _unit, 50];
		_waypoint1 setWaypointType "GETOUT";
		
		_waypoint2 = _group addWaypoint [getPos _waypoint1, 30];
		_waypoint2 setWaypointType "MOVE";
		
		_waypoint3 = _group addWaypoint [getPos _waypoint2, 0];
		_waypoint3 setWaypointType "HOLD"; 
	
		_group setCurrentWaypoint _waypoint1;
	};
}
else {
};

