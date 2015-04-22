/////////////////////
// Remove Selected AI from Group
// [FOCK] Mikie J
/////////////////////
if (leader group player != player) exitwith {hint "You are Not the leader";};
_index = lbCurSel 1500;
_returnedSoldier = lbText [1500, _index];
_selectedSoldier = lbSetCurSel [1500, _index];



hint format ["Array num: %1",_index];

_playerGrp = group player;
_arrayGrp = units group player;
_cntF = count units _playerGrp;


	_listgroupsunits = units _playerGrp;
		_groupSize = count(_listgroupsunits);
	      _grouptotal = _groupSize - 1;
		
//		_shortGroupName = [];
//		{
//			_fixnames = text (name _x);
//			_shortGroupName set [count _shortGroupName,_fixnames];
//		} forEach _listgroupsunits;

		_leaderGrp = leader player;
		_fixnamePlay = player;
		_leadPos = _listgroupsunits find _leaderGrp;	
		_Swap = _listgroupsunits find _fixnamePlay;
		
//		_newLead = leader group player;
		_newLeadPos = _listgroupsunits find player;
		
	    if (_newLeadPos != 0) then
		{
		
		_listgroupsunits set [_newLeadPos,_listgroupsunits select 0];						
		_listgroupsunits set [0,_fixnamePlay];								
	      
		};



_deletedSoldier = _listgroupsunits select _index;




if(!isplayer _deletedSoldier) then 
{
deletevehicle _deletedSoldier;
hint format ["AI %1 Has been removed from the group", _returnedSoldier];


lbDelete [1500, _index];

} else

{
	hint "You cannot delete Human Players";
	
	};

