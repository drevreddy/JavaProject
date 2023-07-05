<link href="air.cdf" rel="stylesheet">
<%@ include file="common.jsp" %>
<%@ page import="java.sql.*"%>
<%
String pass=request.getParameter("userid");
String uid = request.getParameter("uid");
int pnr = Integer.parseInt(request.getParameter("pnr"));



try{
PreparedStatement sst=null;
ResultSet rs=null;

String cmd ="update  users set password=? where userid= '"+ uid + "'";
sst=con.prepareStatement(cmd);
sst.setString(1,pass);
int eff=sst.executeUpdate();


cmd ="update  cosmos set password=? where userid= '"+ uid + "'";
sst=con.prepareStatement(cmd);
sst.setString(1,pass);
eff=sst.executeUpdate();

if(eff>0)
{%>
<body bgColor= #bbe9ff>
  <br>  <br>  <br>  <br>
  <center>
  <h3>Your  Entry Succeeded</h3>
  <br><br><center>
  <a href="home.jsp" target="_parent">
  <img src=images\home.gif></a>  
<%}
else
{%>
<body bgColor= #bbe9ff>
  <br>  <br>  <br>  <br>
  <center>
  <h3>Your Entry Failed</h3>
  <br><br><center>
  <a href="blank.htm" target="_parent"><img src=Images\home.gif></a>
<%}
}
catch(Exception e)
{
%>
<body bgColor= #bbe9ff>
  <br>  <br>  <br>  <br>
  <center>
  <a href="javascript:history.back()"><img src="images\backs.gif" 
border=0></a>&nbsp;&nbsp;
  <br>  <br>  <br>  <br>
<% 
 out.println(e.getMessage());
}
%>
