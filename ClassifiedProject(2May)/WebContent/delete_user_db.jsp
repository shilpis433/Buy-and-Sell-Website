<%@page import="java.sql.*,db.*" %>
<html>
<body>
<%
	try
	{
	String user_id=request.getParameter("user_id");
	Connection con=ConnectionProvider.getCon();
	PreparedStatement pst=con.prepareStatement("delete from user where user_id=?");
	pst.setInt(1,Integer.parseInt(user_id));
	pst.executeUpdate();
	response.sendRedirect("manage_user.jsp?msg=User Deleted&color=text-success");
	}
	catch(Exception e)
	{
		response.sendRedirect("manage_user.jsp?msg="+e.getMessage()+"&color=text-danger");
	}
%>
</body>
</html>