<link href="air.cdf" rel="stylesheet">
<%@ include file="common.jsp" %>
<%@ page import="java.sql.*"%>
<%
String flightid=request.getParameter("flightid").trim();
String doj=request.getParameter("doj").trim();
int timein=Integer.parseInt(request.getParameter("timein").trim());
int timeout=Integer.parseInt(request.getParameter("timeout").trim());
int fromid=Integer.parseInt(request.getParameter("fromid").trim());
int toid=Integer.parseInt(request.getParameter("toid").trim());
int eseats=Integer.parseInt(request.getParameter("eseats").trim());
int efare=Integer.parseInt(request.getParameter("efare").trim());
int bseats=Integer.parseInt(request.getParameter("bseats").trim());
int bfare=Integer.parseInt(request.getParameter("bfare").trim());
int exseats=Integer.parseInt(request.getParameter("exseats").trim());
int exfare=Integer.parseInt(request.getParameter("exfare").trim());


try{
PreparedStatement sst=null;
ResultSet rs=null;

String cmd ="update  fschedule set flightid=?,doj=?,timein=?,timeout=?,fromid=?,toid=?,eseats=?,efare=?,bseats=?,bfare=?,exseats=?,exfare=? where flightid= "+flightid;

sst=con.prepareStatement(cmd);

sst.setString(1,flightid);
sst.setString(2,doj);
sst.setInt(3,timein);
sst.setInt(4,timeout);
sst.setInt(5,fromid);
sst.setInt(6,toid);
sst.setInt(7,eseats);
sst.setInt(8,efare);
sst.setInt(9,bseats);
sst.setInt(10,bfare);
sst.setInt(11,exseats);
sst.setInt(12,exfare);

int j=sst.executeUpdate();
if (j>0)
{
%>
<body bgColor= #bbe9ff>
<br>  <br>  <br>  <br>
<center>
<h3>Your Details Modify Succeeded</h3>
<br><br><center>
<a href="home.jsp" target="main1">
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
