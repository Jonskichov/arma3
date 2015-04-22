/////////////////////////////
// [FOCK]ers AI  Group/Recruit Menu
// [FOCK] Mikie J
// Concept by ZUFF
// http://forums.bistudio.com/showthread.php?154177-Group-Management-Script
//////////////////////////////


private ["_newLead","_curGroup","_newPos"];

_counGroup = count units group player;
if (_counGroup <=1) exitwith {hint "Only you in the group - you cannot Step Down";};
if (leader group player != player) exitwith {hint "You are not the Leader";};


/////////////////////////
_curGroup = [];
_curGroup = units group player;


_newLead = player;
while {_newLead == player} do {
	_counting = count _curGroup;
	_newPos = floor(random(_counting));
    _newLead = _curGroup select _newPos;
    sleep 1;
};
group player selectLeader _newLead;

//_curGroup select 
hint format ['No Longer Leading\nGroup %1', group player];
///////////////////////////////

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
		
		_leaderGrp = leader player;
		_fixnameLead = text (name _leaderGrp);
		_leadPos = _shortGroupName find _fixnameLead;	
		_fixnamePlay = text (name player);
		_array2 = [_fixnameLead];
		_array3 = _shortGroupName - _array2;
		_shortGroupName set [_newPos,_fixnamePlay];
		_shortGroupName set [0,_fixnameLead];
		


		for "_i" from 0 to _grouptotal do
		{

		_index = lbAdd [1500, str (_shortGroupName select _i)]; //Adds an item to the list- or combobox with ID idc. Displays “Text“ in the box. Returns indexnumber of the item
	
		};
		
  };



