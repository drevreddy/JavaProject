<link href="air.cdf" rel="stylesheet">
<%@ page import="java.sql.*" %>
<html>
<head>
<title> (Bharat Airways) Airport Adding Form</title>
</head>
<script language="JavaScript">
function enableAll()
{
document.airport.airid.disabled=false;
document.airport.placename.disabled=false;
document.airport.state.disabled=false;
}

function formvalid()
{
var airid=document.airport.airid.value;
var placename=document.airport.placename.value;
var state=document.airport.state.value;

if((airid.length==0) || (placename.length==0) || (state.length==0)) 
{
alert('fill the form completely')
return false;
}
return true;
}

</script>

</head>
<body bgColor= #bbe9ff>
<form name=airport action=airportins.jsp  onSubmit='return formvalid()'>
<center>
<font size="4" color="red">
<br><br>
<b>Airport Details</b><br>
<b>New Entry</b>
</font></center>
<br>
<table  align =center  border=1>
<tr><td ><b>Airport Id</b></td><td>
<input name=airid type=text disabled size=3 onkeypress='if(event.keyCode<48 || event.keyCode>58){airport.airid.focus(); return false;}if(airport.airid.value.length>3)return false;'></td></tr>
<tr><td ><b>Airport Name</b></td><td>
<input name=placename type=text disabled size=40  ></td></tr>
<tr><td ><b>State</b></td><td>
<select name=state disabled><option value=andhra>Andhra Pradesh</option><option value=karnataka>Karanataka</option>
<option value=tamil>Tamil Nadu</option><option value=kerala>Kerala</option><option value=delhi>Delhi</otion></select</td></tr>

</table>
<center>
<input type="button" value="Add New"  class=border onclick=enableAll();>
<input type="submit" value="Save" class=border >
</form>
</body>
</html>
