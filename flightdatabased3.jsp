<link href="air.cdf" rel="stylesheet">
<%@ include file="common.jsp" %>
<%@ page import="java.sql.*"%>
<%
String flightid=request.getParameter("flightid");


try{
PreparedStatement sst=null;
ResultSet rs=null;

st.executeUpdate("delete flightdatabase where flightid='"+flightid +"'");
%>
<body bgColor= #bbe9ff>
<br>  <br>  <br>  <br>
<center>
<h3>Your flightdatabase Deleted Succeeded</h3>
<br><br><center>
<a href="home.jsp" target="_parent">
<img src=images\home.JPG></a>
<% 
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
