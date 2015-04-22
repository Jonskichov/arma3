//Need to add fucntions to call the group setting within listbox


While {Dialog} Do 
                         {
					lbClear 1498;
					_playerGrp = group player;
					_index1 = lbAdd [1498, str (_playerGrp)];
					
					
                              lbClear 1500;  
                            	_cntF = count units _playerGrp;
				
					if (_cntF > 0) then
					  {
							_listgroupsunits = units _playerGrp;
						
							_shortGroupName = [];
							{
								_fixnames = text (name _x);
								_shortGroupName set [count _shortGroupName,_fixnames];
							} forEach _listgroupsunits;
							
							
							if (leader group player == player) then
							{	
							
								_leaderGrp = leader group player;
//								hint format ["Leader: %1",_leaderGrp];
								_fixnameLead = text (name _leaderGrp);
								_fixnamePlay = text (name player);					
								_leadPos = _shortGroupName find _fixnameLead;	
								_Swap = _shortGroupName select 0;							
								_shortGroupName set [0,_fixnamePlay];
							
							      _shortGroupName set [_leadPos, _Swap];
							
								_groupSize = count(_shortGroupName);
								_grouptotal = _groupSize - 1;
								for "_i" from 0 to _grouptotal do
								{
								_index = lbAdd [1500, str (_shortGroupName select _i)]; //Adds an item to the list- or combobox with ID idc. Displays “Text“ in the box. Returns indexnumber of the item
								};
								
								
							}else {
									_leaderGrp = leader group player;
	//								hint format ["Leader: %1",_leaderGrp];
									_fixnameLead = text (name _leaderGrp);
									_fixnamePlay = text (name player);
														
									_leadPos = _shortGroupName find _fixnameLead;	
									_Swap = _shortGroupName find _fixnamePlay;
									
//									if (_leadpos != 0) then
//									{
//									_shortGroupName set [_leadPos,_fixnamePlay];						
//									_shortGroupName set [0,_fixnameLead];								
//								      
//									};

									    if (_leadpos != 0) then
											{
											
											_shortGroupName set [_leadPos,_shortGroupName select 0];						
											_shortGroupName set [0,_fixnameLead];								
										      
											};

					
									_groupSize = count(_shortGroupName);
									_grouptotal = _groupSize - 1;	
									
									for "_i" from 0 to _grouptotal do
									{
									_index = lbAdd [1500, str (_shortGroupName select _i)]; //Adds an item to the list- or combobox with ID idc. Displays “Text“ in the box. Returns indexnumber of the item
									};
													
								};
								

					  };
  
		  
		 ///Group box
		lbClear 1501;  //Clear all items in listbox or combobox with id idc of topmost user dialog.
		_GroupName = [];		   

		    {
			 if (side _x == side player) then 
				{			
				  _GroupName set [count _GroupName,_x];
				};
		   } foreach allGroups;


		_cntGrps = count _GroupName;
			
		if (_cntGrps > 0) then
		  {
				_array1 = _GroupName;
				_array2 = [_playerGrp];
				_array3 = _array1 - _array2;		
				_groupSize = count(_array3);
				_grouptotal = _groupSize - 1;
				
				for "_i" from 0 to _grouptotal do
				{
				_index = lbAdd [1501, str (_array3 select _i)]; //Adds an item to the list- or combobox with ID idc. Displays “Text“ in the box. Returns indexnumber of the item
				};	
				
		  };
  
     sleep 1;

                     };

                        
