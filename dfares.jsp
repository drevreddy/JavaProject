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

	ResultSet rs,rs1,rs2;
	rs2=st2.executeQuery("select * from fschedule");


%>

<table border=1 align=center bgcolor=white >
<caption> <h2>Domestic Flights Fares</h2> </caption>
<tr>
	<th>  Flight Id  </th>
	<th>  Flight Name </th>
	<th>  Flight Category </th>
	<th>  From Place </th>
	<th>  To Place </th>
	<th>  Economy Fare</th>
	<th>  Business Fare</th>
	<th>  Executive Fare</th>
</tr>

<%
while(rs2.next())
{ 
String flightid= rs2.getString(1);
int  fromplace = rs2.getInt(5);
int  toplace = rs2.getInt(6);

 rs1=st1.executeQuery("select * from flightdatabase where flightid='" + flightid + "'");

	 while(rs1.next())
	{
	%>
   	<tr>
	<td> <%=flightid%> </td>
	<td> <%=rs1.getString(2)%>
	<td> <%=rs1.getString(3)%>
<%
	rs=st.executeQuery("select * from airport where airid =" + fromplace);
	while(rs.next())	
	{
%>
	<td> <%=rs.getString(2)%>

	<%}
	rs.close();
	%>


<%
	rs=st.executeQuery("select * from airport where airid =" + toplace);
	while(rs.next())
	{
	%>
	<td> <%=rs.getString(2)%>
	<%}
	rs.close();	
%>


	</tr>
<%}
rs1.close();


%>
	<td> <%=rs2.getInt(8)%> </td>
	<td> <%=rs2.getInt(10)%></td>
	<td> <%=rs2.getInt(12)%></td>

<%
}          } 
catch (Exception e) 
{ out.println("<h1>Error Occured<BR>"+e);  }
 



%>