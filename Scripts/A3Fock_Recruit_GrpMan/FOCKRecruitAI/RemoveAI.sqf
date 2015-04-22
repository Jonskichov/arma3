/////////////////////
// Remove AI from Group
// [FOCK] Mikie J
/////////////////////

private ["_playerGrp","_cntF"];
if (leader group player != player) exitwith {hint "You are Not the leader";};

//get the group player is currently assigned to before pressing the Alpha team  button
_playerGrp = group player;
_cntF = (count units _playerGrp)-1;

	
if (_cntF > 0) then
  {
	{	
	//if (Not human player in squad)
	if (!isPlayer _x)	then
		{
		deletevehicle _x;
		}
	}foreach units _playerGrp;
	
	hint "AI UNITS HAVE BEEN REMOVED!";
   }
   else
   {
	hint "No Units to Remove";      
	   
    };



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