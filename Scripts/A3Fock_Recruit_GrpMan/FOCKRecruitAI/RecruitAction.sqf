//////////////////////////////////////////////////////////////////
// Function file for Armed Assault
// [FOCK] Mikie J
//////////////////////////////////////////////////////////////////


sleep 2;
if (!isdedicated) then                                   //not run on the dedicated server - client side 
{

	[] spawn 								// calls the below script used for a loop
	{
		
	private ["_recruit","_startmarker", "_addmenu"];//declaring	
	waituntil {!isnull player};
	recruit_active = false;
	outofzone = false;
	
if (!isnull player) then 
	{
   
		while {true} do 
		{
		 		   
//		    waitUntil {!recruit_active &&(alive player)&& !outofzone};
		    waitUntil {!recruit_active &&(alive player)};
		    _addmenu = player addAction [("<t color=""#66FFFF"">" + ("Group/Recruit Menu") +"</t>"), "FOCKRecruitAI\RecruitMenu.sqf",[],1,false,true];
//		    waitUntil {recruit_active || (!alive player)|| outofzone};
		    waitUntil {recruit_active || (!alive player)};
		    player removeAction _addmenu;
   		    
   			

		};//while
	
	}; //if !is null
}; // []spawn
}; //!isserver