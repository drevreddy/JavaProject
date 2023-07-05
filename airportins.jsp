<link href="air.cdf" rel="stylesheet">

<%@ include file="common.jsp"%>
<%
int airid=Integer.parseInt(request.getParameter("airid"));
String placename=request.getParameter("placename");
String state=request.getParameter("state");


try{
PreparedStatement sst=null;
ResultSet rs=null;

String cmd ="insert into airport values (?,?,?)";

sst=con.prepareStatement(cmd);

sst.setInt(1,airid);
sst.setString(2,placename);
sst.setString(3,state);

int eff=sst.executeUpdate();
if(eff>0)
{%>
<body bgColor= #bbe9ff>
  <br>  <br>  <br>  <br>
  <center>
  <h3>Your  Entry Succeeded</h3>
  <br><br><center>
  <a href="adminmenu.jsp" target=_parent>
  <img src=images\home.JPG></a>  
<%}
else
{%>
<body bgColor= #bbe9ff>
  <br>  <br>  <br>  <br>
  <center>
  <h3>Your Entry Failed</h3>
  <br><br><center>
  <a href="blank.htm" target="main"><img src=Images\home.JPG></a>
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
