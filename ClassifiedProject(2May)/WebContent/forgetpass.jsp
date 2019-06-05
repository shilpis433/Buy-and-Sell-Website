<%@ include file="header.html" %>

<div style="position: absolute;left:35%;top:20%;">
<h3 class="text-primary">Change Password Form</h3>
</div>


<div style="position: absolute;top:30%;left:15%; border-style:groove;padding:20px;">
<form action="change_pass_db.jsp" onsubmit="return check_pass()">
  <div class="form-row">
    
    <div class="col-md-6 mb-3">
      <div class="input-group">
        <div class="input-group-prepend">
          <span class="input-group-text bg-primary text-white">Email</span>
        </div>
        <input type="email" name="email" class="form-control" required>
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
  <div class="col-md-6 mb-3">
      <div class="input-group">
        <div class="input-group-prepend">
          <span class="input-group-text bg-primary text-white">Password</span>
        </div>
        <input type="password" name="pass" class="form-control" id="exampleInputPassword1" required>
      </div>
    </div>
   
  
  <div class="col-md-6 mb-3">
      <div class="input-group">
        <div class="input-group-prepend">
          <span class="input-group-text bg-primary text-white">Confirm Password</span>
        </div>
        <input type="password" class="form-control" id="exampleInputPassword2" required>
        <span id="p_err" class="text-danger"></span>
      </div>
    </div>
   
  </div>
  

 
  
  
  <div class="form-group">
    <input type="checkbox" onclick="myFunction()">Show Password<br><br>
  </div>
  <input class="btn btn-primary" type="submit" onclick="check_pass()" value="Submit form">
</form>
	
	
</div>

  
<script>

	  
function myFunction() {
	 var x = document.getElementById("exampleInputPassword1");
	 var y = document.getElementById("exampleInputPassword2");
	
	  if (x.type === "password" && y.type==="password" ) {
	    x.type = "text";
	    y.type = "text";
	  } else {
	    x.type = "password";
	    y.type = "password"
	  }
	}

function check_pass() {
	 
	  var x = document.getElementById("exampleInputPassword1");
	  var y = document.getElementById("exampleInputPassword2");
	  
	  if (x.value == y.value) {
	    return true;
	  } else {
	   document.getElementById('p_err').innerHTML = "Password Mismatched";
	   return false;
	  }
	}
  
</script>
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