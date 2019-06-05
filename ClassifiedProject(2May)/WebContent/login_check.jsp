<%@page import="db.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String email=request.getParameter("email");
String pass=request.getParameter("pass");
String user=request.getParameter("user");

if(user.equals("admin") )
{
		if(email.equals("admin@admin.com") && pass.equals("admin"))
		{
			response.sendRedirect("welcome_admin.jsp");
		}
		else
		{
			response.sendRedirect("index.jsp?msg=Invalid Username/Password/Type&color=text-danger");
		}
		
}
else if(user.equals("user"))
{
	Connection con=ConnectionProvider.getCon();
	PreparedStatement pst=con.prepareStatement("select * from user where user_email=? and user_pass=?");
	pst.setString(1,email);
	pst.setString(2,pass);
	ResultSet rs=pst.executeQuery();
	
	if(rs.next())
	{
		session.setAttribute("user_id",rs.getInt(1));
		session.setAttribute("user_name",rs.getString(2));
		session.setAttribute("user_email",rs.getString(3));
		session.setAttribute("user_pass",rs.getString(4));
		session.setAttribute("user_mobile",rs.getString(5));
		session.setAttribute("user_state",rs.getString(6));
		session.setAttribute("user_city",rs.getString(7));
		response.sendRedirect("welcome_user.jsp");
	}
	else
	{
		response.sendRedirect("index.jsp?msg=Invalid Username/Password/Type&color=text-danger");
	}
}

%>












</body>
</html>