	<%@ include file="header.html" %>

<div style="position: absolute;left:35%;top:20%;">
<h3 class="text-primary">User Registration Form</h3>
</div>


<div style="position: absolute;top:30%;left:8%; border-style:groove;padding:20px;">
<form action="user_reg_db.jsp" method="post">
  <div class="form-row">
    <div class="col-md-4 mb-3">
      <div class="input-group">
        <div class="input-group-prepend">
          <span class="input-group-text bg-primary text-white">Name</span>
        </div>
        <input type="text" name="name" class="form-control" required>
      </div>
    </div>
    
    <div class="col-md-4 mb-3">
      <div class="input-group">
        <div class="input-group-prepend">
          <span class="input-group-text bg-primary text-white">Email</span>
        </div>
        <input type="email" name="email" class="form-control" required>
      </div>
    </div>

  
  <div class="col-md-4 mb-3">
      <div class="input-group">
        <div class="input-group-prepend">
          <span class="input-group-text bg-primary text-white">Password</span>
        </div>
        <input type="password" name="pass" class="form-control" required>
      </div>
    </div>
   </div>
  
  
  <div class="form-row">
     <div class="col-md-4 mb-3">
      <div class="input-group">
        <div class="input-group-prepend">
          <span class="input-group-text bg-primary text-white">Mobile</span>
        </div>
        <input type="number" name="mob" class="form-control" required>
      </div>
    </div>
    
    <div class="col-md-4 mb-3">
      <div class="input-group">
        <div class="input-group-prepend">
          <span class="input-group-text bg-primary text-white" >State</span>
        </div>
        <select name="state" class="form-control">
        <option value="">Select State</option>
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
        <input type="text" name="city" class="form-control" required>
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
  <button class="btn btn-primary" type="submit">Submit form</button>
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