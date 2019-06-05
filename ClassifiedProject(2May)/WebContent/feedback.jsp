<%@ include file="header.html" %>
<div style="position: absolute;left:38%;top:20%;">
<h3 class="text-primary">Feedback Form</h3>
</div>


<div style="position: absolute;top:30%;left:15%; border-style:groove;padding:20px;">
<form action="feedback_to_db.jsp">
  <div class="form-row">
    
    <div class="col-md-6 mb-3">
      <div class="input-group">
        <div class="input-group-prepend">
          <span class="input-group-text bg-primary text-white">Email</span>
        </div>
        <input type="email"  name="email" class="form-control" required>
      </div>
    </div>

   <div class="col-md-6 mb-3">
      <div class="input-group">
        <div class="input-group-prepend">
          <span class="input-group-text bg-primary text-white">Mobile</span>
        </div>
        <input type="number" name="mobile" class="form-control" required>
      </div>
    </div>
   </div>
   
  <div class="form-row">
  <div class="col-md-12 mb-3">
      <div class="input-group">
        <div class="input-group-prepend">
          <span class="input-group-text bg-primary text-white">Feedback</span>
        </div>
        <textarea class="form-control" name="comment" required>
      	</textarea>
      </div>
    </div>
   
   
  </div>
  
	<input class="btn btn-primary" type="submit" value="Submit form">
</form>
	
	
</div>

  <% 
String msg=request.getParameter("msg");
if(msg!=null)
{
String color=request.getParameter("color");	
%>
<label style="position: absolute;left:40%;top:70%;" class="<%=color%>"><%=msg%></label>
<%	
}
%>
</body>
</html>