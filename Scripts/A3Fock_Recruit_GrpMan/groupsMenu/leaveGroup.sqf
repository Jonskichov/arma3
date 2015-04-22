/////////////////////////////
// [FOCK]ers AI  Group/Recruit Menu
// [FOCK] Mikie J
//////////////////////////////



private ["_curGroup"];


//old group properties
_Oldplayergrp = group player;

  _CurrentNum = count units _Oldplayergrp;
	if (_CurrentNum > 1) then
	{

		///new group business
		_curGroup = group player;
		[player] join grpNull;
		hint format ['Left Group %1', _curGroup];

			lbClear 1500;  //Clear all items in listbox or combobox with id idc of topmost user dialog.
			_playerGrp = group player;
			_cntF = count units _playerGrp;
				
			if (_cntF > 0) then
			  {
					_listgroupsunits = units _playerGrp;
					_groupSize = count(_listgroupsunits);
					_grouptotal = _groupSize - 1;
					_shortGroupName = [];
					{
						_fixnames = text (name _x);
						_shortGroupName set [count _shortGroupName,_fixnames];
					} forEach _listgroupsunits;

					for "_i" from 0 to _grouptotal do
					{
					_index = lbAdd [1500, str (_shortGroupName select _i)]; //Adds an item to the list- or combobox with ID idc. Displays “Text“ in the box. Returns indexnumber of the item
					};
					
			  };
			  
			  
			  //delete AI enabled in params 
		        if (LeaveGroupDeleteAI ==1)then
		        { 
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
		         
} else
      { hint "Only you in the group - You Cannot leave";};