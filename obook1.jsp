<link href="air.cdf" rel="stylesheet">
<head>

<script>

function check1()
{
var aseats=document.airport.aseats.value;
var iseats=document.airport.iseats.value;
var cseats=document.airport.cseats.value;

if((aseats==0) && (iseats==0) && (cseats==0)) 
{
alert('Ticket No should not be Zero')
return false;
}

  if (document.obook.dod.value == document.obook.dor.value)
	{
	return false;
	}

return true;
}



function check()
{
  if (document.obook.dod.value == document.obook.dor.value)
	{
	alert("Date of Depature and Return should not be same");
	document.obook.dod.focus();
	}
}

function oneWay(a)
{
		if(a==2)
	{
	obook.dor.disabled=false;
	}
	else
	{
	obook.dor.disabled=true;
	}

}
</script>

<style type="text/css">
tdd
 {font-family:ms sans serif;color:brown;font-size:12px:align=center;}
th
{font-family:ms sans serif;color:black;background:#bbe9ff;font-size:12px;}
</style>
</head>
<%@page import="java.sql.*"%>
<%@ include file="common.jsp" %>
<body bgColor= #bbe9ff>
<center>
<div><h3>Online Booking of Tickets </h3> </div>
</center>

<%

int a = Integer.parseInt(request.getParameter("fromid"));
int b = Integer.parseInt(request.getParameter("toid"));
String flag="f";

ResultSet rs,rs1,rs2,rs3,rs4;

rs2=st2.executeQuery("select  airid,placename from airport where airid = " + a);
rs4=st4.executeQuery("select  * from fschedule where fromid = " + a + " and toid = " + b);

%>

<form name=obook method=post action=obook2.jsp onSubmit="return check1()">

<input type=hidden value=<%=a%> name=toid1>
<input type=hidden value=<%=b%> name=fromid1>

<table border=1 align=center bgcolor=#bbe9ff>

<tr colspan=4>
<th>FlightId</th>
<td>
<select name=fid>
<%while(rs4.next())
{
flag="t";
%>
<option> <%=rs4.getString(1) %> </option>
<%}%>
</select>
<%

if(flag=="t")
{
%>
</td>
<TD height=25>
<INPUT  onclick=oneWay(2) type=radio CHECKED value=2 name=rdoreturn>
Return
<INPUT onclick=oneWay(1) type=radio value=1 name=rdoreturn>Oneway</TD>

</tr>


<tr><th> From </th> <td> 


<select name=fromid>

<%

while(rs2.next())
{%>

<option value = <%=rs2.getString(1)%> > <%=rs2.getString(2)%> </option>

<%}
rs2.close();

rs3 = st.executeQuery("select  distinct a.doj   from  fschedule a , seats where a.flightid = seats.flightid and a.doj > sysdate and status = 'n' and fromid=" + a + " and toid=" + b );
%>

</select> </td> 
     <th> Departure </th> <td> <select name=dod onclick="check()"> 
<%
while(rs3.next())
{
	java.text.SimpleDateFormat fmt=new java.text.SimpleDateFormat("dd-MMM-yy");
	String ds=fmt.format(rs3.getDate(1)).toString();
%>
<option value=<%=ds%>> <%=ds%> </option>
<%}
rs3.close();
%>
</td>
</tr>
<tr><th> To </th> <td> 
<select name=toid>

<%
rs2=st2.executeQuery("select  airid,placename from airport where airid = " + b);
while(rs2.next())
{%>

<option value = <%=rs2.getString(1)%> > <%=rs2.getString(2)%> </option>
<%}%>

</select> </td> 
     <th> Return </th> <td> <select name=dor onclick="check()">



<%
rs3 = st.executeQuery("select  distinct a.doj   from  fschedule a , seats where a.flightid = seats.flightid and a.doj > sysdate and status = 'n' and toid=" + a + " and fromid=" + b );
while(rs3.next())
{
	java.text.SimpleDateFormat fmt=new java.text.SimpleDateFormat("dd-MMM-yy");
	String ds=fmt.format(rs3.getDate(1)).toString();
%>
<option value=<%=ds%>> <%=ds%> </option>
<%}
rs3.close();
%>




</td>
</tr>


<tr>
<th> Fare Class </th> <th> Adult </th> <th> Child </th> <th> Infant </th> 
</tr>
<tr>
<td align=center> <select name=fclass>
<option> Economy </option>
<option> Executive</option>
<option> Business </option>
</select> </td> 
<td align=center>
 <select name=aseats><option>0</option>
<option>1</option>
<option>2</option>
<option>3</option>
<option>4</option>
<option>5</option>
<option>6</option>
<option>7</option>
<option>8</option>
<option>9</option>
<option>10</option>
</select> </td> 
<td align=center> <select name=cseats>
<option>0</option>
<option>1</option>
<option>2</option>
<option>3</option>
<option>4</option>
<option>5</option>
<option>6</option>
<option>7</option>
<option>8</option>
<option>9</option>
<option>10</option>
</select> </td> 
<td align=center> <select name=iseats>
<option>0</option>
<option>1</option>
<option>2</option>
<option>3</option>
<option>4</option>
<option>5</option>
<option>6</option>
<option>7</option>
<option>8</option>
<option>9</option>
<option>10</option>
</select> </td> 
</tr>
</table>	

<br>
<center>
<input type=submit value=Confirm>
</form>

<%
}
else
{%>
<center> No flights for selected Range 
<a href="javascript:history.back()"><img src="images\cont.png" border=0></a>&nbsp;&nbsp;
</center>
<%}%>


