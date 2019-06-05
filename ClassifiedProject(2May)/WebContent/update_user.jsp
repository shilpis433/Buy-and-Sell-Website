<%@page import="db.ConnectionProvider,java.sql.*"%>
<%@ include file="header_welcome.html" %>

<label class="text-success" style="position:absolute;left:1%;top:15%;font-size:20px;">Welcome:<%=session.getAttribute("user_name")%></label>
<a class="text-dark" style="position:absolute;left:1%;top:20%;font-size:20px;" href="welcome_user.jsp">Back</a>
<div class="rounded" style="position:absolute;left:18%;top:25%;width:60%;border-style:groove;text-align: center;">

<form action="update_user_db.jsp" method="post">
  <div class="form-row">
    <div class="col-md-4 mb-3">
      <div class="input-group">
        <div class="input-group-prepend">
          <span class="input-group-text bg-primary text-white">Name</span>
        </div>
        <input type="text" name="name" value="<%=session.getAttribute("user_name")%>" class="form-control" required>
      </div>
    </div>
    
    <div class="col-md-4 mb-3">
      <div class="input-group">
        <div class="input-group-prepend">
          <span class="input-group-text bg-primary text-white">Email</span>
        </div>
        <input type="email" name="email" value="<%=session.getAttribute("user_email")%>" class="form-control" required>
      </div>
    </div>

  
  <div class="col-md-4 mb-3">
      <div class="input-group">
        <div class="input-group-prepend">
          <span class="input-group-text bg-primary text-white">Password</span>
        </div>
        <input type="text" name="pass" value="<%=session.getAttribute("user_pass")%>" class="form-control" required>
      </div>
    </div>
   </div>
  
  
  <div class="form-row">
     <div class="col-md-4 mb-3">
      <div class="input-group">
        <div class="input-group-prepend">
          <span class="input-group-text bg-primary text-white">Mobile</span>
        </div>
        <input type="number" name="mob" value="<%=session.getAttribute("user_mobile")%>" class="form-control" required>
      </div>
    </div>
    
    <div class="col-md-4 mb-3">
      <div class="input-group">
        <div class="input-group-prepend">
          <span class="input-group-text bg-primary text-white" >State</span>
        </div>
        <select name="state" class="form-control">
        <option value="<%=session.getAttribute("user_state")%>"><%=session.getAttribute("user_state")%></option>
<option value="Andaman and Nicobar Islands">Andaman and Nicobar Islands</option>
<option value="Andhra Pradesh">Andhra Pradesh</option>
<option value="Arunachal Pradesh">Arunachal Pradesh</option>
<option value="Assam">Assam</option>
<option value="Bihar">Bihar</option>
<option value="Chandigarh">Chandigarh</option>
<option value="Chhattisgarh">Chhattisgarh</option>
<option value="Dadra and Nagar Haveli">Dadra and Nagar Haveli</option>
<option value="Daman and Diu">Daman and Diu</option>
<option value="Delhi">Delhi</option>
<option value="Goa">Goa</option>
<option value="Gujarat">Gujarat</option>
<option value="Haryana">Haryana</option>
<option value="Himachal Pradesh">Himachal Pradesh</option>
<option value="Jammu and Kashmir">Jammu and Kashmir</option>
<option value="Jharkhand">Jharkhand</option>
<option value="Karnataka">Karnataka</option>
<option value="Kerala">Kerala</option>
<option value="Lakshadweep">Lakshadweep</option>
<option value="Madhya Pradesh">Madhya Pradesh</option>
<option value="Maharashtra">Maharashtra</option>
<option value="Manipur">Manipur</option>
<option value="Meghalaya">Meghalaya</option>
<option value="Mizoram">Mizoram</option>
<option value="Nagaland">Nagaland</option>
<option value="Orissa">Orissa</option>
<option value="Pondicherry">Pondicherry</option>
<option value="Punjab">Punjab</option>
<option value="Rajasthan">Rajasthan</option>
<option value="Sikkim">Sikkim</option>
<option value="Tamil Nadu">Tamil Nadu</option>
<option value="Tripura">Tripura</option>
<option value="Uttaranchal">Uttaranchal</option>
<option value="Uttar Pradesh">Uttar Pradesh</option>
<option value="West Bengal">West Bengal</option>
      </select>
      </div>
    </div>

  
  <div class="col-md-4 mb-3">
      <div class="input-group">
        <div class="input-group-prepend">
          <span class="input-group-text bg-primary text-white">City</span>
        </div>
        <input type="text" name="city" value="<%=session.getAttribute("user_city")%>" class="form-control" required>
      </div>
    </div>
  </div>
  
  
  <div class="form-group">
    <div class="form-check">
      <input class="form-check-input" type="checkbox" value="" required>
      <label class="form-check-label" for="invalidCheck2">
        Agree to terms and conditions
      </label>
    </div>
  </div>
  <button class="btn btn-primary" type="submit">Update</button>
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