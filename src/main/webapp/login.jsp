<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="jsp.signup" %>
<%@ page import="java.util.*" %>
<%@ page import="java.io.*" %>
    
<!DOCTYPE html>
<html>
<head></head>

<body>
	<%
		request.setCharacterEncoding("UTF-8"); 
		String loginemail = null;
		String loginpassword = null;
		if (request.getParameter("loginemail") != null) { 
			loginemail = (String) request.getParameter("loginemail"); 
		}
		if (request.getParameter("loginpassword") != null) { 
			loginpassword = (String) request.getParameter("loginpassword"); 
		}
		if (loginemail == null || loginpassword == null) {
				PrintWriter script = response.getWriter(); 
				script.println("<script>"); 
				script.println("alert('Please check if you wrote email and password!')"); 
				script.println("location.href='loginsignup.jsp';");
				script.println("</script>"); 
				script.close(); 			
		}
		else {
			signup login = new signup();
			int result = login.login(loginemail, loginpassword);	
			if (result == 1) {
				session.setAttribute("email", loginemail);
				PrintWriter script = response.getWriter(); 
				script.println("<script>"); 
				script.println("alert('login success!')"); 
				script.println("location.href='index.jsp';");
				script.println("</script>"); 
			} else if (result == 0) {
				PrintWriter script = response.getWriter(); 
				script.println("<script>"); 
				script.println("alert('Wrong password. Try again')"); 
				script.println("location.href='loginsignup.jsp';");
				script.println("</script>"); 
			}
		}
	%>
</body>
</html>

