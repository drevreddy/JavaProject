<link href="air.cdf" rel="stylesheet">
<%@ page import="java.sql.*" %>
<html>
<head>
<title> (Bharat Airways) Flightdatabase Adding Form</title>
</head>
<script language="JavaScript">
function enableAll()
{
document.flightdatabase.flightid.disabled=false;
document.flightdatabase.flightname.disabled=false;
document.flightdatabase.category.disabled=false;
document.flightdatabase.status.disabled=false;
}

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
<form name=flightdatabase action=flightdatabaseins.jsp  onSubmit='return formvalid()'>
<center>
<font size="4" color="red">
<br><br>
<b>Flight Database</b><br>
<b>New Entry</b>
</font></center>
<br>
<table  align =center  border=1>
<tr><td class=td><b>Flight Id</b></td><td>
<input name=flightid type=text disabled size=10></td></tr>
<tr><td class=td><b>Flight Name</b></td><td>
<input name=flightname type=text disabled size=20  ></td></tr>
<tr><td class=td><b>Category</b></td><td>
<Select name=category disabled> <option value=y> flight1 </option><option value=n>flight2</option></select></td></tr>
<tr><td class=td><b>Status</b></td><td>
<Select name=status disabled> <option value=y> Yes </option><option value=n>No</option></select></td></tr>

</table>
<center>
<input type="button" value="Add New"  class=border onclick=enableAll();>
<input type="submit" value="Save" class=border >
</form>
</body>
</html>
