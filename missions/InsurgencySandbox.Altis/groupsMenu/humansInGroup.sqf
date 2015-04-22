/////////////////////////////
// [FOCK]ers AI  Group/Recruit Menu
// [FOCK] Mikie J
//////////////////////////////

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
	
	  _humansSelect = [];
		
				{	
				//if (human player in squad)
				if (isPlayer _x)	then
					{					
				      _humansSelect set [count _humansSelect, _x];					
					}
				}foreach _listgroupsunits;
		      
		         
      _humanGroupSize = count _humansSelect;
//      hint format ["humans in Group: %1",_humanGroupSize];
    
	if (_humanGroupSize >= 1) then 
	{     
		_listgroupsunits = _humansSelect;							
		_shortGroupName = [];
		{
			_fixnames = text (name _x);
			_shortGroupName set [count _shortGroupName,_fixnames];
		} forEach _humansSelect;	       
			         
			         
			         
			         
		_groupSize = count(_shortGroupName);
		_grouptotal = _groupSize - 1;
		for "_i" from 0 to _grouptotal do
		{
		_index = lbAdd [1502, str (_shortGroupName select _i)]; //Adds an item to the list- or combobox with ID idc. Displays “Text“ in the box. Returns indexnumber of the item
		};
       } 
       else	{
	       Hint "No human Players in Group";
	       };