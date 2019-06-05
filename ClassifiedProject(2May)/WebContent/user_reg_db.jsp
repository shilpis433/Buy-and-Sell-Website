<%@page import="java.sql.*,db.*" %>
<html>
<body>
<%
	try
	{
	String name=request.getParameter("name");
	String email=request.getParameter("email");
	String pass=request.getParameter("pass");
	String mobile=request.getParameter("mobile");
	String state=request.getParameter("state");
	String city=request.getParameter("city");
	
	Connection con=ConnectionProvider.getCon();
	PreparedStatement pst=con.prepareStatement("insert into user(user_name,user_email,user_pass,user_mobile,state,city) values(?,?,?,?,?,?)");
	pst.setString(1,name);
	pst.setString(2,email);
	pst.setString(3,pass);
	pst.setString(4,mobile);
	pst.setString(5,state);
	pst.setString(6,city);
	pst.executeUpdate();
	response.sendRedirect("newuser.jsp?msg=Registration Done&color=text-success");
	}
	catch(Exception e)
	{
		response.sendRedirect("newuser.jsp?msg="+e.getMessage()+"&color=text-danger");
		
	}
%>
</body>
</html>