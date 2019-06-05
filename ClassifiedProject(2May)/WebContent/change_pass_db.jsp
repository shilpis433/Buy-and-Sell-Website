<%@page import="java.sql.*,db.*" %>
<html>
<body>
<%
	try
	{
	String email=request.getParameter("email");
	String pass=request.getParameter("pass");
	String mobile=request.getParameter("mobile");
	
	Connection con=ConnectionProvider.getCon();
	PreparedStatement pst=con.prepareStatement("update user set user_pass=? where user_email=? and user_mobile=?");
	pst.setString(1,pass);
	pst.setString(2,email);
	pst.setString(3,mobile);
	int res=pst.executeUpdate();
	if(res>0)
	{
		response.sendRedirect("forgetpass.jsp?msg=Password changed&color=text-success");	
	}
	else
	{
		response.sendRedirect("forgetpass.jsp?msg=Email/Mobile not matched&color=text-danger");
	}
	}
	catch(Exception e)
	{
		response.sendRedirect("forgetpass.jsp?msg="+e.getMessage()+"&color=text-danger");
	}
%>
</body>
</html>