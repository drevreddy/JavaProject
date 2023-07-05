
	var NoOffFirstLineMenus=9;		// Number of first level items
	var LowBgColor='68b0d0';		// Background color when mouse is not over
	var LowSubBgColor='red';		// Background color when mouse is not over on subs
	var HighBgColor='D8E8F8';		// Background color when mouse is over
	var HighSubBgColor='D8E8F8';		// Background color when mouse is over on subs
	var FontLowColor='#bbe9ff';		// Font color when mouse is not over
	var FontSubLowColor='ffffff';		// Font color subs when mouse is not over
	var FontHighColor='RED';		// Font color when mouse is over
	var FontSubHighColor='RED';		// Font color subs when mouse is over
	var BorderColor='003366';		// Border color
	var BorderSubColor='003366';		// Border color for subs
	var BorderWidth=1;			// Border width
	var BorderBtwnElmnts=1;			// Border between elements 1 or 0
	var FontFamily="arial,comic sans ms,technical"	// Font family menu items
	var FontSize=9;				// Font size menu items
	var FontBold=1;				// Bold menu items 1 or 0
	var FontItalic=0;			// Italic menu items 1 or 0
	var MenuTextCentered='center';		// Item text position 'left', 'center' or 'right'
	var MenuCentered='left';		// Menu horizontal position 'left', 'center' or 'right'
	var MenuVerticalCentered='top';		// Menu vertical position 'top', 'middle','bottom' or static
	var ChildOverlap=.2;			// horizontal overlap child/ parent
	var ChildVerticalOverlap=.2;		// vertical overlap child/ parent
	var StartTop=60;				// Menu offset x coordinate175
	var StartLeft=1;			// Menu offset y coordinate
	var VerCorrect=4;			// Multiple frames y correction
	var HorCorrect=0;			// Multiple frames x correction
	var LeftPaddng=3;			// Left padding
	var TopPaddng=2;			// Top padding
	var FirstLineHorizontal=1;		// SET TO 1 FOR HORIZONTAL MENU, 0 FOR VERTICAL
	var MenuFramesVertical=1;		// Frames in cols or rows 1 or 0
	var DissapearDelay=1000;		// delay before menu folds in
	var TakeOverBgColor=1;			// Menu frame takes over background color subitem frame	
	var FirstLineFrame='navig';		// Frame where first level appears
	var SecLineFrame='space';		// Frame where sub levels appear
	var DocTargetFrame='space';		// Frame where target documents appear
	var TargetLoc='';			// span id for relative positioning
	var HideTop=0;				// Hide first level when loading new document 1 or 0
	var MenuWrap=1;				// enables/ disables menu wrap 1 or 0
	var RightToLeft=0;			// enables/ disables right to left unfold 1 or 0
	var UnfoldsOnClick=0;			// Level 1 unfolds onclick/ onmouseover
	var WebMasterCheck=0;			// menu tree checking on or off 1 or 0
	var ShowArrow=1;			// Uses arrow gifs when 1
	var KeepHilite=1;			// Keep selected path highligthed
	var Arrws=['images/tri.gif',5,10,'tridown.gif',10,5,'trileft.gif',5,10];	// Arrow source, width and height

function BeforeStart(){return}
function AfterBuild(){return}
function BeforeFirstOpen(){return}
function AfterCloseAll(){return}


// Menu tree
//	MenuX=new Array(Text to show, Link, background image (optional), number of sub elements, height, width);
//	For rollover images set "Text to show" to:  "rollover:Image1.jpg:Image2.jpg"

Menu1=new Array("Home","home.jsp","",0,18,85);

Menu2=new Array("About us","aboutus.jsp","",0);

Menu3=new Array("Iteractives","","",1);
	Menu3_1=new Array("Route Maps","route.html","",0,17,80);	


Menu4=new Array("In Flight","","",2);
	Menu4_1=new Array("Amenities"," ","",4,20,105);	
		Menu4_1_1=new Array("First Class","h1.html","",0,17,80);	
		Menu4_1_2=new Array("Executive","h2.html","",0,17,80);	
		Menu4_1_3=new Array("Economy","h3.html","",0,17,80);
		Menu4_1_4=new Array("Lounges","h4.html","",0,17,80);	
		Menu4_1_5=new Array("Culsine","h5.html","",0,17,80);	
	Menu4_2=new Array("Entertainment"," ","",2,20,105);	
		Menu4_2_1=new Array("In Bound","h6.html","",0,17,80);	
		Menu4_2_2=new Array("Out Bound","h7.html","",0,17,80);	
	
Menu5=new Array("Seating","","",2);
	Menu5_1=new Array("Gallery","h8.html","",0,17,80);	
	Menu5_2=new Array("Layouts","h9.html","",0,17,80);	

Menu6=new Array("Benefits","","",5);
	Menu6_1=new Array("Citizen Character","h10.html.jsp","",0,17,120);	
	Menu6_2=new Array("Passenger Needs","h11.html","",0,17,80);	
	Menu6_3=new Array("Code Shares","h12.html","",0,17,80);	
	Menu6_4=new Array("First Time Package","h13.html","",0,17,80);	
	Menu6_5=new Array("Frequent Package","h14.html","",0,17,80);	


Menu7=new Array("Customer Care","","",4);
	Menu7_1=new Array("Baggage Handling","h15.html","",0,17,130);	
	Menu7_2=new Array("Inflight Merchandise","h16.html","",0,17,80);	
	Menu7_3=new Array("Refund Issues","h17.html","",0,17,80);	
	Menu7_4=new Array("Security Regulations","h18.html","",0,17,80);	
		
Menu8=new Array("Faq's","","",1);
	Menu8_1=new Array("Faq's","h20.html","",0,17,80);	


Menu9=new Array("Contact us","","",1);
	Menu9_1=new Array("Offices","h21.html","",0,17,90);