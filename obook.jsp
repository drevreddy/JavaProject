<link href="air.cdf" rel="stylesheet">
<head>

<style type="text/css">
tdd
 {font-family:ms sans serif;color:brown;font-size:12px:align=center;}
th
{font-family:ms sans serif;color:black;background:#bbe9ff;font-size:12px;}
</style>
</head>
<%@page import="java.sql.*"%>
<%@ include file="common.jsp" %>
<body bgColor= #bbe9ff>
	<center>
<div><h3>Online Booking of Tickets </h3> </div>
</center>

<%
ResultSet rs,rs1,rs2,rs3;
rs2=st2.executeQuery("select  distinct a.fromid,placename from  fschedule a,airport b where a.fromid = b.airid");

%>

<form name=obook method=post action=obook1.jsp>
<table border=1 align=center bgcolor=#bbe9ff>

<tr><th> From </th> <td> 

<select name=fromid>

<%
while(rs2.next())
{
%>

<option value = <%=rs2.getString(1)%> > <%=rs2.getString(2)%> </option>

<%}
rs2.close();
%>
<tr><th> To </th> <td> 
<select name=toid>

<%
rs2=st2.executeQuery("select  distinct a.toid,placename from  fschedule a,airport b where a.toid = b.airid");
while(rs2.next())
{%>

<option value = <%=rs2.getString(1)%> > <%=rs2.getString(2)%> </option>

<%}%>

</select> 
</td> 
<tr colspan=2>
<td></td>
<td><input type=submit value=submit>

</table>	
</form>


