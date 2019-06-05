<%@page import="db.ConnectionProvider,java.sql.*,java.io.*"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ include file="header_welcome.html"%>

<%
try
{
	String path=request.getRealPath("/images");
	MultipartRequest mpr=new MultipartRequest(request,path,50*1024*1024);
	Connection con=ConnectionProvider.getCon();
	ResultSet rs=con.createStatement().executeQuery("select max(p_id) from product");
	int p_id=0;
	if(rs.next())
	{
		p_id=rs.getInt(1);
		p_id++;
	}
	rs.close();
	
	String img_name=mpr.getOriginalFileName("p_image");
	String imgPath=path+"/"+img_name;
	String newImgPath=path+"/"+p_id+".png";
	File f1=new File(imgPath);
	File f2=new File(newImgPath);
	f1.renameTo(f2);
	f1.delete();
	
	StringBuffer url=request.getRequestURL();
	out.println(newImgPath);
	
	String imgUrl=url.substring(0,url.lastIndexOf("/"))+"/images/"+p_id+".png";
	String cat_name=mpr.getParameter("cat_name");
	String p_name=mpr.getParameter("p_name");
	String p_price=mpr.getParameter("p_price");
	String p_desc=mpr.getParameter("p_desc");
	Integer user_id=(Integer)session.getAttribute("user_id");
	String allow="false";
	
	Connection con2=ConnectionProvider.getCon();
	PreparedStatement pst=con2.prepareStatement("insert into product(cat_name,p_name,p_price,p_imgurl,user_id,allow,p_desc) values(?,?,?,?,?,?,?)");
	pst.setString(1,cat_name);
	pst.setString(2,p_name);
	pst.setString(3,p_price);
	pst.setString(4,imgUrl);
	pst.setInt(5,user_id);
	pst.setString(6,allow);
	pst.setString(7,p_desc);
	
	pst.executeUpdate();
	
	response.sendRedirect("post_product.jsp?msg=Post Created&color=text-success");	
}
catch(Exception e)
{

	response.sendRedirect("post_product.jsp?msg="+e+"&color=text-danger");
}
	
%>

</body>
</html>