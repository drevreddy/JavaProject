<link href="air.cdf" rel="stylesheet">
<%@ include file="common.jsp" %>
<%@ page import="java.sql.*" %>
<html>
<head>
<title> (Bharat Airways) Flightdatabase Delete Form</title>
</head>
<script language="JavaScript">

function formvalid()
{
var flightid=document.flightdatabase.flightid.value;
var flightname=document.flightdatabase.flightname.value;
var category=document.flightdatabase.category.value;
var status=document.flightdatabase.status.value;

if((flightid.length==0) || (flightname.length==0) || (category.length==0) || (status.length==0)) 
{
alert('fill the form completely')
return false;
}
return true;
}

</script>

</head>
<body bgColor= #bbe9ff>
<form name=flightdatabase action=flightdatabased3.jsp>
<center>
<font size="4" color="yellow">
<br><br>
<b>Airport Detals</b><br>
<b>Delete</b>
</font></center>
<br>
<table  align =center  border=1>
<%
String flightid= request.getParameter("flightid");

ResultSet rs=st.executeQuery("select * from flightdatabase where flightid='"+flightid +"'");

while(rs.next())
{
%>
<table border=1 align=center>
<tr><td class=td><b>Flight Id</b></td><td>
<input name=flightid type=text size=10 value="<%=rs.getString(1)%>" ></td></tr>
<tr><td class=td><b>Flight Name</b></td><td>
<input name=flightname type=text size=20 value="<%=rs.getString(2)%>" ></td></tr>
<tr><td class=td><b>Category</b></td><td>
<input name=category type=text size=10 value="<%=rs.getString(3)%>" ></td></tr>
<tr><td class=td><b>Status</b></td><td>
<input name=status type=text size=1 value="<%=rs.getString(4)%>" ></td></tr>

<%}%>
</table>
<center>

<input type="submit" value="Delete" class=border >
</form>
</body>
</html>
