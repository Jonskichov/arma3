////////////////////////////////
// Cleans Up empty groups
// [FOCK] Mikie J
////////////////////////////////
//if (isnil "groupsclearup") then
//{
//	groupsclearup = 0;
//};


//if (isserver) then 
//{
//	if (groupsclearup == 0) then
//	{
//		groupsclearup = 1;publicvariable "groupsclearup";
		while {true} do
		{
		  { 
		  if ((count (units _x)) == 0) then 
		     {
//			 if (side _x == EAST) then 				
//				{
//					FOCK_DelEmptyGroup = [_x]; PublicVariable "FOCK_DelEmptyGroup";
					deleteGroup _x; 				
					_x = nil;
					_x = grpNull;
//				};
		     };
		   } foreach allGroups;
		   sleep 60;
		 };
//	};
//		   
//};