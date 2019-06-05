<%@ include file="header_welcome.html"%>
<%
	session.invalidate();
%>
<script type="text/javaScript">
function disableBackButton()
{
window.history.forward();
}
setTimeout("disableBackButton()", 0);
</script>
<body onload="disableBackButton()">
<div style="position:absolute;top:40%;left:45%;">
<a href="index.jsp?msg=You are successfully Logged out!&color=text-success">Confirm logout</a>
</div>
</body>
</html>