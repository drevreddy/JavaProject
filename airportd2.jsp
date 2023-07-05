<link href="air.cdf" rel="stylesheet">
<%@ include file="common.jsp" %>
<%@ page import="java.sql.*" %>
<html>
<head>
<title> (Bharat Airways) Airport Delete Form</title>
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
<body bgColor= #bbe9ff>
<form name=airport action=airportd3.jsp>
<center>
<font size="4" color="red">
<br><br>
<b>Airport Detals</b><br>
<b>Delete</b>
</font></center>
<br>
<table  align =center  border=1>
<%
String airid= request.getParameter("airid");

ResultSet rs=st.executeQuery("select * from airport where airid="+airid);

while(rs.next())
{
%>
<table border=1 align=center>
<tr><td class=td><b>Airport Id</b></td><td>
<input name=airid type=text size=3 value="<%=rs.getInt(1)%> " onkeypress='if(event.keyCode<48 || event.keyCode>58){airport.airid.focus(); return false;}if(airport.airid.value.length>3)return false;' ></td></tr>
<tr><td class=td><b>Airport Name</b></td><td>
<input name=placename type=text size=40 value="<%=rs.getString(2)%>" ></td></tr>
<tr><td class=td><b>State</b></td><td>
<input name=state type=text size=40 value="<%=rs.getString(3)%>" ></td></tr>
<%}%>
</table>
<center>

<input type="submit" value="Delete" class=border >
</form>
</body>
</html>
