<link href="air.cdf" rel="stylesheet">
<html>
<head>
<style type="text/css">
tdd
 {font-family:ms sans serif;color:brown;font-size:12px:align=center;}
th
{font-family:ms sans serif;color:black;background:#bbe9ff;font-size:12px;}
</style>
</head>
<body bgColor= #bbe9ff>
<%@page import="java.sql.*"%>
<%@ include file="common.jsp" %>
<%
String uid = session.getValue("login").toString();
ResultSet rs=st.executeQuery("select * from seats where usid='" + uid + "'");

%>

<h2 align=center> List of Reservation Details </h2>
<br><br>
<table border=1 align=center >
</tr>
<th> Flightid </th>
<th> Date of Journey</th>
<th> Seat Type</th>
<th> Ticket No</th>
<th> Print </th>

</tr>

<%
int tno=0;
String fid;
while(rs.next())
{
	java.text.SimpleDateFormat fmt=new java.text.SimpleDateFormat("dd-MMM-yy");
	String ds=fmt.format(rs.getDate(2)).toString();
	tno= rs.getInt(9);	
	fid=rs.getString(1);
%>
<tr>
<td> <%=fid %> </td>
<td> <%=ds%> </td>
<td> <%=rs.getString(5) %> </td>
<td> <%=tno%></td>
<td><a href="print1.jsp?fid=<%=fid%>&dod=<%=ds%>&tino=<%=tno%>"><h3> Print Ticket </h3> </a></td>
</tr>
<%}
rs.close();
%>



