<%@ include file="header_welcome.html" %>
<label class="text-success" style="position:absolute;left:1%;top:15%;font-size:20px;">Welcome:Admin</label>

<div class="row" style="position:absolute;left:38%;width:80%;top:25%;text-align: center;">
  <div class="col-4" >
    <div class="list-group" id="list-tab" role="tablist">
      <a class="list-group-item list-group-item-action text-primary" href="manage_user.jsp" role="tab" >Manage Users</a>
      <a class="list-group-item list-group-item-action text-warning" href="manage_category.jsp" role="tab" >Manage Categories</a>
    <a class="list-group-item list-group-item-action text-danger"  href="manage_feedback.jsp" role="tab" >Manage Feedback</a>	
   <a class="list-group-item list-group-item-action text-primary"  href="manage_post.jsp" role="tab" >Manage Post</a>	
   <a class="list-group-item list-group-item-action text-info"  href="add_category.jsp" role="tab" >Add Category</a>
   
    </div>
  </div>
  
</div>
<% 
String msg=request.getParameter("msg");
if(msg!=null)
{
String color=request.getParameter("color");	
%>
<label style="position: absolute;left:45%;top:75%;" class="<%=color%>"><%=msg%></label>
<%	
}
%>
</body>
</html>