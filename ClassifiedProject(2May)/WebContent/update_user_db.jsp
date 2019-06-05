<%@page import="java.sql.*,db.*" %>
<html>
<body>
<%
	try
	{
	
	String name=request.getParameter("name");
	String email=request.getParameter("email");
	String pass=request.getParameter("pass");
	String mobile=request.getParameter("mob");
	String state=request.getParameter("state");
	String city=request.getParameter("city");
	Connection con=ConnectionProvider.getCon();
	PreparedStatement pst=con.prepareStatement("update user set user_name=?,user_email=?,user_pass=?,user_mobile=?,state=?,city=? where user_id=?");
	pst.setString(1,name);
	pst.setString(2,email);
	pst.setString(3,pass);
	pst.setString(4,mobile);
	pst.setString(5,state);
	pst.setString(6,city);
	pst.setInt(7,Integer.parseInt(session.getAttribute("user_id").toString()));
	pst.executeUpdate();
	
	session.setAttribute("user_name",name);
	session.setAttribute("user_email",email);
	session.setAttribute("user_pass",pass);
	session.setAttribute("user_mobile",mobile);
	session.setAttribute("user_state",state);
	session.setAttribute("user_city",city);
	
	
	response.sendRedirect("update_user.jsp?msg=Profile Updated&color=text-success");
	}
	catch(Exception e)
	{
		response.sendRedirect("update_user.jsp?msg="+e.getMessage()+"&color=text-danger");
	}
%>
</body>
</html>