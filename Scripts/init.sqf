#include "VVS\menu.h"

class CfgFunctions
{
	#include "VVS\Functions.h"
};

waitUntil {alive player && isplayer player};
titleCut ["", "BLACK FADED", 999]; 
[] Spawn { 
 
    sleep 1;
    // Info text 
    [
        [["TITLE", "<t align = 'center' shadow = '1' size = '1.0'>%1</t>", 10], 
        ["<br/>" + str(date select 3) + ":" + str(date select 4) + " " + str(date select 2) + "-" + str(date select 1) + "-" + str(date select 0), "<t align = 'center' shadow = '1' size = '1.0'>%1</t>", 10], 
        ["<br/>Somewhere...", "<t align = 'center' shadow = '1' size = '1.0'>%1</t>", 30]],
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