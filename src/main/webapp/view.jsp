<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="jsp.board" %>
<%@ page import="java.util.*" %>
<%@ page import="java.io.*" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>View page</title>
<link rel="stylesheet" href="view.css">
</head>
<body>

<%
request.setCharacterEncoding("UTF-8"); 
String title = null;
String content = null;
String email = null;
int id;
List result = new ArrayList();
if (request.getParameter("ID") != null) {
	id = Integer.parseInt(request.getParameter("ID"));
	result = new board().view(id);
	session.setAttribute("viewid", id);
} else {
	PrintWriter script = response.getWriter(); 
	script.println("<script>"); 
	script.println("alert('Invalid record')"); 
	script.println("location.href='index.jsp';");
	script.println("</script>"); 
	script.close();
	return;
}
%>
<div class="maintable">
<table>
	<tr>
		<td>
		 	Title
		</td>
		<td>
			<%=result.get(0) %>
		</td>
	</tr>
	<tr>
		<td>
			Contents
		</td>
		<td>
			<%=result.get(1)%>
		</td>
	</tr>
	<tr>
		<td>
			Writer
		</td>
		<td>
			<%=result.get(2) %>
		</td>
	</tr>
</table>
</div>

<div class="viewfunction">
	<a href="index.jsp">Go back</a>
	<a href="delete.jsp?ID=<%=id%>">Delete</a>
</div>



</body>
</html>