<%@page import="java.sql.*,db.*" %>
<html>
<body>
<%
	try
	{
	String f_id=request.getParameter("f_id");
	Connection con=ConnectionProvider.getCon();
	PreparedStatement pst=con.prepareStatement("delete from feedback where f_id=?");
	pst.setInt(1,Integer.parseInt(f_id));
	pst.executeUpdate();
	response.sendRedirect("manage_feedback.jsp?msg=Feedback Deleted&color=text-success");
	}
	catch(Exception e)
	{
		response.sendRedirect("manage_feedback.jsp?msg="+e.getMessage()+"&color=text-danger");
	}
%>
</body>
</html>