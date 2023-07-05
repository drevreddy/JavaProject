<link href="air.cdf" rel="stylesheet">
<%@ include file="common.jsp" %>
<%@ page import="java.sql.*" %>
<html>
<head>
<title> (Bharat Airways) Cosmos Delete Form</title>
</head>
<script language="JavaScript">

function formvalid()
{
var userid=document.cosmos.userid.value;
var password=document.cosmos.password.value;
var fname=document.cosmos.fname.value;
var lname=document.cosmos.lname.value;
var dob=document.cosmos.dob.value;
var sex=document.cosmos.sex.value;
var education=document.cosmos.education.value;
var occupation=document.cosmos.occupation.value;
var nationality=document.cosmos.nationality.value;
var paddress=document.cosmos.paddress.value;
var praddress=document.cosmos.praddress.value;
var state=document.cosmos.state.value;
var country=document.cosmos.country.value;
var zip=document.cosmos.zip.value;
var phone=document.cosmos.phone.value;
var mobile=document.cosmos.mobile.value;
var oinfo=document.cosmos.oinfo.value;
var creditcardname=document.cosmos.creditcardname.value;
var creditcardno=document.cosmos.creditcardno.value;
var cpassword=document.cosmos.cpassword.value;


if((userid.length==0) || (password.length==0) || (fname.length==0) || (lname.length==0) || (dob.length==0) || (sex.length==0) || (education.length==0) || (occupation.length==0) || (nationality.length==0) || (paddress.length==0) || 20(cpassword.length==0)) 
{
alert('fill the form completely')
return false;
}
return true;
}

</script>

</head>
<body bgColor= #bbe9ff>
<form name=cosmos action=cosmosd3.jsp>
<center>
<font size="4" color="red">
<br><br>
<b>Passenger Detals</b><br>
<b>Delete</b>
</font></center>
<br>
<table  align =center  border=1>
<%
String userid= request.getParameter("userid");

ResultSet rs=st.executeQuery("select * from cosmos where userid='"+userid +"'");

while(rs.next())
{
%>
<table border=1 align=center>
<tr><td class=td><b>User Id</b></td><td>
<input name=userid type=text size=20 value="<%=rs.getString(1)%>" ></td></tr>
<tr><td class=td><b>Password</b></td><td>
<input name=password type=text size=10 value="<%=rs.getString(2)%>" ></td></tr>
<tr><td class=td><b>First Name</b></td><td>
<input name=fname type=text size=20 value="<%=rs.getString(3)%>" ></td></tr>
<tr><td class=td><b>Last Name</b></td><td>
<input name=lname type=text size=20 value="<%=rs.getString(4)%>" ></td></tr>
<tr><td class=td><b>Date of Birth</b></td><td>
<input name=dob type=text size=8 value="<%=rs.getString(5)%>" ></td></tr>
<tr><td class=td><b>Sex</b></td><td>
<input name=sex type=text size=1 value="<%=rs.getString(6)%>" ></td></tr>
<tr><td class=td><b>Education</b></td><td>
<input name=education type=text size=10 value="<%=rs.getString(7)%>" ></td></tr>
<tr><td class=td><b>Occupation</b></td><td>
<input name=occupation type=text size=10 value="<%=rs.getString(8)%>" ></td></tr>
<tr><td class=td><b>Nationality</b></td><td>
<input name=nationality type=text size=10 value="<%=rs.getString(9)%>" ></td></tr>
<tr><td class=td><b>Present Address</b></td><td>
<input name=paddress type=text size=10 value="<%=rs.getString(10)%>" ></td></tr>
<tr><td class=td><b>Permanent Address</b></td><td>
<input name=praddress type=text size=10 value="<%=rs.getString(11)%>" ></td></tr>
<tr><td class=td><b>State</b></td><td>
<input name=state type=text size=20 value="<%=rs.getString(12)%>" ></td></tr>
<tr><td class=td><b>Country</b></td><td>
<input name=country type=text size=20 value="<%=rs.getString(13)%>" ></td></tr>
<tr><td class=td><b>Pincode</b></td><td>
<input name=zip type=text size=10 value="<%=rs.getInt(14)%> " onkeypress='if(event.keyCode<48 || event.keyCode>58){cosmos.zip.focus(); return false;}if(occupation.zip.value.length>10)return false;' ></td></tr>
<tr><td class=td><b>Phone</b></td><td>
<input name=phone type=text size=10 value="<%=rs.getInt(15)%> " onkeypress='if(event.keyCode<48 || event.keyCode>58){cosmos.phone.focus(); return false;}if(nationality.phone.value.length>10)return false;' ></td></tr>
<tr><td class=td><b>Mobile</b></td><td>
<input name=mobile type=text size=10 value="<%=rs.getInt(16)%> " onkeypress='if(event.keyCode<48 || event.keyCode>58){cosmos.mobile.focus(); return false;}if(paddress.mobile.value.length>10)return false;' ></td></tr>
<tr><td class=td><b>Other Information</b></td><td>
<input name=oinfo type=text size=60 value="<%=rs.getString(17)%>" ></td></tr>


<%}%>
</table>
<center>

<input type="submit" value="Delete" class=border >
</form>
</body>
</html>
