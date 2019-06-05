<%@page import="java.sql.*,db.*" %>
<html>
<body>
<%
	try
	{
	String email=request.getParameter("email");
	String mobile=request.getParameter("mobile");
	String comment=request.getParameter("comment");
	
	
	Connection con=ConnectionProvider.getCon();
	PreparedStatement pst=con.prepareStatement("insert into feedback(f_email,f_mobile,f_comment) values(?,?,?)");
	pst.setString(1,email);
	pst.setString(2,mobile);
	pst.setString(3,comment);
	pst.executeUpdate();
	response.sendRedirect("feedback.jsp?msg=Thanks for your Feedback&color=text-success");
	}
	catch(Exception e)
	{
		response.sendRedirect("feedback.jsp?msg="+e.getMessage()+"&color=text-danger");
	}
%>
</body>
</html>