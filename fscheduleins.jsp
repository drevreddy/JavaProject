<link href="air.cdf" rel="stylesheet">
<%@ include file="common.jsp" %>
<%@ page import="java.sql.*"%>
<%
String flightid=request.getParameter("flightid");
String doj=request.getParameter("doj");
float timein=Float.parseFloat(request.getParameter("timein"));
float timeout=Float.parseFloat(request.getParameter("timeout"));
int fromid=Integer.parseInt(request.getParameter("fromid"));
int toid=Integer.parseInt(request.getParameter("toid"));
int eseats=Integer.parseInt(request.getParameter("eseats"));
int efare=Integer.parseInt(request.getParameter("efare"));
int bseats=Integer.parseInt(request.getParameter("bseats"));
int bfare=Integer.parseInt(request.getParameter("bfare"));
int exseats=Integer.parseInt(request.getParameter("exseats"));
int exfare=Integer.parseInt(request.getParameter("exfare"));

try{
PreparedStatement sst=null;
ResultSet rs=null;

String cmd ="insert into fschedule values (?,?,?,?,?,?,?,?,?,?,?,?)";

sst=con.prepareStatement(cmd);

sst.setString(1,flightid);
sst.setString(2,doj);
sst.setFloat(3,timein);
sst.setFloat(4,timeout);
sst.setInt(5,fromid);
sst.setInt(6,toid);
sst.setInt(7,eseats);
sst.setInt(8,efare);
sst.setInt(9,bseats);
sst.setInt(10,bfare);
sst.setInt(11,exseats);
sst.setInt(12,exfare);


int eff=sst.executeUpdate();
String cmd1,x;
int eff1;
int sno=1;
int s=0;
int i;

for(i=1;i<=eseats;i++)
{
x="ec" + sno;
cmd1 ="insert into seats values (?,?,?,?,?,?,?,?,?,?,?)";
sst=con.prepareStatement(cmd1);
sst.setString(1,flightid);
sst.setString(2,doj);
sst.setString(3,null);
sst.setString(4,null);
sst.setString(5,"Economy");
sst.setString(6,x);
sst.setString(7,null);
sst.setString(8,"n");
sst.setInt(9,s);
sst.setInt(10,fromid);
sst.setInt(11,toid);

eff1=sst.executeUpdate();
sno++;
}
sno=1;

for(i=1;i<=exseats;i++)
{
x="ex" + sno;
cmd1 ="insert into seats values (?,?,?,?,?,?,?,?,?,?,?)";
sst=con.prepareStatement(cmd1);
sst.setString(1,flightid);
sst.setString(2,doj);
sst.setString(3,null);
sst.setString(4,null);
sst.setString(5,"Executive");
sst.setString(6,x);
sst.setString(7,null);
sst.setString(8,"n");
sst.setInt(9,s);
sst.setInt(10,fromid);
sst.setInt(11,toid);

eff1=sst.executeUpdate();
sno++;
}

sno=1;
for(i=1;i<=bseats;i++)
{
x="bs" + sno;
cmd1 ="insert into seats values (?,?,?,?,?,?,?,?,?,?,?)";
sst=con.prepareStatement(cmd1);
sst.setString(1,flightid);
sst.setString(2,doj);
sst.setString(3,null);
sst.setString(4,null);
sst.setString(5,"Business");
sst.setString(6,x);
sst.setString(7,null);
sst.setString(8,"n");
sst.setInt(9,s);
sst.setInt(10,fromid);
sst.setInt(11,toid);

eff1=sst.executeUpdate();
sno++;
}


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
  <a href="blank.htm" target="_parent"><img src=Images\home.jpg></a>
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
