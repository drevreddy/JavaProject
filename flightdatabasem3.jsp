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

String cmd ="update  flightdatabase set flightid=?,flightname=?,category=?,status=? where flightid= '" + flightid + "'" ;

sst=con.prepareStatement(cmd);

sst.setString(1,flightid);
sst.setString(2,flightname);
sst.setString(3,category);
sst.setString(4,status);

int j=sst.executeUpdate();
if (j>0)
{
%>
<body bgColor= #bbe9ff>
<br>  <br>  <br>  <br>
<center>
<h3>Your Details Modify Succeeded</h3>
<br><br><center>
<a href="home.jsp" target="_parent">
<img src=images\home.JPG></a>
<%      }
st.close();
con.close(); 
  
}
catch(Exception e)
{
%>
<body bgColor= #bbe9ff>
<br>  <br>  <br>  <br>
<center>
<a href="javascript:history.back()"><img src="images\cont.png" border=0></a>&nbsp;&nbsp;
 <br>  <br>  <br>  <br>
<%
out.println(e.getMessage());
}
%>
