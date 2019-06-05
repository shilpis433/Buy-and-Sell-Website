<%@page import="db.ConnectionProvider,java.sql.*"%>
<%@ include file="header_welcome.html" %>

<label class="text-success" style="position:absolute;left:1%;top:15%;font-size:20px;">Welcome:Admin</label>
<a class="text-dark" style="position:absolute;left:1%;top:20%;font-size:20px;" href="welcome_admin.jsp">Back</a>
<div class="rounded" style="position:absolute;left:10%;top:25%;width:80%;border-style:groove;text-align: center;overflow:scroll;">
<table class="table table-striped" >
	  <thead>
	    <tr>
	      <th scope="col">Id</th>
	      <th scope="col">Name</th>
	      <th scope="col">Email</th>
	      <th scope="col">Password</th>
	      <th scope="col">Mobile</th>
	      <th scope="col">State</th>
	      <th scope="col">City</th>
	      <th scope="col">Action</th>
	      
	    </tr>
	  </thead>
	  <tbody>
<%
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from user");
	while(rs.next())
	{
	%>
	  <tr>
	      <td><%=rs.getInt(1)%></td>
	      <td><%=rs.getString(2)%></td>
	      <td><%=rs.getString(3)%></td>
	      <td><%=rs.getString(4)%></td>
	      <td><%=rs.getString(5)%></td>
	      <td><%=rs.getString(6)%></td>
	      <td><%=rs.getString(7)%></td>
	      
	      <td><a href="delete_user_db.jsp?user_id=<%=rs.getInt(1)%>">Delete</a></td>
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