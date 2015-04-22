/////////////////////////////
// [FOCK]ers AI  Recruit
// [FOCK] Mikie J
//////////////////////////////
Private ["_soldier"];

if (RecruitActive == 0) exitwith {Hint "Recruiting Has been turned off";};


if (side player == WEST) then {_soldier = "B_soldier_AA_F";} else {_soldier = "O_Soldier_AA_F";}; 

if (player != (leader group player)) exitwith {hint "You must be a Group leader to recruit AI"};

_cnt = count units group player; // returns number of units in player group
//hint format["AI %1",_cnt];


if(_cnt <=RecruitTotal) then
{

_unit = group player createUnit [_soldier, Position player, [], 0, "FORM"];
null = [_unit] execVM "UKInf\UKInf_AntiAir.sqf";

} 
else

{
 hint format ["You can only have %1 soldiers in your group, Including Human players",RecruitTotal];	
};

 recruit_active = false; 