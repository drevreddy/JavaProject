<link href="air.cdf" rel="stylesheet">
<%@ include file="common.jsp"%>

<%
String userid=request.getParameter("userid");
String password=request.getParameter("password");
String fname=request.getParameter("fname");
String lname=request.getParameter("lname");
String dob=request.getParameter("dob");
String sex=request.getParameter("sex");
String education=request.getParameter("education");
String occupation=request.getParameter("occupation");
String nationality=request.getParameter("nationality");
String paddress=request.getParameter("paddress");
String praddress=request.getParameter("praddress");
String state=request.getParameter("state");
String country=request.getParameter("country");
int zip=Integer.parseInt(request.getParameter("zip"));
int phone=Integer.parseInt(request.getParameter("phone"));
int mobile=Integer.parseInt(request.getParameter("mobile"));
String oinfo=request.getParameter("oinfo");
String creditcardname=request.getParameter("creditcardname");
String creditcardno=request.getParameter("creditcardno");
String cpassword=request.getParameter("cpassword");

try
{
PreparedStatement sst=null,sst1=null;

String cmd ="update  cosmos set userid=?,password=?,fname=?,lname=?,dob=?,sex=?,education=?,occupation=?,nationality=?,paddress=?,praddress=?,state=?,country=?,zip=?,phone=?,mobile=?,oinfo=?,creditcardname=?,creditcardno=?,cpassword=? where userid= '"+userid +"'";

sst=con.prepareStatement(cmd);

sst.setString(1,userid);
sst.setString(2,password);
sst.setString(3,fname);
sst.setString(4,lname);
sst.setString(5,dob);
sst.setString(6,sex);
sst.setString(7,education);
sst.setString(8,occupation);
sst.setString(9,nationality);
sst.setString(10,paddress);
sst.setString(11,praddress);
sst.setString(12,state);
sst.setString(13,country);
sst.setInt(14,zip);
sst.setInt(15,phone);
sst.setInt(16,mobile);
sst.setString(17,oinfo);
sst.setString(18,creditcardname);
sst.setString(19,creditcardno);
sst.setString(20,cpassword);

int eff=sst.executeUpdate();


cmd ="update users set userid=?,password=?,typs=? where userid ='" + userid + "'" ;

sst1=con.prepareStatement(cmd);

sst1.setString(1,userid);
sst1.setString(2,password);
sst1.setString(3,"c");

int eff1=sst1.executeUpdate();


if(eff>0)
{%>
<body bgColor= #bbe9ff>
  <br>  <br>  <br>  <br>
  <center>
  <h3>Your  Entry Succeeded</h3>
  <br><br><center>
  <a href="home.jsp" target="_parent">
  <img src=images\home.JPG></a>  
<%}
else
{%>
 <body bgColor= #bbe9ff>
  <br>  <br>  <br>  <br>
  <center>
  <h3>Your Entry Failed</h3>
  <br><br><center>
  <a href="blank.htm" target="main"><img src=Images\home.jpg></a>
<%}
}
catch(Exception e)
{
%>
<body bgColor= #bbe9ff>
  <br>  <br>  <br>  <br>
  <center>
  <a href="javascript:history.back()"><img src="images\cont.png" 
border=0></a>&nbsp;&nbsp;
  <br>  <br>  <br>  <br>
<% 
 out.println(e.getMessage());
}
%>
