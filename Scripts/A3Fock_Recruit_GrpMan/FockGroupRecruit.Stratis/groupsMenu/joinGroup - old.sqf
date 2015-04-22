/////////////////////////////
// [FOCK]ers AI  Group/Recruit Menu
// [FOCK] Mikie J
//////////////////////////////


private ["_caller"];

_index = lbCurSel 1501;
_returnedGroup = lbText [1501, _index];
_selectedGroup = lbSetCurSel [1501, _index];
_String = lbData [1501, _index];
_playerGrp = group player;


lbClear 1501;  //Clear all items in listbox or combobox with id idc of topmost user dialog.
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




_Oldplayergrp = group player;

  _CurrentNum = count units _Oldplayergrp;
	if (_CurrentNum <= 1) then
	{
	  [player] join _selected;
	  hint format ['Joined Group %1', group player];
	  deleteGroup _Oldplayergrp;
	  _Oldplayergrp = nil; 
	} else
	
		{
			 [player] join _selected;
	              hint format ['Joined Group %1', group player];
			 _leaderselect = [];
			  _cntOld = count units _Oldplayergrp;
			  if (_cntOld > 0) then
		        {
				{	
				//if (human player in squad)
				if (isPlayer _x)	then
					{					
				      _leaderselect set [count _leaderselect, _x];					
					}
				}foreach units _Oldplayergrp;
		         };
		         
		         _HumanUnits = count _leaderselect;
		         if (_HumanUnits <1) then
		 	       { 
		 			{deletevehicle _x;} foreach units _Oldplayergrp;
		 			 deleteGroup _Oldplayergrp;
					 _Oldplayergrp = nil; 
		 		 };

			
		};

















