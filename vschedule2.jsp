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
<center>
<div><h2>Schedules of Flights </h2> </div>
</center>

<%
         try 
        {
	String fid =request.getParameter("fid");
	String flag="f";


	ResultSet rs,rs1,rs2;
	rs2=st2.executeQuery("select * from fschedule where doj >= sysdate and flightid ='" + fid + "'");


%>


<table border=1 align=center bgcolor=white >
<tr>
	<th>  Flight Id  </th>
	<th>  Flight Name </th>
	<th>  Flight Category </th>
	<th>  From Place </th>
	<th>  To Place </th>
	<th> Date Schedule </th>
	<th> Time  </th>

</tr>


<%
while(rs2.next())
{ 
String flightid= rs2.getString(1);
int  fromplace = rs2.getInt(5);
int  toplace = rs2.getInt(6);
float  times = rs2.getFloat(3);
flag="t";

	java.text.SimpleDateFormat fmt=new java.text.SimpleDateFormat("dd-MMM-yy");
	String ds=fmt.format(rs2.getDate(2)).toString();

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



<%}
rs1.close();


%>
	<td> <%=ds%> </td>
	<td> <%=times%> </td>

</tr>

<%
} 
%>
</table>
<%if (flag=="f")
{%>
  <br> <br><br>  <center><h2 align=center> No Flights for seleted Range </h2></center>
<%}

 } 
catch (Exception e) 
{ out.println("<h1>Error Occured<BR>"+e);  }
 



%>