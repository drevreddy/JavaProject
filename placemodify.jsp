<link href="air.cdf" rel="stylesheet">
<html>
<%@page import="java.sql.*"%>
<%@ include file="common.jsp" %>
<%
ResultSet rs=st.executeQuery("select * from airport");
%>
<BODY leftMargin=0 topMargin=0 rightMargin=0 bgColor= #bbe9ff>
<br><br><br><br><br>
<center>
<font color=red>
<p align="center"><b>
Modification of Airport</b></p>
</center>
</font>
<form name=airport method=post  action=airportm2.jsp>
<table align=center border=1>
<tr> 
<td width="44%"> 
<div align='right'><font color='red'>Airport Id</font></div>
</td>
<td width="56%"> 
<select name="airid">
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
