<link href="air.cdf" rel="stylesheet">
<%@ include file="common.jsp" %>
<%@ page import="java.sql.*"%>
<%
int airid=Integer.parseInt(request.getParameter("airid").trim());


try{
PreparedStatement sst=null;
ResultSet rs=null;

st.executeUpdate("delete airport where airid=" + airid);
%>
<body bgColor= #bbe9ff>
<br>  <br>  <br>  <br>
<center>
<h3>Your airport Deleted Succeeded</h3>
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
