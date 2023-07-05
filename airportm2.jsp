<link href="air.cdf" rel="stylesheet">
<%@ include file="common.jsp" %>
<%@ page import="java.sql.*" %>
<html>
<head>
<title> (Bharat Airways) Airport Modify Form</title>
</head>
<script language="JavaScript">

function formvalid()
{
var airid=document.airport.airid.value;
var placename=document.airport.placename.value;
var state=document.airport.state.value;

if((airid.length==0) || if((placename.length==0) || (state.length==0)) 
{
alert('fill the form completely')
return false;
}
return true;
}

</script>

</head>
<BODY leftMargin=0 topMargin=0 rightMargin=0 bgColor= #bbe9ff>
<form name=airport action=airportm3.jsp  onSubmit='return formvalid()'>
<center>
<font size="4" color="red">
<br><br>
<b>Airports Form</b><br>
<b>Modify</b>
</font></center>
<br>
<table  align =center  border=1>
<%
int airid= Integer.parseInt(request.getParameter("airid"));

ResultSet rs=st.executeQuery("select * from airport where airid="+airid);

while(rs.next())
{
String a = rs.getString(3);
%>
<table border=1 align=center>
<tr><td class=td><b>Airport Id</b></td><td>
<input name=airid type=text size=3 value="<%=rs.getInt(1)%>" onkeypress='if(event.keyCode<48 || event.keyCode>58){airport.airid.focus(); return false;}if(airport.airid.value.length>3)return false;' ></td></tr>
<tr><td class=td><b>Airport Name</b></td><td>
<input name=placename type=text size=40 value="<%=rs.getString(2)%>" ></td></tr>


<tr><td ><b>State</b></td><td>

<select name=state > <option selected value=<%=a%>><%=a%></option><option value=andhra>Andhra Pradesh</option><option value=karnataka>Karanataka</option>
<option value=tamil>Tamil Nadu</option><option value=kerala>Kerala</option><option value=delhi>Delhi</otion></select</td></tr>


</table>
<center>

<%}%>
<br>



<input type="submit" value="Update" class=border >
</form>
</body>
</html>
