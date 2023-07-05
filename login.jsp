<%@ include file="common.jsp" %>

<body  bgcolor= #bbe9ff text=#000000>

<% 
String login=request.getParameter("loginid").trim();
String password=request.getParameter("pass").trim();
int flag=1;

session.putValue("login",login);

if(login.equalsIgnoreCase("admin")&&password.equalsIgnoreCase("admin"))
{
  %>
     <jsp:forward page="adminmenu.jsp"/>
    <% 
}
else
{ 
flag=0;
}


ResultSet rs=st.executeQuery("select * from users where userid='" + login + "' and password ='" + password + "'");
session.putValue("login",login);
   if(rs.next())
{
%>
     <jsp:forward page="usermenu.jsp"/>
	<%}
   else
	{flag=0;	}
	


if(flag==0)
{
%>

<body   bgcolor= #bbe9ff text=#000000> 
<br><br><br><br><br><br><br><br>
<center>
Invalid UserName and Password<br>
<a href='home.jsp'><img src=images\home.JPG border=0></a>

<%}
else
{
st.close();
con.close();
}





%>
