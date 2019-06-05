<%@page import="java.sql.*,db.*" %>
<%@ include file="header.html" %>
<%
	try
	{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	String t1="CREATE TABLE category(cat_id int(5) AUTO_INCREMENT primary key,cat_name varchar(50) unique key)";
	String t2="CREATE TABLE user(user_id int(10) AUTO_INCREMENT primary key,user_name varchar(50),user_email varchar(50) unique key,user_pass varchar(50),user_mobile varchar(10),state varchar(50),city varchar(50))"; 
	String t3="CREATE TABLE product(p_id int(10) AUTO_INCREMENT primary key,cat_name varchar(50),p_name varchar(100),p_price varchar(10),p_imgurl varchar(200),user_id int(10),allow varchar(10),p_desc varchar(200))";
	String t4="CREATE TABLE feedback(f_id int(10) AUTO_INCREMENT primary key,f_email varchar(50),f_mobile varchar(100),f_comment varchar(500))";

	st.execute(t4);
	st.execute(t1);
	st.execute(t2);
	st.execute(t3);
	
	response.sendRedirect("welcome_admin.jsp?msg=Tables Created&color=text-success");
	}
	catch(Exception e)
	{
	}
%>


<p>
<% 
String msg=request.getParameter("msg");
if(msg!=null)
{
String color=request.getParameter("color");	
%>
<label style="position: absolute;left:70%;top:20%;" class="<%=color%>"><%=msg%></label>
<%	
}
%>
</p>
<br><br>
<div class="container">
<div class="rounded" style="border-style:groove;position: absolute;left:66%;">

<div class="container">
<form action="login_check.jsp">
  <div class="form-group row">
    <label for="inputEmail3" class="col-sm-5 col-form-label text-primary">Email</label>
    <div class="col-sm-12">
      <input type="email" name="email" class="form-control" id="inputEmail3" placeholder="Email" required="required">
    </div>
  </div>
  <div class="form-group row">
    <label for="inputPassword3" class="col-sm-5 col-form-label text-primary">Password</label>
    <div class="col-sm-12">
      <input type="password" name="pass" class="form-control" id="inputPassword3" placeholder="Password" required="required">
    </div>
  </div>
  <fieldset class="form-group">
    <div class="row">
      <legend class="col-form-label col-sm-4 pt-0 text-primary">User Type</legend>
      <div class="col-sm-10">
        <div class="form-check">
          <input class="form-check-input" type="radio" name="user" id="gridRadios1" value="user" checked>
          <label class="form-check-label" for="gridRadios1">
            User
          </label>
        </div>
        <div class="form-check">
          <input class="form-check-input" type="radio" name="user" id="gridRadios2" value="admin">
          <label class="form-check-label" for="gridRadios2">
            Admin
          </label>
        </div>
        
      </div>
    </div>
  </fieldset>
  <div class="form-group row">
    <div class="col-sm-10">
      <button type="submit" class="btn btn-primary">Sign in</button>
      <button type="reset" class="btn btn-primary mx-3">Reset</button>
    </div>
  </div>
  
  <div class="form-group row">
  <div class="col-sm-12">
  <a href="newuser.jsp">New User</a>
  <a href="forgetpass.jsp" class="mx-3">Forgot Password</a>
  </div>
  </div>
  
</form>
</div>
</div>





<div style="position:absolute;left:.2%;">
<img src="images/buysale.jpg">
</div>

<div style="position: absolute;left:30%;">
	<form action="search.jsp">
		<label class="text-primary">Select Category:</label>
		<select name="cat_name">
			<option>----select-----</option>
			
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
		<input type="submit" class="button btn-primary">
	</form>
</div>

<div style="position:absolute;top:55%;">
<h5 style="line-height:25px;">

This project is meant for selling or buying old or new products
<br>by individuals .The services provided by this portal is free
 of cost. <br>
This project is meant for selling or buying old or new products
<br>by individuals .The services provided by this portal is free
 of cost. <br>
 </h5> 
 
</div>


</div>
</body>
</html>