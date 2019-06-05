<%@ include file="header_welcome.html" %>

<label class="text-success" style="position:absolute;left:1%;top:15%;font-size:20px;">Welcome:Admin</label>
<a class="text-dark" style="position:absolute;left:1%;top:20%;font-size:20px;" href="welcome_admin.jsp">Back</a>


<div style="position: absolute;left:35%;top:20%;">
<h3 class="text-primary">Add Category Page</h3>
</div>

<div style="position: absolute;left:30%;top:40%;">
<form action="add_category_db.jsp">
<label class="text-primary">Enter Category</label>
<input type="text" name="category" required="required" placeholder="category">
<input type="submit" class="btn-primary" value="Submit">
</form>

</div>

<% 
String msg=request.getParameter("msg");
if(msg!=null)
{
String color=request.getParameter("color");	
%>
<label style="position: absolute;left:40%;top:60%;" class="<%=color%>"><%=msg%></label>
<%	
}
%>

</body>
</html>