<%@page import="db.ConnectionProvider,java.sql.*"%>
<%@ include file="header_welcome.html" %>

<label class="text-success" style="position:absolute;left:1%;top:15%;font-size:20px;">Welcome:<%=session.getAttribute("user_name")%></label>
<a class="text-dark" style="position:absolute;left:1%;top:20%;font-size:20px;" href="welcome_user.jsp">Back</a>
<div class="rounded" style="position:absolute;left:18%;top:25%;width:60%;border-style:groove;text-align: center;padding: 20px;">

<form action="post_product_db.jsp" method="post" enctype="multipart/form-data">
  <div class="form-row">
   <div class="col-md-6 mb-3">
      <div class="input-group">
        <div class="input-group-prepend">
          <span class="input-group-text bg-primary text-white" >Category Name</span>
        </div>
        <select  name="cat_name" class="form-control">
             <%
			Connection con=ConnectionProvider.getCon();
			Statement st=con.createStatement();
			ResultSet rs=st.executeQuery("select * from category");
			
			while(rs.next())
			{
				%>
			<option><%=rs.getString(2)%></option>
			
				<% 
			}
			rs.close();
			%>
			
             </select>
      </div>
    </div>
  
  
  
  
    <div class="col-md-6 mb-3">
      <div class="input-group">
        <div class="input-group-prepend">
          <span class="input-group-text bg-primary text-white">Product Name</span>
        </div>
        <input type="text" name="p_name" class="form-control" required>
      </div>
    </div>
    
    
    

  
  
   </div>
  
  
  <div class="form-row">
    
   
       <div class="col-md-6 mb-3">
      <div class="input-group">
        <div class="input-group-prepend">
          <span class="input-group-text bg-primary text-white">Price</span>
        </div>
        <input type="number" name="p_price" class="form-control" required>
      </div>
    </div>
   
   
  <div class="col-md-6 mb-3">
      <div class="input-group">
        <div class="input-group-prepend">
          <span class="input-group-text bg-primary text-white">Select Image</span>
        </div>
        <input type="file" name="p_image" accept="image/*" class="form-control" required>
      </div>
    </div>
  </div>
  
  
  <div class="form-row">
    
   
       <div class="col-md-8 mb-3">
      <div class="input-group">
        <div class="input-group-prepend">
          <span class="input-group-text bg-primary text-white">Description</span>
        </div>
        <textarea name="p_desc" class="form-control" required>
        </textarea>
      </div>
    </div>
  </div>
  
  <button class="btn btn-primary" type="submit">Upload</button>
</form>
		
	
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