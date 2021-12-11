<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="jsp.join" %>
<%@ page import="java.util.*" %>
<%@ page import="java.io.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<%
request.setCharacterEncoding("UTF-8"); 
String name = null;
String age = null;
String position = null;
String email = null;
String introduction = null;

if (request.getParameter("name") != null) {
	name = (String) request.getParameter("name"); 
}
if (request.getParameter("age") != null) {
	age = (String) request.getParameter("age"); 
}
if (request.getParameter("position") != null) {
	position = (String) request.getParameter("position"); 
}
if (request.getParameter("email") != null) {
	email = (String) request.getParameter("email"); 
}
if (request.getParameter("introduction") != null) {
	introduction = (String) request.getParameter("introduction"); 
}

if (name != null && age != null && position != null && email != null && introduction != null) {
	int result = new join().toSQL(0, name, age, position, email, introduction);
	PrintWriter script = response.getWriter(); 
	script.println("<script>"); 
	script.println("alert('Successfully applied!')"); 
	script.println("location.href='index.jsp';");
	script.println("</script>"); 
	script.close(); 
	return; 
}
else {
	PrintWriter script = response.getWriter(); 
	script.println("<script>"); 
	script.println("alert('Error occurred')"); 
	script.println("location.href='index.jsp';");
	script.println("</script>"); 
	script.close(); 
}

%>

</body>
</html>