<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="jsp.board" %>
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
String title = null;
String content = null;
String email = null;
int num = 0;

email = session.getAttribute("curemail").toString(); 

if (request.getParameter("title") != null) { 
	title = (String) request.getParameter("title"); 
}
if (request.getParameter("boardcontent") != null) { 
	content = (String) request.getParameter("boardcontent"); 
}

if (title == null || content == null || email == null || title.length() == 0 || content.length() == 0) { 
	PrintWriter script = response.getWriter(); 
	script.println("<script>"); 
	script.println("alert('Please fill in title and contents')"); 
	script.println("location.href='index.jsp';");
	script.println("</script>"); 
	script.close(); 
	return; 
}
else {
	int result = new board().submit(num, title, content, email);
	PrintWriter script = response.getWriter(); 
	script.println("<script>"); 
	script.println("alert('You successfully submitted!')"); 
	script.println("location.href='index.jsp';");
	script.println("</script>"); 
	script.close(); 
}

%>

</body>
</html>