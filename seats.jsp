<link href="air.cdf" rel="stylesheet">
<html>
<head>
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






</script>

<SCRIPT LANGUAGE=javascript FOR=MonthView1 EVENT=Click>
<!--
 MonthView1_Click()
//-->
</SCRIPT>
</head>

<%@page import="java.sql.*"%>
<%@ include file="common.jsp" %>
<%
ResultSet rs=st.executeQuery("select * from flightdatabase");

%>
<body bgColor= #bbe9ff>
<br><br><br><br><br>
<center>
<font color=red>
<p align="center"><b>
Select Flightdatabase to Display Seats Availablity</b></p>
</center>
</font>
<form name=cosmos method=post  action=seats1.jsp>
<OBJECT id=MonthView1 classid=clsid:8E27C92B-1264-101C-8A2F-040224009C02 style="position:absolute;top:200;left:250;VISIBILITY: hidden;"  width=200 ></object>

<table align=center border=1>
<tr> 
<td width="44%"> 
<div align='right'><font color='red'>Flight Id</font></div>
</td>
<td width="56%"> 
<select name="flightid">
<%while(rs.next()){%>
<option><%=rs.getString(1)%></option>
<%}%>
</select>
</td>
</tr>
<tr><td>Date</td><td>
<input name=dob type=text  size=8 onfocus='dd();'></td></tr>

<tr>
<td width="44%">&nbsp;</td>
<td width="56%">
<input type="submit" name="Submit" value="Submit">
</td>
</tr>
</table>
</form>
</body>
</html>
