


<link href="air.cdf" rel="stylesheet">
<%@ include file="common.jsp" %>
<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>


</head><body bgColor= #bbe9ff>

<br><br>
<BR>
<fieldset>
<legend><h2>Select Tickets to be Re-Schedule </h2></legend><BR>
<form method=post action="cancelseats.jsp">
<%  String buff="";
    String head="";
    String  uid = session.getValue("login").toString();
	try {

    st=con.createStatement();
        String cmd="Select FLIGHTID,DOJ,dOB,tino,sno,stype ,fid,tid from seats where doj > sysdate and  usid='" + uid + "'";

ResultSet    rs=st.executeQuery(cmd);
	

	int count=0;
	boolean rec=false;
%>

<table align=center width=600 cellspacing=1 cellpadding=2 bgcolor=#bbe9ff>
<tr bgcolor=lightslategray>
<th style="color:aliceblue"> FlightId </th>
<th style="color:aliceblue"> Date of Journey </th>
<th style="color:aliceblue"> Date of Booking </th>
<th style="color:aliceblue"> Ticket No</th>
<th style="color:aliceblue"> Seat No</th>
<th style="color:aliceblue">Seat Type</th>
</tr>

<%
	while(rs.next())
	 {

		String id=rs.getString(1);

	java.text.SimpleDateFormat fmt=new java.text.SimpleDateFormat("dd-MMM-yy");
	String doj=fmt.format(rs.getDate(2)).toString();

	java.text.SimpleDateFormat fmt1=new java.text.SimpleDateFormat("dd-MMM-yy");
	String dob=fmt1.format(rs.getDate(3)).toString();

	int tino = rs.getInt(4);
	String sno = rs.getString(5);
	String stype = rs.getString(6);
	String fid = rs.getString(7);
	String tid = rs.getString(8);

%>
<tr>
	<td nowrap>  <%=id%> </td>
	<td nowrap>  <%=doj%> </td>
	<td nowrap>  <%=dob%> </td>
	<td nowrap> <a href="obook11.jsp?fromid=<%=fid%>&toid=<%=tid%>&tino=<%=tino%>&fid=<%=id%>&doj=<%=doj%>&sno=<%=sno%>"> <h5>Reschedule Ticket</h5> </a> </td>
	<td nowrap>  <%=sno%> </td>
	<td nowrap>  <%=stype%> </td>
</tr>
<%

	}
	
    }   catch(Exception e) { out.println("No Items Found"+e); }


%>
</fieldset>
</body></html>
