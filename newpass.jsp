<link href="air.cdf" rel="stylesheet">
<%@ include file="common.jsp" %>
<HTML><HEAD><TITLE>Home page</TITLE><script language=javascript>
function sub()
{
if(form1.name.value==""||form1.userid.value=="")
{
alert("enter your password")
return false
}
form1.submit()
}
function res(form1)
{
form1.reset()
}
</script>
</HEAD>
<body bgColor= #bbe9ff>
<br>
<center>
<table border=0  bgcolor=#ffffff  cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="42%" id="AutoNumber1">
 <tr>
    <td width="100%">
    <p align="center">
    <img border="2" src="images/forgotpassword.gif" width="303" height="40" align="left"></td>
  </tr>
</table>
<center>
<form action="savepass.jsp" method=post name=form1>
<center>

<%
int nos = Integer.parseInt(request.getParameter("userid").trim());
ResultSet rs2= st.executeQuery("Select * from cosmos where pnr=" + nos);

if(rs2.next())
{

%>

<table border=0 bgcolor=#006699 width=70%>
<TR>
    <TD>&nbsp;</TD>
</TR>
<tr><td align=center><b><font size="4" color="#FFFFFF"> Your Old Password:</font></b></td><td>
  <input type=text value=<%=rs2.getString(2)%> name=name size="20"></td></tr><br>
<tr><td align=center><b><font size="4" color="#FFFFFF">Enter Your New Password :</font></b></td><td>
  <input type=password name=userid size="20"></td></tr>
<tr><td align=center><b><font size="4" color="#FFFFFF">Retype your  New Password :</font></b></td><td>
  <input type=password name=rtype size="20"></td></tr>
<input type=hidden value=<%=rs2.getInt(21)%> name=pnr>
<input type=hidden value=<%=rs2.getString(1)%> name=uid>
 <TR>
    <TD>&nbsp;</TD>
</TR>

</table>
</center>
<br>
<center>
        <input type=button value=submit  onclick=sub() ></a>
            <input type=button value=reset onclick=res(form1) >
</center>
    </p>

<%}
else
{%>
<center> Invalid Pnr No.</center>
  <br>  <br>  <br>  <br>
  <center>
  <a href="javascript:history.back()"><img src="images\backs.gif" 
border=0></a>&nbsp;&nbsp;
  <br>  <br>  <br>  <br>
<%}%>

</form>
</BODY></HTML>