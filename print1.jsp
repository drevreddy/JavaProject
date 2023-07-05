<link href="air.cdf" rel="stylesheet">
<%@page import="java.sql.*"%>
<%@ include file="common.jsp" %>
<head>
<style type="text/css">
tdd
 {font-family:ms sans serif;color:brown;font-size:12px:align=center;}
th
{font-family:ms sans serif;color:black;background:#bbe9ff;font-size:12px;}
</style>
</head>

<body bgColor= #bbe9ff>

<center>
<h3> Bharat Airlines <br>
</h3> 
</center>

<%

String fid = request.getParameter("fid");
String dod = request.getParameter("dod");
int tino = Integer.parseInt(request.getParameter("tino"));
String uid = session.getValue("login").toString();
String dor=dod;
String flag="f";
String fclass=null;
int fromid=0 ;
int toid=0 ;
String fplace=null,tplace=null;
float dtime=0,atime=0;
int fare=0;

ResultSet rs6=st4.executeQuery("select  * from seats where tino= " + tino  + " and doj ='" + dod + "'" );

while(rs6.next())
{
    fromid = rs6.getInt(10);
    toid = rs6.getInt(11);
    fclass = rs6.getString(5);
}



ResultSet rs4 = st1.executeQuery("select  placename from airport where airid =" + fromid);
while(rs4.next())
{  
 fplace = rs4.getString(1);
}

rs4.close();
rs4 = st1.executeQuery("select  placename from airport where airid =" + toid);
while(rs4.next())
{  
 tplace = rs4.getString(1);
}
rs4.close();


rs4 = st1.executeQuery("select  *  from fschedule where flightid = '" + fid + "'  and doj ='" + dod + "'");
while(rs4.next())
{  
dtime= rs4.getFloat(3);
atime= rs4.getFloat(4);
if(fclass.equalsIgnoreCase("economy"))
  fare= rs4.getInt(8);
else
if(fclass.equalsIgnoreCase("executive"))
  fare= rs4.getInt(12);
else
if(fclass.equalsIgnoreCase("executive"))
  fare= rs4.getInt(10);

}
rs4.close();






ResultSet rs=st.executeQuery("select count(*) from seats where tino= " + tino );

while(rs.next())
{
  fare= fare * rs.getInt(1);
}
rs.close();


rs=st.executeQuery("select  * from seats where tino= " + tino  + " and doj ='" + dod + "'" );
ResultSet rs5=st3.executeQuery("select  * from seats where tino= " + tino  + " and doj ='" + dod + "'" );

ResultSet rs1=st1.executeQuery("select * from cosmos where userid= '" + uid + "'");
%>

<h2 align=right>
<a href="javascript:window.print()">
<font face=arial size=3 color=gray>Print The Ticket</font></a>
</center></h2>
<br><br>

<table border=1 align=center bgcolor=#bbe9ff>
<caption> 	Bharat Airways Ticket</caption>
<%
while(rs1.next())
{
%>
<tr>
  <th> Customer Name </th> <td> sai </td> 
	<th> Departure Date </th> <td> <%=dod %> </td>
</tr>

<tr>
  <th> From : </th>  <td> kadapa </td> <th> Return Date </th> <td> <%=dor%> </td>
</tr> 


<tr>
  <th> Bangalore </th>  <td> <%=tplace %> </td><th> Depart Time </th> <td> <%=dtime %> </td>

</tr> 


  <th> Credit Card </th> <td> <%=rs1.getString(19)%> </td> <th> Arrival Time </th> <td> <%=atime %> </td>

<tr>
<th> Flight  </th> <td> ic9899</td><th> Total Fare </th> <td> 8000</td>
</tr>

<tr>
<th> Gate </th> <td>  </td>
</tr>


</table>
<%}%>

<br><br>
<h4 align=center> Seats Details for Departure Flight</h4>
<table border=1 align=center bgcolor=#bbe9ff>
<tr>
<th> Ticket No.. </th> <td> <%=tino%></td>
</tr>
<tr><th> SeatsNumbers </th>

<%
while(rs.next())
{
%>

<td> <%=rs.getString(6)  %> </td>

<%
}
%>
</tr>	
</table>


<br><br>
<h4 align=center> Seats Details for Return Flight</h4>
<table border=1 align=center bgcolor=#bbe9ff>
<tr>
<th> Ticket No.. </th> <td> <%=tino%></td>
</tr>
<tr>
<th> SeatsNumbers </th>

<%
while(rs5.next())
{
%>

<td> <%=rs5.getString(6)  %> </td>

<%
}
%>


</table>
<center>
<br><br>
<a href="javascript:window.print()">
<font face=arial size=3 color=gray>Print The Ticket</font></a>
</center>
