<link href="air.cdf" rel="stylesheet">
<%@ include file="common.jsp" %>
<%@ page import="java.sql.*"%>
<%
int airid=Integer.parseInt(request.getParameter("airid"));
String placename=request.getParameter("placename");
String state=request.getParameter("state");


try{
PreparedStatement sst=null;
ResultSet rs=null;

String cmd ="update  airport set airid=?,placename=?,state=? where airid= "+airid;

sst=con.prepareStatement(cmd);

sst.setInt(1,airid);
sst.setString(2,placename);
sst.setString(3,state);
int j=sst.executeUpdate();
if (j>0)
{
%>
	
<br>  <br>  <br>  <br>
<center>
<body bgColor= #bbe9ff>
<h3>Your Details Modify Succeeded</h3>
<br><br><center>
<a href="adminmenu.jsp" target="_parent">
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
