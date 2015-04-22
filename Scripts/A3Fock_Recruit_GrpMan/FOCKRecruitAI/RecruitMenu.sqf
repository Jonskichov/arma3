//////////////////////////////////////////////////////////////////
// Function file for Armed Assault
// Created by: TODO: Author Name
//////////////////////////////////////////////////////////////////
recruit_active = true;
_ok = createDialog "AiMenu";
noesckey = (findDisplay 166) displayAddEventHandler ["KeyDown", "if ((_this select 1) == 1) then { true }"];

lbClear 1498;
_playerGrp = group player;
_index1 = lbAdd [1498, str (_playerGrp)];


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


sleep 5;
rankcall_active = false; //adds the addaction

_Handle=[]ExecVM "FOCKRecruitAI\refresh.sqf";