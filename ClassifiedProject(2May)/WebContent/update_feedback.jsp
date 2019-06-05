<%@page import="db.ConnectionProvider,java.sql.*"%>
<%@ include file="header_welcome.html" %>

<label class="text-success" style="position:absolute;left:1%;top:15%;font-size:20px;">Welcome:Admin</label>
<a class="text-dark" style="position:absolute;left:1%;top:20%;font-size:20px;" href="welcome_admin.jsp">Back</a>
<div class="rounded" style="position:absolute;left:18%;top:25%;width:60%;border-style:groove;text-align: center;">
<%
	String f_id=request.getParameter("f_id");
	Connection con=ConnectionProvider.getCon();
	PreparedStatement pst=con.prepareStatement("select * from feedback where f_id=?");
	pst.setInt(1,Integer.parseInt(f_id));
	ResultSet rs=pst.executeQuery();
	if(rs.next())
	{
	%>
	<form action="update_feedback_db.jsp" method="post">
  <div class="form-row">
    
    <div class="col-md-6 mb-3">
      <div class="input-group">
        <div class="input-group-prepend">
          <span class="input-group-text bg-primary text-white">Feedback_Id</span>
        </div>
        <input type="text" name="f_id" class="form-control" value="<%=rs.getInt(1)%>" required readonly="readonly">
      </div>
    </div>
    
    <div class="col-md-6 mb-3">
      <div class="input-group">
        <div class="input-group-prepend">
          <span class="input-group-text bg-primary text-white">Email</span>
        </div>
        <input type="text" name="f_email" class="form-control" value="<%=rs.getString(2)%>" required readonly="readonly">
      </div>
    </div>
    
</div>

  <div class="form-row">
  <div class="col-md-6 mb-3">
      <div class="input-group">
        <div class="input-group-prepend">
          <span class="input-group-text bg-primary text-white">Mobile</span>
        </div>
        <input type="text" name="f_mobile" class="form-control" value="<%=rs.getString(3)%>" required>
      </div>
    </div>
   
   
   
  </div>
  
  <div class="form-row">
  <div class="col-md-12 mb-3">
      <div class="input-group">
        <div class="input-group-prepend">
          <span class="input-group-text bg-primary text-white">Comment</span>
        </div>
        <textarea name="f_comment" class="form-control" required>
        <%=rs.getString(4)%>
      	</textarea>
      </div>
    </div>
   
   
   
  </div>
  
  
	<input class="btn btn-primary" type="submit" value="Update">
</form>
	
	
	  
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