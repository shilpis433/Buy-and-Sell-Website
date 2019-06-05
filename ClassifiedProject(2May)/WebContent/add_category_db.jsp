<%@page import="java.sql.*,db.*" %>
<html>
<body>
<%
	try
	{
	String catg=request.getParameter("category");
	Connection con=ConnectionProvider.getCon();
	PreparedStatement pst=con.prepareStatement("insert into category(cat_name) values(?)");
	pst.setString(1,catg);
	pst.executeUpdate();
	response.sendRedirect("add_category.jsp?msg=Category Added&color=text-success");
	}
	catch(Exception e)
	{
		response.sendRedirect("add_category.jsp?msg="+e.getMessage()+"&color=text-danger");
	}
%>
</body>
</html>