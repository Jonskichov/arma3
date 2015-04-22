////////////////////////////////////
// [FOCK]ers Recruit/Group Menu
// [FOCK] Mikie J
////////////////////////////////////
_index = lbCurSel 1501;
_returnedGroup = lbText [1501, _index];
_selectedGroup = lbSetCurSel [1501, _index];
_String = lbData [1501, _index];
_playerGrp = group player;

lbClear 1502;  //Clear all items in listbox or combobox with id idc of topmost user dialog.
_GroupName = [];		   

    {
	 if (side _x == side player) then 
		{			
		  _GroupName set [count _GroupName,_x];
		};
   } foreach allGroups;

	      _array1 = _GroupName;
		_array2 = [_playerGrp];
		_array3 = _array1 - _array2;		

		
_selected = _array3 select (_index);
hint format ["Selected Group: %1",_selected];





	_listgroupsunits = units _selected;
						
	_shortGroupName = [];
	{
		_fixnames = text (name _x);
		_shortGroupName set [count _shortGroupName,_fixnames];
	} forEach _listgroupsunits;
							
	_groupSize = count(_shortGroupName);
	_grouptotal = _groupSize - 1;
	for "_i" from 0 to _grouptotal do
	{
	_index = lbAdd [1502, str (_shortGroupName select _i)]; //Adds an item to the list- or combobox with ID idc. Displays “Text“ in the box. Returns indexnumber of the item
	};
















//_playerGrp = group player;


//     lbClear 1502;  
//                              _playerGrp = group player;
//					_cntF = count units _playerGrp;
//				
//					if (_cntF > 0) then
//					  {
//							_listgroupsunits = units _playerGrp;
//						
//							_shortGroupName = [];
//							{
//								_fixnames = text (name _x);
//								_shortGroupName set [count _shortGroupName,_fixnames];
//							} forEach _listgroupsunits;
//							
//							
//							if (leader group player == player) then
//							{	
//							
//								_leaderGrp = leader group player;
//								hint format ["Leader: %1",_leaderGrp];
//								_fixnameLead = text (name _leaderGrp);
//								_fixnamePlay = text (name player);					
//								_leadPos = _shortGroupName find _fixnameLead;	
//								_Swap = _shortGroupName select 0;							
//								_shortGroupName set [0,_fixnamePlay];
//							
//							      _shortGroupName set [_leadPos, _Swap];
//							
//								_groupSize = count(_shortGroupName);
//								_grouptotal = _groupSize - 1;
//								for "_i" from 0 to _grouptotal do
//								{
//								_index = lbAdd [1500, str (_shortGroupName select _i)]; //Adds an item to the list- or combobox with ID idc. Displays “Text“ in the box. Returns indexnumber of the item
//								};
//								
//								
//							}else {
//								_leaderGrp = leader group player;
//								hint format ["Leader: %1",_leaderGrp];
//								_fixnameLead = text (name _leaderGrp);
//								_fixnamePlay = text (name player);
//													
//								_leadPos = _shortGroupName find _fixnameLead;	
//								_Swap = _shortGroupName find _fixnamePlay;
//								
//								if (_leadpos != 0) then
//								{
//														
//								_shortGroupName set [0,_fixnameLead];								
//							      _shortGroupName set [_leadPos,_fixnamePlay];
//								};
//								
////								_array2 = [_fixnameLead];								
////								_array3 = _shortGroupName - _array2;
//								_groupSize = count(_shortGroupName);
//								_grouptotal = _groupSize - 1;	
//								
//								for "_i" from 0 to _grouptotal do
//								{
//								_index = lbAdd [1500, str (_shortGroupName select _i)]; //Adds an item to the list- or combobox with ID idc. Displays “Text“ in the box. Returns indexnumber of the item
//								};
//													
//								};