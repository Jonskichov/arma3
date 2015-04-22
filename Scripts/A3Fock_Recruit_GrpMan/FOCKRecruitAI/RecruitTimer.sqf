//////////////////////////////////////////////////////////////////
// Function file for Armed Assault
// Created by: TODO: Author Name
//////////////////////////////////////////////////////////////////
waitUntil {!isNull player }; 	
	
private ["_startmarker"];	
if (side player == WEST) then {_startmarker = "RecruitBlue"} else {_startmarker = "RecruitRed";};

while {true} do

{
 if ((player distance getmarkerpos _startmarker) <= (ParamsArray Select 3)) then {outofzone = false;} else {outofzone = true};

 sleep 1;
 };