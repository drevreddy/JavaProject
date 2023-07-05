<link href="air.cdf" rel="stylesheet">
<%@ include file="common.jsp" %>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<body bgColor= #bbe9ff>
<%


String fid = request.getParameter("fid");
String sno  = request.getParameter("sno");
int tino = Integer.parseInt( request.getParameter("tino").trim());
String doj  = request.getParameter("doj");



try
	{
%>




<%

}
 catch(Exception e) 
{
		out.println("<center><h2>Failed To Delete Items Due to The Error <BR>"+e);
}
%>


