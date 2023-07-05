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
	Statement stmt=con.createStatement();


	 stmt.executeUpdate("update seats set status = 'n' ,usid=null, doc = sysdate where flightid ='" + fid + "' and sno = '" + sno + "' and tino = " + tino + " and doj = '" + doj + "'");
	%>

	<center>
	<h3 align=center> Cancel Status </h3> <br><br>
	<h4 align =center> Your Seat No. <%=sno%> has <br><br>
		canceled for the flight NO. <%=fid%> <br>on Date <%=doj%><br><br><br>

	</h4>
	<a href="cancelbook.jsp"> <h3>Cancel One More</h3> </a>	

	


<%

}
 catch(Exception e) 
{
		out.println("<center><h2>Failed To Delete Items Due to The Error <BR>"+e);
}
%>


