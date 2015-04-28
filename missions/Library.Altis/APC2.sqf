
if (!isServer) exitWith {};

_unit = _this select 0;
_startPos = markerPos "convoy_marker";
                         

sleep (round (random 5));
_unit forceSpeed -1; 

 

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
_crewUnloadWaypoint = _crewGroup addWaypoint [_startPos, 100];
_crewUnloadWaypoint setWaypointType "TR UNLOAD";

_crewHoldWaypoint = _crewGroup addWaypoint [getWPPos _crewUnloadWaypoint, 50];
_crewHoldWaypoint setWaypointType "SAD";

_crewGroup setCurrentWaypoint _crewUnloadWaypoint;


// Unit waypoints
_unitHoldWaypoint = _squadGroup addWaypoint [_startPos, 100];
_unitHoldWaypoint setWaypointType "SAD";

_squadGroup setCurrentWaypoint _unitHoldWaypoint;



