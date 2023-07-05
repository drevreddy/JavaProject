<link href="air.cdf" rel="stylesheet">
<html>
<%@page import="java.sql.*"%>
<%@ include file="common.jsp" %>
<%
ResultSet rs=st.executeQuery("select * from fschedule");
%>
<body bgColor= #bbe9ff>
<br><br><br><br><br>
<center>
<font color=red>
<p align="center"><b>
Seats Booked Report</b></p>
</center>
</font>
<form name=fschedule method=post  action=booked1.jsp>
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
</td>
</tr>

<%
rs.close();
rs=st.executeQuery("select * from fschedule");
%>
<Tr>
<td> <div align='right'><font color='red'>Flight Date </font></div></td>
<td>
<select name="date">
<%while(rs.next()){
	java.text.SimpleDateFormat fmt=new java.text.SimpleDateFormat("dd-MMM-yy");
	String ds=fmt.format(rs.getDate(2)).toString();
%>
<option><%=ds%></option>
<%}%>
</select>
</td>

</select>
</tr>
</tr>
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
