<link href="air.cdf" rel="stylesheet">
<%@ include file="common.jsp" %>
<%@ page import="java.sql.*"%>
<%
String flightid=request.getParameter("flightid");
String flightname=request.getParameter("flightname");
String category=request.getParameter("category");
String status=request.getParameter("status");
try{
PreparedStatement sst=null;
ResultSet rs=null;

String cmd ="insert into flightdatabase values (?,?,?,?)";

sst=con.prepareStatement(cmd);

sst.setString(1,flightid);
sst.setString(2,flightname);
sst.setString(3,category);
sst.setString(4,status);


int eff=sst.executeUpdate();
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
  <a href="fmenu.jsp" target="_parent"><img src=Images\home.jpg></a>
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
