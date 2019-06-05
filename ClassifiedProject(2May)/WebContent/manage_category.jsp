<%@page import="db.ConnectionProvider,java.sql.*"%>
<%@ include file="header_welcome.html" %>

<label class="text-success" style="position:absolute;left:1%;top:15%;font-size:20px;">Welcome:Admin</label>
<a class="text-dark" style="position:absolute;left:1%;top:20%;font-size:20px;" href="welcome_admin.jsp">Back</a>
<div class="rounded" style="position:absolute;left:18%;top:25%;width:60%;border-style:groove;text-align: center;overflow:scroll;">
<table class="table table-striped" >
	  <thead>
	    <tr>
	      <th scope="col">Cat_Id</th>
	      <th scope="col">Cat_Name</th>
	      <th scope="col">Action</th>
	    </tr>
	  </thead>
	  <tbody>
<%
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from category");
	while(rs.next())
	{
	%>
	  <tr>
	      <td><%=rs.getInt(1)%></td>
	      <td><%=rs.getString(2)%></td>
	      <td><a href="update_category.jsp?cat_id=<%=rs.getInt(1)%>">Update</a> | <a href="delete_category_db.jsp?cat_id=<%=rs.getInt(1)%>">Delete</a></td>
	    </tr>
	  
	<% 
	
	}	
	rs.close();
%>
	  </tbody>
	</table>

</div>
<% 
String msg=request.getParameter("msg");
if(msg!=null)
{
String color=request.getParameter("color");	
%>
<label style="position: absolute;left:40%;top:20%;" class="<%=color%>"><%=msg%></label>
<%	
}
%>
</body>
</html>