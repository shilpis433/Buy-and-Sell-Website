<%@page import="java.sql.*,db.*" %>
<html>
<body>
<%
	try
	{
	String p_id=request.getParameter("p_id");
	
	Connection con=ConnectionProvider.getCon();
	PreparedStatement pst=con.prepareStatement("delete from product where p_id=?");
	
	pst.setString(1,p_id);
	
	pst.executeUpdate();
	response.sendRedirect("manage_post.jsp?msg=Post Deleted&color=text-success");
	}
	catch(Exception e)
	{
		response.sendRedirect("manage_post.jsp?msg="+e.getMessage()+"&color=text-danger");
	}
%>
</body>
</html>