
waitUntil {alive player && isPlayer player};

showMines = false; 
playergroup = group player;

titleCut ["", "BLACK FADED", 999]; 

_handle = [] execVM "WaitForPlayers.sqf";
waitUntil {scriptDone _handle};

if (isServer) then {
	_arsenal = paramsArray select 0;
	if (_arsenal == 1) then {
		nul = ["AmmoboxInit", [the_boat, true]] spawn BIS_fnc_arsenal;
	};
};

[] Spawn { 
 
    sleep 1;
    // Info text 
    [
        [["OPERATION CAKEWALK", "<t align = 'center' shadow = '1' size = '1.0'>%1</t>", 10], 
        ["<br/>" + str(date select 3) + ":" + str(date select 4) + " " + str(date select 2) + "-" + str(date select 1) + "-" + str(date select 0), "<t align = 'center' shadow = '1' size = '1.0'>%1</t>", 10], 
        ["<br/>Near Molos...", "<t align = 'center' shadow = '1' size = '1.0'>%1</t>", 30]],
        0, 0.7, "<t color='#FFFFFFFF' align='center'>%1</t>"
	] spawn BIS_fnc_typeText;
    
	sleep 8; 
    
    "dynamicBlur" ppEffectEnable true;    
    "dynamicBlur" ppEffectAdjust [6];    
    "dynamicBlur" ppEffectCommit 0;      
    "dynamicBlur" ppEffectAdjust [0.0];   
    "dynamicBlur" ppEffectCommit 5;   

    titleCut ["", "BLACK IN", 8]; 
};  