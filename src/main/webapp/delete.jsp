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

int id = 0;
if (request.getParameter("ID") != null) {
	id = Integer.parseInt(request.getParameter("ID"));
}

if (id != 0) {
	int delete = new board().delete(id);
	if (delete == 1) {
		PrintWriter script = response.getWriter(); 
		script.println("<script>"); 
		script.println("alert('Delete success!')"); 
		script.println("location.href='index.jsp';");
		script.println("</script>"); 
		script.close(); 
		return; 
	} else {
		PrintWriter script = response.getWriter(); 
		script.println("<script>"); 
		script.println("alert('Delete failed')"); 
		script.println("location.href='index.jsp';");
		script.println("</script>"); 
		script.close(); 
		return; 
	}
}

%>
</body>
</html>