
waitUntil {alive player && isPlayer player};

playergroup = group player;
convoy = [apc_1, truck_1, truck_2, truck_3] + (units group reinf_1) + (units group reinf_2) + (units group reinf_3);

titleCut ["", "BLACK FADED", 999]; 

_handle = [] execVM "WaitForPlayers.sqf";
waitUntil {scriptDone _handle};

if (isServer) then {
	_arsenal = paramsArray select 0;
	if (_arsenal == 1) then {
		nul = ["AmmoboxInit", [box1, true]] spawn BIS_fnc_arsenal;
		nul = ["AmmoboxInit", [box2, true]] spawn BIS_fnc_arsenal;
	};
};

[] Spawn { 
 
    sleep 1;
    // Info text 
    [
        [["Desert Ambush Redux", "<t align = 'center' shadow = '1' size = '1.0'>%1</t>", 10], 
        ["<br/>" + str(date select 3) + ":" + str(date select 4) + " " + str(date select 2) + "-" + str(date select 1) + "-" + str(date select 0), "<t align = 'center' shadow = '1' size = '1.0'>%1</t>", 10], 
        ["<br/>Near Edessa...", "<t align = 'center' shadow = '1' size = '1.0'>%1</t>", 30]],
        0, 0.7, "<t color='#FFFFFFFF' align='center'>%1</t>"
	] spawn BIS_fnc_typeText;
    
	sleep 5; 
    
    "dynamicBlur" ppEffectEnable true;    
    "dynamicBlur" ppEffectAdjust [6];    
    "dynamicBlur" ppEffectCommit 0;      
    "dynamicBlur" ppEffectAdjust [0.0];   
    "dynamicBlur" ppEffectCommit 3;   

    titleCut ["", "BLACK IN", 8]; 
};
