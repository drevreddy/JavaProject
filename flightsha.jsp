<link href="air.cdf" rel="stylesheet">
<%@ page import="java.sql.*" %>
<%@ include file="common.jsp"%>
<html>
<head>
<title> (Bharat Airways) Fschedule Adding Form</title>
</head>
<script language="JavaScript">

function checkplace()
{
  if (document.fschedule.fromid.value == document.fschedule.toid.value)
      {
           alert('From place to place should not be same');
		document.fschedule.fromid.focus();
	}
}

function dd() 
{

fschedule.MonthView1.style.visibility = "Visible"
}


function MonthView1_Click()
{
var mon,yer;
mon = fschedule.MonthView1.month;

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

yer="'" + fschedule.MonthView1.Year +  "'";

document.fschedule.doj.value = fschedule.MonthView1.day + "/" + mon + "/" + yer.substr(3,2);
fschedule.MonthView1.style.visibility = "Hidden";
document.fschedule.timein.focus();
}



function enableAll()
{
document.fschedule.flightid.disabled=false;
document.fschedule.doj.disabled=false;
document.fschedule.timein.disabled=false;
document.fschedule.timeout.disabled=false;
document.fschedule.fromid.disabled=false;
document.fschedule.toid.disabled=false;
document.fschedule.eseats.disabled=false;
document.fschedule.efare.disabled=false;
document.fschedule.bseats.disabled=false;
document.fschedule.bfare.disabled=false;
document.fschedule.exseats.disabled=false;
document.fschedule.exfare.disabled=false;
}

function formvalid()
{

var doj=document.fschedule.doj.value;
var timein=document.fschedule.timein.value;
var timeout=document.fschedule.timeout.value;
var fromid=document.fschedule.fromid.value;
var toid=document.fschedule.toid.value;
var eseats=document.fschedule.eseats.value;
var efare=document.fschedule.efare.value;
var bseats=document.fschedule.bseats.value;
var exfare=document.fschedule.exfare.value;

if( (doj.length==0) || (timein.length==0) || (timeout.length==0) || (fromid.length==0) || (toid.length==0) || (eseats.length==0) || (efare.length==0) || (bseats.length==0) || (bfare.length==0) || (exfare.length==0)) 
{
alert('fill the form completely')
return false;
}
else
  if (fromid == toid)
      {
           alert('From place to place should not be same');
		return false;

	}
else
return true;
}

</script>

<SCRIPT LANGUAGE=javascript FOR=MonthView1 EVENT=Click>
<!--
 MonthView1_Click()
//-->
</SCRIPT>

</head>
<body bgColor= #bbe9ff>
<form name=fschedule action=fscheduleins.jsp  onSubmit='return formvalid()'>
<center>
<font size="4" color="red">
<br><br>
<b>Flight Schedule Details</b><br>
<b>New Entry</b>
</font></center>
<br>

<%
ResultSet rs=st.executeQuery("select * from flightdatabase");
%>

<OBJECT id=MonthView1 classid=clsid:8E27C92B-1264-101C-8A2F-040224009C02 style="position:absolute;top:130;left:400;VISIBILITY: hidden;"  width=200 ></object>
<table  align =center  border=1>
<tr><td class=td><b>Flight Id</b></td><td>

<select name="flightid" disabled>
<%while(rs.next()){%>
<option><%=rs.getString(1)%></option>
<%}%>
</select>
</td></tr>
<tr><td class=td><b>Date of Journey</b></td><td>
<input name=doj type=text disabled size=10  onfocus='dd()'></td></tr>
<tr><td class=td><b>Time In</b></td><td>
<input name=timein type=text disabled size=10 onkeypress='if(event.keyCode<48 || event.keyCode>58){fschedule.timein.focus(); return false;}if(fschedule.timein.value.length>10)return false;'></td></tr>

<tr><td class=td><b>Time Out</b></td><td>
<input name=timeout type=text disabled size=10 onkeypress='if(event.keyCode<48 || event.keyCode>58){fschedule.timeout.focus(); return false;}if(fschedule.timeout.value.length>10)return false;'></td></tr>

<%
ResultSet rs1=st.executeQuery("select * from airport");
%>

<tr><td class=td><b>From Airport</b></td>
<td>
<select name="fromid" disabled onblur="checkplace()">
<%while(rs1.next()){%>
<option value=<%=rs1.getString(1)%>><%=rs1.getString(2)%></option>
<%}%>

<%
ResultSet rs2=st.executeQuery("select * from airport");
%>


</td></tr>
<tr><td class=td><b>To Airport</b></td><td>
<select name="toid" disabled onblur="checkplace()">
<%while(rs2.next()){%>
<option value=<%=rs2.getString(1)%>><%=rs2.getString(2)%></option>
<%}%>
</td>
</tr>

<tr><td class=td><b>Economy Seats</b></td><td>
<input name=eseats type=text disabled size=10 onkeypress='if(event.keyCode<48 || event.keyCode>58){fschedule.eseats.focus(); return false;}if(fschedule.eseats.value.length>10)return false;'></td></tr>
<tr><td class=td><b>Economy Fare</b></td><td>
<input name=efare type=text disabled size=10 onkeypress='if(event.keyCode<48 || event.keyCode>58){fschedule.efare.focus(); return false;}if(fschedule.efare.value.length>10)return false;'></td></tr>
<tr><td class=td><b>Business Seats</b></td><td>
<input name=bseats type=text disabled size=10 onkeypress='if(event.keyCode<48 || event.keyCode>58){fschedule.bseats.focus(); return false;}if(fschedule.bseats.value.length>10)return false;'></td></tr>
<tr><td class=td><b>Business Fare</b></td><td>
<input name=bfare type=text disabled size=10 onkeypress='if(event.keyCode<48 || event.keyCode>58){fschedule.bfare.focus(); return false;}if(fschedule.bfare.value.length>10)return false;'></td></tr>
<tr><td class=td><b>Executive Seats</b></td><td>
<input name=exseats type=text disabled size=10 onkeypress='if(event.keyCode<48 || event.keyCode>58){fschedule.exseats.focus(); return false;}if(fschedule.exseats.value.length>10)return false;'></td></tr>

<tr><td class=td><b>Executive Fare</b></td><td>
<input name=exfare type=text disabled size=10 onkeypress='if(event.keyCode<48 || event.keyCode>58){fschedule.exfare.focus(); return false;}if(fschedule.exfare.value.length>10)return false;'></td></tr>

</table>
<center>
<input type="button" value="Add New"  class=border onclick=enableAll();>
<input type="submit" value="Save" class=border >
</form>
</body>
</html>
