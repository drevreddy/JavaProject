<link href="air.cdf" rel="stylesheet">
<html>
<head>
<title> (Bharat Airways) Cosmos Adding Form</title>
</head>
<script language=javascript>

function dd() 
{

cosmos.MonthView1.style.visibility = "Visible"
}


function MonthView1_Click()
{
var mon,yer;
mon = cosmos.MonthView1.month;

if(mon==1)
  mon='jan';
else
if(mon==2)
  mon='feb';
else
if(mon==3)
  mon='mar';
else
if(mon==4)
  mon='apr';
else
if(mon==5)
  mon='may';
else
if(mon==6)
  mon='jun';
else
if(mon==7)
  mon='jul';
else
if(mon==8)
  mon='aug';
else
if(mon==9)
  mon='sep';
else
if(mon==10)
  mon='oct';
else
if(mon==11)
  mon='nov';
else
if(mon==12)
  mon='dec';

yer="'" + cosmos.MonthView1.Year +  "'";

document.cosmos.dob.value = cosmos.MonthView1.day + "/" + mon + "/" + yer.substr(3,2);
cosmos.MonthView1.style.visibility = "Hidden";
}




function formvalid()
{
var userid=document.cosmos.userid.value;
var password=document.cosmos.password.value;
var fname=document.cosmos.fname.value;
var lname=document.cosmos.lname.value;
var dob=document.cosmos.dob.value;
var sex=document.cosmos.sex.value;
var education=document.cosmos.education.value;
var occupation=document.cosmos.occupation.value;
var nationality=document.cosmos.nationality.value;
var paddress=document.cosmos.paddress.value;
var praddress=document.cosmos.praddress.value;
var state=document.cosmos.state.value;
var country=document.cosmos.country.value;
var zip=document.cosmos.zip.value;
var phone=document.cosmos.phone.value;
var mobile=document.cosmos.mobile.value;
var oinfo=document.cosmos.oinfo.value;
var creditcardname=document.cosmos.creditcardname.value;
var creditcardno=document.cosmos.creditcardno.value;
var cpassword=document.cosmos.cpassword.value;


if((userid.length==0) || (password.length==0) || (fname.length==0) || (lname.length==0) || (dob.length==0) || (education.length==0) || (occupation.length==0) || (nationality.length==0) || (paddress.length==0) || (praddress.length==0) || (state.length==0) || (zip.length==0) || (phone.length==0) || (mobile.length==0) || (oinfo.length==0) || (creditcardname.length==0) || (creditcardno.length==0) || (cpassword.length==0)) 
alert('fill the form completely')
else
cosmos.submit();
}

</script>

<SCRIPT LANGUAGE=javascript FOR=MonthView1 EVENT=Click>
<!--
 MonthView1_Click()
//-->
</SCRIPT>

</head>
<body background=images\back.jpg >
<center>

<img style="position:absolute;top:0;left:0;" width=594 height=83 align=center src=images\top.jpg>
<IMG height=48 style="position:absolute;top:0;left:590;"
            src="images/internal_top_02.jpg" 
            width=184 useMap=#Map1 border=0>>
<IMG height=35 style="position:absolute;top:47;left:590;"
            src="images/internal_top_04.jpg" 
            width=184 useMap=#Map1 border=0>
</center>
<MAP name=Map1><AREA shape=RECT class=linksTopMenu
        alt=Home coords=12,7,46,45 
        href=""><AREA shape=RECT 
        target=_blank coords=54,3,83,45 
        href="index.jsp"><AREA 
        shape=RECT coords=91,5,121,46 
        href="site.jsp"><AREA 
        shape=RECT coords=133,5,171,46 
        href=""></MAP>
<br><br><br><br>

<form name=cosmos action=cosmosins.jsp>
<center>
<font size=4 color=darkblue>
<br><br>
<b>Cosmos Registration Form</b><br>
<b>New Entry</b>
</font></center>
<br>
  <table align=center border="0" cellpadding="0" cellspacing="0" width="85%">
    <tr>
      <td width="100%" bgcolor="#FF6600"><B><font class="bobe-header-font" face="Verdana" size="3">&nbsp;&nbsp;&nbsp;&nbsp;
        User Registration&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <a href="index.htm"><font color="#000000">Home</font></a></font></B></td>
    </tr>
    <tr>
      <td width="100%"><br>
        <font face="Verdana" size="2">Fill out the form to become a member 
      of India's largest Air Travels- airbharat.com. You must 
      register to buy or sell an item and it's completely free. We respect 
      your privacy and assure you that the information you provide us will not 
      be sold to any third party. All the fields marked with (&nbsp;<B><FONT 
      color=#ff3300>*</FONT></B> ) are <B><FONT color=red>compulsory 
      </FONT></B>and must be filled out</font>.<br>
        </FONT></td>
    </tr>
  </table>

<br><br>

<OBJECT id=MonthView1 classid=clsid:8E27C92B-1264-101C-8A2F-040224009C02 style="position:absolute;top:500;left:500;VISIBILITY: hidden;"  width=200 ></object>

<table  align =center  border=1>
<tr><td class=td><b>User Id *</b></td><td>
<input name=userid type=text  size=20  ></td></tr>
<tr><td class=td><b>Password *</b></td><td>
<input name=password type=password  size=10  ></td></tr>
<tr><td class=td><b>Retype Password *</b></td><td>
<input name=rpassword type=password  size=10  ></td></tr>

    <tr>
      <td width="100%" height="21" colspan="2" bgcolor="red">&nbsp;</td>
    </tr>

<tr><td class=td><b>First Name *</b></td><td>
<input name=fname type=text  size=20  ></td></tr>
<tr><td class=td><b>Last Name *</b></td><td>
<input name=lname type=text  size=20  ></td></tr>
<tr><td class=td><b>Date of Birth</b></td><td>
<input name=dob type=text  size=8 onfocus='dd();'></td></tr>
<tr><td class=td><b>Sex</b></td><td><select name=sex><option value=m>Male</option><option value=f>Female</option></td></tr>
    <tr>
      <td width="100%" height="21" colspan="2" bgcolor="red">&nbsp;</td>
    </tr>

<tr><td class=td><b>Educational Qualification</b></td><td>
<input name=education type=text  size=20  ></td></tr>
<tr><td class=td><b>Occupation</b></td><td>
<input name=occupation type=text  size=20 ></td></tr>
<tr><td class=td><b>Nationality</b></td><td>
<input name=nationality type=text  size=20  ></td></tr>
    <tr>
      <td width="100%" height="21" colspan="2" bgcolor="red">&nbsp;</td>
    </tr>

<tr><td class=td><b>Present Address</b></td><td>
<input name=paddress type=text  size=30  ></td></tr>
<tr><td class=td><b>Permanent address</b></td><td>
<input name=praddress type=text  size=30  ></td></tr>
<tr><td class=td><b>State</b></td><td>
<select name=state><option value=ap>Andhra Pradesh</option><option value=tn>Tamil Nadu</option> <option value=kn>Karanataka</option></select></td></tr>
<tr><td class=td><b>Country</b></td><td>
<select name=country><option> India </option><option>Sri Lanka</option></select></td></tr>
<tr><td class=td><b>zip</b></td><td>
<input name=zip type=text  size=10 onkeypress='if(event.keyCode<48 || event.keyCode>58){cosmos.zip.focus(); return false;}if(cosmos.zip.value.length>10)return false;'></td></tr>
    <tr>
      <td width="100%" height="21" colspan="2" bgcolor="red">&nbsp;</td>
    </tr>

<tr><td class=td><b>Phone Number</b></td><td>
<input name=phone type=text  size=10 onkeypress='if(event.keyCode<48 || event.keyCode>58){cosmos.phone.focus(); return false;}if(cosmos.phone.value.length>10)return false;'></td></tr>
<tr><td class=td><b>Mobile Number</b></td><td>
<input name=mobile type=text  size=10 onkeypress='if(event.keyCode<48 || event.keyCode>58){cosmos.mobile.focus(); return false;}if(cosmos.mobile.value.length>10)return false;'></td></tr>
<tr><td class=td><b>Other Information</b></td><td>
<textarea rows=5 cols=25 name=oinfo></textarea></td></tr>
    <tr>
      <td width="100%" height="21" colspan="2" bgcolor="red">&nbsp;</td>
    </tr>

<tr><td class=td><b>Credit Card Company *</b></td><td>
<select name=creditcardname> <option value=visa> Visa Card </option><option value=master>Master Card</option></select></td></tr>
<tr><td class=td><b>Credit Card Num *</b></td><td>
<input name=creditcardno type=text  size=15  ></td></tr>
<tr><td class=td><b>Credit Password *</b></td><td>
<input name=cpassword type=password  size=15  ></td></tr>

</table>
<center>
<br><br>
<div align="center">
  <center>
  <table border="1" cellpadding="0" cellspacing="0" width="85%" height="70" bordercolorlight="#000000" bordercolordark="#FFFFFF">
    <tr>
      <td width="100%" bgcolor="#FFFF00" height="28"><font face="Verdana" size="2">&nbsp;
        <b>Terms and Conditions</b></font></td>
    </tr>
    <tr>
      <td width="100%" bgcolor="#CCCCFF" height="21">&nbsp;</td>
    </tr>
    <tr>
      <td width="100%" height="21"><font face="Verdana" size="2">I have read and agreed to 
            abide by the bharat Air ways agreement.&nbsp; <BR><BR>I am above 18 or am 
            using the site in conjunction with my parents or legal guardian's 
            permission and they have&nbsp;agreed to be legally bound by all 
            Terms of Use on my behalf. <BR><BR>I recognise that all selling and buying 
            activity undertaken by me on the site is legally binding.</font>
        <p><font face="Verdana" size="2">I Accept the Terms and Conditions</font>&nbsp;&nbsp;
      </td>
    </tr>
  </table>
  </center>
</div>
<p align="center">
<br>
<a href="javascript:formvalid()">
	<img border="0" src="images/register_new.gif">
</a>


</form>
</body>
</html>
