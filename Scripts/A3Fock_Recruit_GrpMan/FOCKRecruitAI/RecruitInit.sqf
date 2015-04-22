//////////////////////////////////////////////////////////////////
// Function file for Armed Assault
// [FOCK] Mikie J
//////////////////////////////////////////////////////////////////

if (isServer) then 
{
	"FOCK_SetLeader" addPublicVariableEventHandler 
	{
		group ((_this select 1) select 0) selectLeader ((_this select 1) select 1);
	
	};
	
	"FOCK_DelEmptyGroup" addPublicVariableEventHandler 
	{
		_Group = ((_this select 1) select 0);
		deleteGroup ((_this select 1) select 0);
		_Group = nil; 
	
	};
	
	
};

//Changes these in order from the description file. 
GroupActive = ParamsArray Select 1;
RecruitActive = ParamsArray Select 2;
RecruitTotal = ParamsArray Select 3;
LeaveGroupDeleteAI = ParamsArray Select 4;
EmptyGroupDelete = ParamsArray Select 5;

if (GroupActive == 1) then
{
// ExecVM "FOCKRecruitAI\RecruitInit.sqf";

Engineer = compile (preprocessFileLineNumbers "FOCKRecruitAI\createengineer.sqf");
medic = compile (preprocessFileLineNumbers "FOCKRecruitAI\createmedic.sqf");
RecruitMenu =  compile (preprocessFileLineNumbers "FOCKRecruitAI\RecruitMenu.sqf");

Sniper = compile (preprocessFileLineNumbers "FOCKRecruitAI\createSniper.sqf");
SpecOps = compile (preprocessFileLineNumbers "FOCKRecruitAI\createSpecOps.sqf");
ATSoldier = compile (preprocessFileLineNumbers "FOCKRecruitAI\createATSoldier.sqf");
AASoldier = compile (preprocessFileLineNumbers "FOCKRecruitAI\createAASoldier.sqf");
Engineer = compile (preprocessFileLineNumbers "FOCKRecruitAI\createengineer.sqf");
MachineGunner = compile (preprocessFileLineNumbers "FOCKRecruitAI\createMachineGunner.sqf");
medic = compile (preprocessFileLineNumbers "FOCKRecruitAI\createmedic.sqf");
ExitGUI = compile (preprocessFileLineNumbers "FOCKRecruitAI\ExitGUI.sqf");
RemoveAI = compile (preprocessFileLineNumbers "FOCKRecruitAI\RemoveAI.sqf");
RemoveAISelect = compile (preprocessFileLineNumbers "FOCKRecruitAI\RemoveAISelect.sqf");
 ExecVM "FOCKRecruitAI\RecruitTimer.sqf";
 ExecVM "FOCKRecruitAI\RecruitAction.sqf";
 
  
 //Group management stuff
 becomeLead = compile (preprocessFileLineNumbers "groupsMenu\leadGroup.sqf");
 quitLead = compile (preprocessFileLineNumbers "groupsMenu\quitLead.sqf");
 LeaveGroup = compile (preprocessFileLineNumbers "groupsMenu\leaveGroup.sqf");
 joinGroup = compile (preprocessFileLineNumbers "groupsMenu\JoinGroup.sqf");
 showGroup = compile (preprocessFileLineNumbers "groupsMenu\showGroup.sqf");
 humansInGroup = compile (preprocessFileLineNumbers "groupsMenu\humansInGroup.sqf");
 
 if (isserver) then
 {
	if (EmptyGroupDelete == 1) then
	{
	ExecVM "groupsMenu\GroupCleanUp.sqf";		
	};
	 
	 
 };
 
};


