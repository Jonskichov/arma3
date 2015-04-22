/////////////////////////////
// [FOCK]ers AI  Group/Recruit Menu
// [FOCK] Mikie J
// Concept by ZUFF
// http://forums.bistudio.com/showthread.php?154177-Group-Management-Script
//////////////////////////////


private ["_caller"];


_counGroup = count units group player;
if (_counGroup <=1) exitwith {hint "Only you in the group - you are the Leader";};
if (leader group player == player) exitwith {hint "You are already the leader";};


_playerGrp = group player;
_leaderGrp = leader player;
	_fixnameLead = text (name _leaderGrp);
		_fixnamePlay = text (name player);

  			  _leaderselect = [];

				if (isPlayer _leaderGrp) exitWith {Hint "You cannot Become Leader whilst another Human Player Is in that Position"};
//
Fock_SetLeader = [player,player]; Publicvariable "Fock_SetLeader";
group player selectLeader player;


hint format ["Leading Group %1", group player];


lbClear 1500;  //Clear all items in listbox or combobox with id idc of topmost user dialog.

_cntF = count units _playerGrp;

//need to change this to a function	
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
		
		_leadPos = _shortGroupName find _fixnameLead;	
		_Swap = _shortGroupName find _fixnamePlay;		
		_newLead = leader group player;
		_newLeadPos = _shortGroupName find _fixnamePlay;
		

    if (_newLeadPos != 0) then
		{		
		_shortGroupName set [_newLeadPos,_shortGroupName select 0];						
		_shortGroupName set [0,_fixnamePlay];			
	      
		};

		
		for "_i" from 0 to _grouptotal do
		{
		_index = lbAdd [1500, str (_shortGroupName select _i)]; //Adds an item to the list- or combobox with ID idc. Displays “Text“ in the box. Returns indexnumber of the item
		};
		
  };


