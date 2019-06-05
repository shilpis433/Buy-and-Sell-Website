<%@page import="java.sql.*,db.*" %>
<html>
<body>
<%
	try
	{
	String cat_id=request.getParameter("cat_id");
	String cat_name=request.getParameter("cat_name");
	
	Connection con=ConnectionProvider.getCon();
	PreparedStatement pst=con.prepareStatement("update category set cat_name=? where cat_id=?");
	pst.setString(1,cat_name);
	pst.setInt(2,Integer.parseInt(cat_id));
	
	pst.executeUpdate();
	response.sendRedirect("manage_category.jsp?msg=Category Updated&color=text-success");
	}
	catch(Exception e)
	{
		response.sendRedirect("manage_category.jsp?msg="+e.getMessage()+"&color=text-danger");
	}
%>
</body>
</html>