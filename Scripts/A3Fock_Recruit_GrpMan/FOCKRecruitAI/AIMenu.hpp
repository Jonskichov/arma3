////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT START (by Mikie_J, v1.061, #Sorucu)
////////////////////////////////////////////////////////
class AiMenu
{
	name=AiMenu;
	idd=166;
	movingEnable=1;
	controlsBackground[]={AIBGMenu};
	objects[]={};
	controls[]={btnEngineer, btnMedic, btnMachineG, btnAASoldier, btnATSoldier, btnSpecOPs, btnSniper, btnRemoveSoldier, btnClose, btnClearAI, PlayerGrpName, GrpNames, listTeamDialog, btnRemoveFromGroup, btnRemoveLeader, btnBecomeLeader,listGroupDialog,btnJoinGroup,listGroupPlayerDialog,btnShowGroup, btnShowHumansInGroup, PlayersNamesGroup};
	
        //CrtlwinBackground //AiBackground
        class AIBGMenu: CrtlwinBackground
        {
        	idc = -1;
        	//--- ToDo: Localize;
        	x = 0.293738 * safezoneW + safezoneX;
        	y = 0.225101 * safezoneH + safezoneY;
        	w = 0.650019 * safezoneW;
        	h = 0.549797 * safezoneH;
        };
        //CrtlwinButton  //AiButton
        class btnMedic: CrtlwinButton
        {
        	idc = -1;
        	text = "Medic"; //--- ToDo: Localize;
	        action="[] spawn Medic";
        	x = 0.304051 * safezoneW + safezoneX;
        	y = 0.247093 * safezoneH + safezoneY;
        	w = 0.0721917 * safezoneW;
        	h = 0.0439838 * safezoneH;
        };
        class btnEngineer: CrtlwinButton
        {
        	idc = -1;
        	text = "Engineer"; //--- ToDo: Localize;
        	action="[] spawn Engineer";
        	x = 0.304051 * safezoneW + safezoneX;
        	y = 0.313069 * safezoneH + safezoneY;
        	w = 0.0721917 * safezoneW;
        	h = 0.0439838 * safezoneH;
        };
        class btnMachineG: CrtlwinButton
        {
        	idc = -1;
        	text = "MachineGunner"; //--- ToDo: Localize;
        	action="[] spawn MachineGunner";
        	x = 0.304051 * safezoneW + safezoneX;
        	y = 0.379045 * safezoneH + safezoneY;
        	w = 0.0721917 * safezoneW;
        	h = 0.0439838 * safezoneH;
        };
        class btnAASoldier: CrtlwinButton
        {
        	idc = -1;
        	text = "Grenadier"; //--- ToDo: Localize;
        	action="[] spawn AASoldier";
        	x = 0.304051 * safezoneW + safezoneX;
        	y = 0.44502 * safezoneH + safezoneY;
        	w = 0.0721917 * safezoneW;
        	h = 0.0439838 * safezoneH;
        };
        class btnATSoldier: CrtlwinButton
        {
        	idc = -1;
        	text = "Anti-Tank"; //--- ToDo: Localize;
        	action="[] spawn ATSoldier";
        	x = 0.304051 * safezoneW + safezoneX;
        	y = 0.510996 * safezoneH + safezoneY;
        	w = 0.0721917 * safezoneW;
        	h = 0.0439838 * safezoneH;
        };
        class btnSpecOPs: CrtlwinButton
        {
        	idc = -1;
        	text = "Spec Ops"; //--- ToDo: Localize;
        	action="[] spawn SpecOps";
        	x = 0.304051 * safezoneW + safezoneX;
        	y = 0.576972 * safezoneH + safezoneY;
        	w = 0.0721917 * safezoneW;
        	h = 0.0439838 * safezoneH;
        };
        class btnSniper: CrtlwinButton
        {
        	idc = -1;
        	text = "Sniper"; //--- ToDo: Localize;
        	action="[] spawn Sniper";
        	x = 0.304051 * safezoneW + safezoneX;
        	y = 0.642947 * safezoneH + safezoneY;
        	w = 0.0721917 * safezoneW;
        	h = 0.0439838 * safezoneH;
        };
        class btnClose: CrtlwinButton
        {
        	idc = -1;
        	text = "Close Dialog"; //--- ToDo: Localize;
        	action="[] spawn ExitGUI; closeDialog 0";
        	x = 0.304051 * safezoneW + safezoneX;
        	y = 0.708923 * safezoneH + safezoneY;
        	w = 0.0515655 * safezoneW;
        	h = 0.0439838 * safezoneH;
        };
        
        class PlayerGrpName : CrtlwinListBox
          {
            idc = 1498;
            text = "Groups Name";
        	x = 0.469495 * safezoneW + safezoneX;
       	    y = 0.235085 * safezoneH + safezoneY;
            w = 0.2;
            h = 0.04;
            
          };  
        

        class listTeamDialog: CrtlwinListBox
        {
        	idc = 1500;
        	text = "Group Soldiers"; //--- ToDo: Localize;
        	x = 0.417495 * safezoneW + safezoneX;
        	y = 0.269085 * safezoneH + safezoneY;
        	w = 0.195323 * safezoneW;
        	h = 0.285895 * safezoneH;
        };
        class btnClearAI: CrtlwinButton
        {
        	idc = -1;
        	text = "Remove All AI"; //--- ToDo: Localize;
        	action="[] spawn RemoveAI";
        	x = 0.417495 * safezoneW + safezoneX;
        	y = 0.708923 * safezoneH + safezoneY;
        	w = 0.0721917 * safezoneW;
        	h = 0.0439838 * safezoneH;
        };
        class btnRemoveSoldier: CrtlwinButton
        {
        	idc = -1;
        	text = "Remove Selected AI"; //--- ToDo: Localize;
       		action="[] spawn RemoveAISelect";
        	x = 0.417495 * safezoneW + safezoneX;
        	y = 0.576972 * safezoneH + safezoneY;
        	w = 0.092818 * safezoneW;
        	h = 0.0439838 * safezoneH;
        };

        class btnRemoveFromGroup: CrtlwinButton
        {
        	idc = -1;
        	text = "Leave Group"; //--- ToDo: Localize;
       		action="[] spawn LeaveGroup";
        	x = 0.520000 * safezoneW + safezoneX;
        	y = 0.576972 * safezoneH + safezoneY;
        	w = 0.092818 * safezoneW;
        	h = 0.0439838 * safezoneH;
        };
        
        class btnRemoveLeader: CrtlwinButton
        {
        	idc = -1;
        	text = "Step-Down As Leader"; //--- ToDo: Localize;
       		action="[] spawn quitLead";
        	x = 0.520000 * safezoneW + safezoneX;
        	y = 0.642947 * safezoneH + safezoneY;
        	w = 0.092818 * safezoneW;
        	h = 0.0439838 * safezoneH;
        };
        
        class btnBecomeLeader: CrtlwinButton
        {
        	idc = -1;
        	text = "Become Leader"; //--- ToDo: Localize;
       		action="[] spawn becomeLead";
        	x = 0.520000 * safezoneW + safezoneX;
        	y = 0.708923 * safezoneH + safezoneY;
        	w = 0.092818 * safezoneW;
        	h = 0.0439838 * safezoneH;
        };
        
        class GrpNames : AiText
          {
            idc = 1499;
            style = ST_CENTER;
            text = "Available Groups";
           	x = 0.645495 * safezoneW + safezoneX;
        	y = 0.219085 * safezoneH + safezoneY;
            w = 0.2;
            h = 0.1;
          };     
            
        
        class listGroupDialog: CrtlwinListBox
        {
        	idc = 1501;
        	text = "Groups"; //--- ToDo: Localize;
        	x = 0.627495 * safezoneW + safezoneX;
        	y = 0.269085 * safezoneH + safezoneY;
        	w = 0.125323 * safezoneW;
        	h = 0.285895 * safezoneH;
        };
        
        class btnJoinGroup: CrtlwinButton
        {
        	idc = -1;
        	text = "Join Selected Group"; //--- ToDo: Localize;
       		action="[] spawn joinGroup";
        	x = 0.641495 * safezoneW + safezoneX;
        	y = 0.576972 * safezoneH + safezoneY;
        	w = 0.096818 * safezoneW;
        	h = 0.0439838 * safezoneH;
        };
        
        class btnShowGroup: CrtlwinButton
        {
        	idc = -1;
        	text = "Show Players in Group"; //--- ToDo: Localize;
       		action="[] spawn showGroup";
           	x = 0.641495 * safezoneW + safezoneX;
         	y = 0.642947 * safezoneH + safezoneY;
        	w = 0.096818 * safezoneW;
        	h = 0.0439838 * safezoneH;
        };
        
        
        class listGroupPlayerDialog: CrtlwinListBox
        {
        	idc = 1502;
        	text = "Groups Players"; //--- ToDo: Localize;
        	x = 0.767495 * safezoneW + safezoneX;
        	y = 0.269085 * safezoneH + safezoneY;
        	w = 0.125323 * safezoneW;
        	h = 0.285895 * safezoneH;
        };
        
          class PlayersNamesGroup : AiText
          {
            idc = 1503;
            style = ST_CENTER;
            text = "Players in Group";
            x = 0.775495 * safezoneW + safezoneX;
        	y = 0.219085 * safezoneH + safezoneY;
            w = 0.25;
            h = 0.1;
          };  
        
        
        class btnShowHumansInGroup: CrtlwinButton
        {
        	idc = -1;
        	text = "Show Human Players"; //--- ToDo: Localize;
       		action="[] spawn humansInGroup";
         	x = 0.782495 * safezoneW + safezoneX;
      	    y = 0.576972 * safezoneH + safezoneY;
        	w = 0.096818 * safezoneW;
        	h = 0.0439838 * safezoneH;
        };
        
};

////////////////////////////////////////////////////////
// GUI EDITOR OUTPUT END
////////////////////////////////////////////////////////
