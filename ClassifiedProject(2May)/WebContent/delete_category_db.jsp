<%@page import="java.sql.*,db.*" %>
<html>
<body>
<%
	try
	{
	String cat_id=request.getParameter("cat_id");
	Connection con=ConnectionProvider.getCon();
	PreparedStatement pst=con.prepareStatement("delete from category where cat_id=?");
	pst.setInt(1,Integer.parseInt(cat_id));
	pst.executeUpdate();
	response.sendRedirect("manage_category.jsp?msg=Category Deleted&color=text-success");
	}
	catch(Exception e)
	{
		response.sendRedirect("manage_category.jsp?msg="+e.getMessage()+"&color=text-danger");
	}
%>
</body>
</html>