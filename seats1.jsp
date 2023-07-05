<link href="air.cdf" rel="stylesheet">
<head>
<style type="text/css">
td
 {font-family:ms sans serif;color:brown;font-size:12px:align=center;}
th
{font-family:ms sans serif;background:lightslategray;color:yellow;font-size:12px;}
</style>
</head>
<%@page import="java.sql.*"%>
<%@ include file="common.jsp" %>
<body bgColor= #bbe9ff>
<%
         try 
        {
	String flid = request.getParameter("flightid");
	String dob = request.getParameter("dob");
	String flag="f";


	ResultSet rs2;
	

	if(dob.length() < 1)
		rs2=st2.executeQuery("select * from seats where doj >= sysdate and status = 'n' and flightid='" + flid + "'");
	else
		rs2=st2.executeQuery("select * from seats where doj >= sysdate and doj ='" + dob +   "' and status = 'n' and flightid='" + flid + "'");



%>

<table border=1 align=center bgcolor=white >
<caption> <h2>Seat Availablity Report  for flight  <%=flid %></h2> </caption>
<tr>
	<th>  Flight Id  </th>
	<th> Date Schedule </th>
	<th> Category </th>
	<th> Seat No</th>

</tr>
<%

while(rs2.next())
{ 
flag="t";

	java.text.SimpleDateFormat fmt=new java.text.SimpleDateFormat("dd-MMM-yy");
	String ds=fmt.format(rs2.getDate(2)).toString();
%>
<tr>
	<td> <%=rs2.getString(1)%> </td>
	<td> <%=ds%> </td>
	<td> <%=rs2.getString(5)%> </td>
	<td> <%=rs2.getString(6)%> </td>
</tr>

<%
} 

if(flag=="f")
{
%>
</table>
<br>
<h3><center> No flights for selected range
<%  
}

}

catch (Exception e) 
{ out.println("<h1>Error Occured<BR>"+e);  }
 



%>