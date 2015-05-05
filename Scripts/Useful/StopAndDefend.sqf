
if (!isServer) exitWith {};

_unit = _this select 0;
_startPos = getPos _unit;
_isSquad = _unit isKindOf "Man";
                         

sleep (round (random 5));
_unit forceSpeed -1; 

       
if (_isSquad) then {
	// Infantry squad
	//systemChat ("Target is squad");
	                 
	
	// Squad group
	_squadGroup = group _unit;
	//systemChat ("Squad group: " + str(units _squadGroup));
	
	
	// Combat mode
	_squadGroup setCombatMode "RED";
	_squadGroup setBehaviour "COMBAT";
	_squadGroup setSpeedMode "NORMAL";
	_squadGroup setFormation "WEDGE";


	// Delete existing waypoints
	while {
		(count waypoints _squadGroup) > 0
	} 
	do {
		deleteWaypoint ((waypoints _squadGroup) select 0);
	};  
	    
	         
	// New waypoints
	_holdWaypoint = _squadGroup addWaypoint [_startPos, 50];
	_holdWaypoint setWaypointType "HOLD";
	
	_squadGroup setCurrentWaypoint _holdWaypoint;
	       
	            
	// Done
	if (true) exitWith {};
};


//systemChat ("All crew: " + str(crew _unit));

if (isNull gunner _unit) then {
	// Just a transport
	//systemChat ("Target is transport");
	                  
	
	// Squad group
	_squadGroup = createGroup (side _unit);
	(crew _unit) joinSilent _squadGroup;
	//systemChat ("Squad group: " + str(units _squadGroup));
	
	
	// Combat mode
	_squadGroup setCombatMode "RED";
	_squadGroup setBehaviour "COMBAT";
	_squadGroup setSpeedMode "NORMAL";
	_squadGroup setFormation "WEDGE";


	// Delete existing waypoints
	while {
		(count waypoints _squadGroup) > 0
	} 
	do {
		deleteWaypoint ((waypoints _squadGroup) select 0);
	};
	
	
	// New unit waypoints
	_getOutWaypoint = _squadGroup addWaypoint [_startPos, 50];
	_getOutWaypoint setWaypointType "GETOUT";
	
	_holdWaypoint = _squadGroup addWaypoint [getWPPos _getOutWaypoint, 50];
	_holdWaypoint setWaypointType "HOLD";
	
	_squadGroup setCurrentWaypoint _getOutWaypoint;
}
else {
	// Combat vehicle
	//systemChat ("Target is combat vehicle");
	 
	
	// Crew group
	_crewGroup = group _unit;
	//systemChat ("Crew group: " + str(units _crewGroup));
	
	
	// Crew combat mode
	_crewGroup setCombatMode "RED";
	_crewGroup setBehaviour "COMBAT";
	_crewGroup setSpeedMode "NORMAL";
	_crewGroup setFormation "WEDGE";


	// Crew delete existing waypoints
	while {
		(count waypoints _crewGroup) > 0
	} 
	do {
		deleteWaypoint ((waypoints _crewGroup) select 0);
	};    
	
	
	// Squad group
	_crew = [(gunner _unit), (driver _unit), (commander _unit)];  
	_squad = ((crew _unit) - _crew); 
	_squadGroup = createGroup (side _unit);     
	_squad joinSilent _squadGroup;
	//systemChat ("Squad group: " + str(units _squadGroup));
	
	
	// Unit combat mode
	_squadGroup setCombatMode "RED";
	_squadGroup setBehaviour "COMBAT";
	_squadGroup setSpeedMode "NORMAL";
	_squadGroup setFormation "WEDGE";


	// Unit delete existing waypoints
	while {
		(count waypoints _squadGroup) > 0
	} 
	do {
		deleteWaypoint ((waypoints _squadGroup) select 0);
	};
	                        
	                             
	////////////////////////
	
	
	// Crew waypoints
	_crewUnloadWaypoint = _crewGroup addWaypoint [_startPos, 50];
	_crewUnloadWaypoint setWaypointType "TR UNLOAD";
	
	_crewHoldWaypoint = _crewGroup addWaypoint [getWPPos _crewUnloadWaypoint, 50];
	_crewHoldWaypoint setWaypointType "HOLD";
	
	_crewGroup setCurrentWaypoint _crewUnloadWaypoint;
	
	
	// Unit waypoints
	_unitHoldWaypoint = _squadGroup addWaypoint [getWPPos _crewUnloadWaypoint, 50];
	_unitHoldWaypoint setWaypointType "HOLD";
	
	_squadGroup setCurrentWaypoint _unitHoldWaypoint;
};



