<%@page import="java.sql.*"%>
<%@ include file="common.jsp" %>
<link href="air.cdf" rel="stylesheet">
<head>
<style type="text/css">
td
 {font-family:ms sans serif;color:brown;font-size:12px:align=center;}
th
{font-family:ms sans serif;background:lightslategray;color:yellow;font-size:12px;}
</style>

<script>
function formvalid()
{
var fromid=document.fschedule.fromid.value;
var toid=document.fschedule.toid.value;

  if (fromid == toid)
      {
           alert('From place to place should not be same');
		return false;
	}
	else
	return true;
}
</script>

</head>

<body bgColor= #bbe9ff>
<%
         try 
        {

	ResultSet rs,rs1,rs2;
	rs=st2.executeQuery("select * from airport");
	rs2=st1.executeQuery("select * from flightdatabase");

%>

<form method=post action=vschedule1.jsp   onSubmit='return formvalid()'>
<h2 align=center> View Schedules of Flights </h2> 
<table border=1 align=left bgcolor=#bbe9ff >
<caption> </caption>

<tr>
<td> Origin </td>
<td> <select name=fromid> 
<%
while(rs.next())
{
%>
   <option value = <%=rs.getString(1)%> > <%=rs.getString(2)%> </option>
<%
} 
rs.close();
%>
</select>
</td>
</tr>



<tr>
<td> Destination </td>
<td> <select name=toid> 
<%
	rs=st2.executeQuery("select * from airport");
while(rs.next())
{
%>
   <option value = <%=rs.getString(1)%> > <%=rs.getString(2)%> </option>
<%
} 
rs.close();
%>
</select>
</td>
</tr>
<tr colspan=2>
<td></td>
</tr>
<Tr>
<td></td><Td><input type=submit value=submit></td>
</tr>

</form>

</table>


<table style="position:absolute;left:10;top:200;" border=1  bgcolor=#bbe9ff>
<caption> <h3>OR</h3> </caption>
<form method=post action=vschedule2.jsp>
<tr>
<td> Flight ID</td>
<td> <select name=fid> 
<%
	rs=st2.executeQuery("select * from flightdatabase");
while(rs.next())
{
%>
   <option  > <%=rs.getString(1)%> </option>
<%
} 
rs.close();
%>
</select>
</td>
</tr>
<tr colspan=2>
<td></td>
</tr>
<Tr>
<td></td><Td><input type=submit value=submit></td>
</tr>
</table>
</form>

<table style="position:absolute;left:260;top:130;" border=1  bgcolor=#bbe9ff>
<caption> <h3>OR</h3> </caption>

<form method=post action=vschedule3.jsp>
<tr>
<td><input type=submit value = "All Flight Details">
</tr>
</form>
</table>
<%
}

catch (Exception e) 
{ out.println("<h1>Error Occured<BR>"+e);  }


%>