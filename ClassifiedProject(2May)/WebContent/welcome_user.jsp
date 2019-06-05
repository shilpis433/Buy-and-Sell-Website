<%@ include file="header_welcome.html" %>
<label class="text-success" style="position:absolute;left:1%;top:15%;font-size:20px;">Welcome:<%=session.getAttribute("user_name")%></label>

<div class="row" style="position:absolute;left:38%;width:80%;top:25%;text-align: center;">
  <div class="col-4" >
    <div class="list-group" id="list-tab" role="tablist">
      <a class="list-group-item list-group-item-action text-primary" href="update_user.jsp" role="tab" >Update Profile</a>
      <a class="list-group-item list-group-item-action text-warning" href="post_product.jsp" role="tab" >Post Product</a>
    <a class="list-group-item list-group-item-action text-danger"  href="#" role="tab" >Manage Product</a>	
   
     </div>
  </div>
  
</div>

</body>
</html>