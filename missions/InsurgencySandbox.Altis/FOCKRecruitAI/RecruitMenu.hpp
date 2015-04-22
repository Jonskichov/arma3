#define CT_STATIC	0
#define CT_BUTTON	1
#define CT_EDIT	2
#define CT_SLIDER	3
#define CT_COMBO	4
#define CT_LISTBOX	5
#define CT_TOOLBOX	6
#define CT_CHECKBOXES	7
#define CT_PROGRESS	8
#define CT_HTML	9
#define CT_STATIC_SKEW	10
#define CT_ACTIVETEXT	11
#define CT_TREE	12
#define CT_STRUCTURED_TEXT	13
#define CT_CONTEXT_MENU	14
#define CT_CONTROLS_GROUP	15
#define CT_XKEYDESC	40
#define CT_XBUTTON	41
#define CT_XLISTBOX	42
#define CT_XSLIDER	43
#define CT_XCOMBO	44
#define CT_ANIMATED_TEXTURE	45
#define CT_OBJECT	80
#define CT_OBJECT_ZOOM	81
#define CT_OBJECT_CONTAINER	82
#define CT_OBJECT_CONT_ANIM	83
#define CT_LINEBREAK	98
#define CT_USER	99
#define CT_MAP	100
#define CT_MAP_MAIN	101
#define ST_POS	0x0F
#define ST_HPOS	0x03
#define ST_VPOS	0x0C
#define ST_LEFT	0x00
#define ST_RIGHT	0x01
#define ST_CENTER	0x02
#define ST_DOWN	0x04
#define ST_UP	0x08
#define ST_VCENTER	0x0c
#define ST_TYPE	0xF0
#define ST_SINGLE	0
#define ST_MULTI	16
#define ST_TITLE_BAR	32
#define ST_PICTURE	48
#define ST_FRAME	64
#define ST_BACKGROUND	80
#define ST_GROUP_BOX	96
#define ST_GROUP_BOX2	112
#define ST_HUD_BACKGROUND	128
#define ST_TILE_PICTURE	144
#define ST_WITH_RECT	160
#define ST_LINE	176
#define ST_SHADOW	0x100
#define ST_NO_RECT	0x200
#define ST_KEEP_ASPECT_RATIO	0x800
#define ST_TITLE	ST_TITLE_BAR + ST_CENTER
#define SL_DIR	0x400
#define SL_VERT	0
#define SL_HORZ	0x400
#define SL_TEXTURES	0x10
#define LB_TEXTURES	0x10
#define LB_MULTI	0x20
#define FontM	"TahomaB"
#define FontHTML	"TahomaB"


class AiText
{
	type=CT_STATIC;
	idc=-1;
	style=ST_LEFT;
	colorBackground[]={0, 0, 0, 0};
	colorText[]={1, 1, 1, 1};
	font=FontM;
	sizeEx=0.03;
	text="";
};

class AiBgFrame
{
	type=CT_STATIC;
	idc=-1;
	style=ST_FRAME;
	colorBackground[]={0.4, 0.4, 0.4, 0.75};
	colorText[]={0, 0, 0, 1};
	font=FontM;
	SizeEX=0.025;
	text="";
};

class AiBackground
{
	colorBackground[]={0.4, 0.4, 0.4, 0.75};
	text="";
	type=CT_STATIC;
	idc=-1;
	style=ST_LEFT;
	colorText[]={1, 1, 1, 1};
	font=FontM;
	sizeEx=0.04;
};

class AiPicture
{
	type=CT_STATIC;
	idc=-1;
	style=ST_PICTURE;
	colorBackground[]={0, 0, 0, 0};
	colorText[]={1, 1, 1, 1};
	font=FontM;
	sizeEx=0.02;
	text="";
};

class AiButton
{
	type=CT_BUTTON;
	idc=-1;
	style=ST_CENTER;
	colorText[]={0, 0, 0, 1};
	font=FontHTML;
	sizeEx=0.025;
//	soundEnter[] = {"\A3\ui_f\data\sound\onover", 0.09, 1};
	soundPush[] = {"\A3\ui_f\data\sound\new1", 0.0, 0};
	soundClick[] = {"\A3\ui_f\data\sound\onclick", 0.07, 1};
	soundEscape[] = {"\A3\ui_f\data\sound\onescape", 0.09, 1};
	default=false;
	text="";
	action="";
	colorActive[]={0, 0, 0, 0};
	colorDisabled[]={0, 0, 0, 0.1};
	colorBackground[]={0,0,0,0.3};
	colorBackgroundActive[]={0,0,0,0.4};
	colorBackgroundDisabled[]={0,0,0,0.3};
	colorFocused[]={0.84,1,0.55,1};
	colorShadow[]={1, 1, 1, 0.1};
	colorBorder[]={0, 0, 0, 0.1};
	offsetX=0;
	offsetY=0;
	offsetPressedX=0;
	offsetPressedY=0;
	borderSize=0;
	soundEnter[]={"", 0.15, 1};
};

class AiButton2:AiButton
{
	x=-1.0;
	y=-1.0;
	idc=-1;
	w=0.01;
	h=0.01;
	default=true;
};

class AiEdit
{
	type=CT_EDIT;
	idc=-1;
	style=ST_LEFT;
	font=FontHTML;
	sizeEx=0.02;
	colorText[]={0, 0, 0, 1};
	colorSelection[]={0.5, 0.5, 0.5, 1};
	autocomplete=false;
	text="";
};

class AiLB_C
{
	style=ST_LEFT;
	idc=-1;
	colorSelect[]={0.4, 0.4, 0.4, 1};
	colorSelectBackground[]={0.2, 0.2, 0.2, 1};
	colorText[]={0.2, 0.2, 0.2, 1};
	colorBackground[]={0.4, 0.4, 0.4, 1};
	font=FontHTML;
	sizeEx=0.025;
	rowHeight=0.04;
};

class AiListBox:AiLB_C
{
	soundSelect[]={"", 0.1, 1};
	type=CT_LISTBOX;
};

class AiCombo:AiLB_C
{
	type=CT_COMBO;
	wholeHeight=0.3;
	soundSelect[]={"", 0.15, 1};
	soundExpand[]={"", 0.15, 1};
	soundCollapse[]={"", 0.15, 1};
};

class AiSliderH
{
	access=0;
	type=CT_SLIDER;
	idc=-1;
	sizeEx=0.025;
	style=1024;
	color[]={0.2, 0.2, 0.2, 1};
	colorActive[]={1, 1, 1, 1};
};

class AiSliderV
{
	access=0;
	type=CT_SLIDER;
	idc=-1;
	sizeEx=0.025;
	style=0;
	color[]={0.2, 0.2, 0.2, 1};
	colorActive[]={1, 1, 1, 1};
};

//addedAI Group screen

class CrtlwinText
{
	type=CT_STATIC;
	idc=-1;
	style=ST_LEFT;
	colorBackground[]={0, 0, 0, 0};
	colorText[]={1, 1, 1, 1};
	font=FontM;
	sizeEx=0.02;
	text="";
};

class CrtlwinBackground
{
	type=0;
	idc=-1;
	style= 48;
	colorText[]={1, 1, 1, 1};
	colorBackground[] = {0,0,0,0};
	text = "\A3\ui_f\data\gui\RscCommon\RscShortCutButton\background_ca.paa";
	font = "PuristaMedium";
	sizeEx = 0.04;	
};

class CrtlwinPicture
{
	type=CT_STATIC;
	idc=-1;
	style=ST_PICTURE;
	colorBackground[]={0, 0, 0, 0};
	colorText[]={1, 1, 1, 1};
	font=FontM;
	sizeEx=0.02;
	text="";
};

class CrtlwinButton
{
	type=CT_BUTTON;
	idc=-1;
	style=ST_CENTER;
	colorText[]={0, 0, 0, 1};
	font="PuristaMedium";
	sizeEx=0.031;
//	soundEnter[] = {"\A3\ui_f\data\sound\onover", 0.09, 1};
	soundPush[] = {"\A3\ui_f\data\sound\new1", 0.0, 0};
	soundClick[] = {"\A3\ui_f\data\sound\onclick", 0.07, 1};
	soundEscape[] = {"\A3\ui_f\data\sound\onescape", 0.09, 1};
	default=false;
	text="\A3\ui_f\data\gui\cfg\ButtonImages\start_ca.paa";
	action="";
	colorActive[]={0, 0, 0, 0};
	colorDisabled[]={0, 0, 0, 0.1};
	colorBackground[]={0,0,0,0.3};
	colorBackgroundActive[]={0,0,0,0.4};
	colorBackgroundDisabled[]={0,0,0,0.3};
	colorFocused[]={0.84,1,0.55,1};
	colorShadow[]={1, 1, 1, 0.1};
	colorBorder[]={0, 0, 0, 0.1};
	offsetX=0;
	offsetY=0;
	offsetPressedX=0;
	offsetPressedY=0;
	borderSize=0;
	soundEnter[]={"", 0.15, 1};
};

class CrtlwinButton2:CrtlwinButton
{
	x=-1.0;
	y=-1.0;
	idc=-1;
	w=0.01;
	h=0.01;
	default=true;
};

class CrtlwinEdit
{
	type=CT_EDIT;
	idc=-1;
	style=ST_LEFT;
	font=FontHTML;
	sizeEx=0.02;
	colorText[]={0, 0, 0, 1};
	colorSelection[]={0.5, 0.5, 0.5, 1};
	autocomplete=false;
	text="";
};

class CrtlwinLB_C
{
	//style=ST_LEFT;
	style = ST_CENTER;
	idc=-1;
	colorSelect[]={0.4, 0.4, 0.4, 1};
	colorSelectBackground[]={0.2, 0.2, 0.2, 1};
	colorText[]={0.2, 0.2, 0.2, 1};
	colorBackground[]={0.4, 0.4, 0.4, 1};
	font="PuristaMedium";
	sizeEx=0.040;
	rowHeight=0.04;
};

class CrtlwinListBox:CrtlwinLB_C
{
	 type=5;
	 colorScrollbar[] = {0.2, 0.2, 0.2, 1};
     colorDisabled[] = {1, 1, 1, 0.25};
	colorSelect[] = {1, 1, 1, 1};
	colorText[] = {1, 1, 1, 1};
	colorBackground[] = {0.3,0.3,0.3,0.3};
	colorSelect2[] = {0, 0, 0, 1};
	colorSelectBackground[] = {0.95, 0.95, 0.95, 1};
	colorSelectBackground2[] = {1, 1, 1, 0.5};
	 maxHistoryDelay = 1.0;
	 soundSelect[] = {"",0.1,1};
	 period = 1;
	 autoScrollSpeed = -1;
	 autoScrollDelay = 5;
	 autoScrollRewind = 0;
	arrowFull = "\A3\ui_f\data\gui\cfg\scrollbar\arrowFull_ca.paa";
	arrowEmpty = "\A3\ui_f\data\gui\cfg\scrollbar\arrowEmpty_ca.paa";
	 shadow = 0;
		 class ScrollBar
		 {
		  color[] = {1,1,1,0.6};
		  colorActive[] = {1,1,1,1};
		  colorDisabled[] = {1,1,1,0.3};
	      thumb = "\A3\ui_f\data\gui\cfg\scrollbar\thumb_ca.paa";
	      	arrowFull = "\A3\ui_f\data\gui\cfg\scrollbar\arrowFull_ca.paa";
    		arrowEmpty = "\A3\ui_f\data\gui\cfg\scrollbar\arrowEmpty_ca.paa";
    		border = "\A3\ui_f\data\gui\cfg\scrollbar\border_ca.paa";
		  shadow = 0;
		 };
};

class CrtlwinCombo: CrtlwinLB_C
{
	type=CT_COMBO;
	wholeHeight=0.3;
	soundSelect[]={"", 0.15, 1};
	soundExpand[]={"", 0.15, 1};
	soundCollapse[]={"", 0.15, 1};
};

class CrtlwinSliderH
{
	access=0;
	type=CT_SLIDER;
	idc=-1;
	sizeEx=0.025;
	style=1024;
	color[]={0.2, 0.2, 0.2, 1};
	colorActive[]={1, 1, 1, 1};
};

class CrtlwinSliderV
{
	access=0;
	type=CT_SLIDER;
	idc=-1;
	sizeEx=0.025;
	style=0;
	color[]={0.2, 0.2, 0.2, 1};
	colorActive[]={1, 1, 1, 1};
};
#include "AiMenu.hpp"
