<link href="air.cdf" rel="stylesheet">
<%@ include file="common.jsp" %>
<%@ page import="java.sql.*" %>
<html>
<head>
<title> (Bharat Airways) Flightdatabase Modify Form</title>
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
<form name=flightdatabase action=flightdatabasem3.jsp  onSubmit='return formvalid()'>
<center>
<font size="4" color="yellow">
<br><br>
<b>Flight Database</b><br>
<b>Modify</b>
</font></center>
<br>
<table  align =center  border=1>
<%
String flightid= request.getParameter("flightid");

ResultSet rs=st.executeQuery("select * from flightdatabase where flightid='" + flightid +"'");


while(rs.next())

{
String y = rs.getString(4);
%>
<table border=1 align=center>
<tr><td class=td><b>Flight Id</b></td><td>
<input name=flightid type=text size=10 value="<%=rs.getString(1)%>" ></td></tr>
<tr><td class=td><b>Flight Name</b></td><td>
<input name=flightname type=text size=20 value="<%=rs.getString(2)%>" ></td></tr>
<tr><td class=td><b>Category</b></td><td>
<input name=category type=text size=10 value="<%=rs.getString(3)%>" ></td></tr>
<tr><td class=td><b>Status</b></td><td>
<Select name=status> <option selected value=<%=y%>><%=y%></option><option value=y> Yes </option><option value=n>No</option></select></td></tr>
</table>
<center>

<%}%>
<br>



<input type="submit" value="Update" class=border >
</form>
</body>
</html>
