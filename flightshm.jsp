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
Modification of Fschedule</b></p>
</center>
</font>
<form name=fschedule method=post  action=fschedulem2.jsp>
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
