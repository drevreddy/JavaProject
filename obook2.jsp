<link href="air.cdf" rel="stylesheet">
<%@page import="java.sql.*"%>
<%@ include file="common.jsp" %>

<head>
<style type="text/css">
tdd
 {font-family:ms sans serif;color:brown;font-size:12px:align=center;}
th
{font-family:ms sans serif;color:black;background:#bbe9ff;font-size:12px;}
</style>
</head>

<body bgColor= #bbe9ff>
<center>
<div><h3>Online Booking of Tickets </h3> </div>
</center>

<%

int toid = Integer.parseInt(request.getParameter("toid1"));
int fromid = Integer.parseInt(request.getParameter("fromid1"));
int aseats = Integer.parseInt(request.getParameter("aseats"));
int iseats = Integer.parseInt(request.getParameter("iseats"));
int cseats = Integer.parseInt(request.getParameter("cseats"));
String fclass  = request.getParameter("fclass");
String fid  = request.getParameter("fid");
String dor= request.getParameter("dor");
String dop= request.getParameter("dod");
String retu= request.getParameter("rdoreturn");
int ts=aseats + cseats;
String uid = session.getValue("login").toString();
String flag="f";

dor=(dor!=null)?dor:"1-jan-80";

PreparedStatement sst=null;
ResultSet rs=null;


    String getid="SELECT MAX(tino) from seats";
     ResultSet rs1=st.executeQuery(getid);
	int val=0;
		if(rs1.next()){
			val=rs1.getInt(1);
			if (val>0){ val+=1;}
			else{val=100;}
		}


    java.text.SimpleDateFormat fmt=new java.text.SimpleDateFormat("dd-MMM-yyyy");
    String msgdate=fmt.format(new java.util.Date()).toString();

String cmd ="update  seats set tino=?,status=?,usid=?,dob=?  where status = 'n' and flightid= '"+ fid + "' and stype='" + fclass + "' and doj = '"  +  dop + "' and rownum <= " + ts;

sst=con.prepareStatement(cmd);

sst.setInt(1,val);
sst.setString(2,"y");
sst.setString(3,uid);
sst.setString(4,msgdate);

int j=sst.executeUpdate();

cmd ="update  seats set tino=?,status=?,usid=?,dob=? where status = 'n' and flightid= '"+ fid + "' and stype='" + fclass + "' and doj = '"  +  dor + "' and rownum <= " + ts;


sst=con.prepareStatement(cmd);

val++;
sst.setInt(1,val);
sst.setString(2,"y");
sst.setString(3,uid);
sst.setString(4,msgdate);

int r=sst.executeUpdate();


if (j>0)
{%>
<center>
<h2>
Ticket Reserved Succesfully and your ticket no is <%=val%><br><br><br>
<a href="print.jsp?fid=<%=fid%>&dod=<%=dop%>&tino=<%=val%>&dor=<%=dor%>&toid=<%=toid%>&fromid=<%=fromid%>&fclass=<%=fclass%>"><h2> Print Boarding Pass</h2> </a>
</h2>
</center>
<%}
else
{%>
<center>
Seats Are Not Available
</center>

<%}%>

