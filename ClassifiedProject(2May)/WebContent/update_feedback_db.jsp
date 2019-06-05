<%@page import="java.sql.*,db.*" %>
<html>
<body>
<%
	try
	{
	String f_id=request.getParameter("f_id");
	String f_email=request.getParameter("f_email");
	String f_mobile=request.getParameter("f_mobile");
	String f_comment=request.getParameter("f_comment");
	
	
	Connection con=ConnectionProvider.getCon();
	PreparedStatement pst=con.prepareStatement("update feedback set f_email=?,f_mobile=?,f_comment=? where f_id=?");
	pst.setString(1,f_email);
	pst.setString(2,f_mobile);
	pst.setString(3,f_comment);
	
	pst.setInt(4,Integer.parseInt(f_id));
	pst.executeUpdate();
	response.sendRedirect("manage_feedback.jsp?msg=Feedback Updated&color=text-success");
	}
	catch(Exception e)
	{
		response.sendRedirect("manage_feedback.jsp?msg="+e.getMessage()+"&color=text-danger");
	}
%>
</body>
</html>