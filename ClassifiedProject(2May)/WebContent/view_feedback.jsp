<%@page import="db.ConnectionProvider,java.sql.*"%>
<%@ include file="header.html" %>

<div class="rounded" style="position:absolute;left:18%;top:25%;width:60%;border-style:groove;text-align: center;overflow:scroll;">
<table class="table table-striped" >
	  <thead>
	    <tr>
	      <th scope="col">Email</th>
	      <th scope="col">Mobile</th>
	      <th scope="col">Comment</th>
	    </tr>
	  </thead>
	  <tbody>
<%
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from feedback");
	while(rs.next())
	{
	%>
	  <tr>
	      <td><%=rs.getString(2)%></td>
	      <td><%=rs.getString(3)%></td>
	      <td><%=rs.getString(4)%></td>
	  </tr>
	<% 
	}	
	rs.close();
%>
	  </tbody>
	</table>

</div>

</body>
</html>