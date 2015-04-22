[true] execVM "eos\OpenMe.sqf";

//call compileFinal preprocessFileLineNumbers "FAR_revive\FAR_revive_init.sqf";

//enableSaving [false, false];

if (isServer) then { setDate [2013, 8, 27, (paramsArray select 6), 0]; };  

waitUntil { isServer || !isNull player }; 

ExecVM "FOCKRecruitAI\RecruitInit.sqf";

 
 
#include "VVS\menu.h"

class CfgFunctions
{
	#include "VVS\Functions.h"
};