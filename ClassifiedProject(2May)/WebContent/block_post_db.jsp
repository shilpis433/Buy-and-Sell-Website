<%@page import="java.sql.*,db.*" %>
<html>
<body>
<%
	try
	{
	String p_id=request.getParameter("p_id");
	
	Connection con=ConnectionProvider.getCon();
	PreparedStatement pst=con.prepareStatement("update product set allow=? where p_id=?");
	pst.setString(1,"false");
	pst.setString(2,p_id);
	
	pst.executeUpdate();
	response.sendRedirect("manage_post.jsp?msg=Post Blocked&color=text-success");
	}
	catch(Exception e)
	{
		response.sendRedirect("manage_post.jsp?msg="+e.getMessage()+"&color=text-danger");
	}
%>
</body>
</html>