<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="jsp.signup" %>
<%@ page import="java.util.*" %>
<%@ page import="java.io.*" %>

<%
	request.setCharacterEncoding("UTF-8"); 
	String firstname = null; 
	String lastname = null;
	String birthday = null;
	String gender = null;
	String email = null;
	String password = null;
	
	if (request.getParameter("firstname") != null) { 
		firstname = (String) request.getParameter("firstname"); 
	}
	if (request.getParameter("lastname") != null) { 
		lastname = (String) request.getParameter("lastname"); 
	}
	if (request.getParameter("birthday") != null) { 
		birthday = (String) request.getParameter("birthday"); 
	}
	if (request.getParameter("gender") != null) { 
		gender = (String) request.getParameter("gender"); 
	}
	if (request.getParameter("email") != null) { 
		email = (String) request.getParameter("email"); 
	}
	if (request.getParameter("password") != null) { 
		password = (String) request.getParameter("password"); 
	}
	//|| birthday == null || gender == null || email == null || password == null
	if (firstname == null || lastname == null ) { 
		PrintWriter script = response.getWriter(); 
		script.println("<script>"); 
		script.println("alert('Something is missing or went wrong. Going back to main page')"); 
		script.println("location.href='index.jsp';");
		script.println("</script>"); 
		script.close(); 
		return; 
	}
	else {
		int result = new signup().toSQL(firstname, lastname, birthday, gender, email, password);
		PrintWriter script = response.getWriter(); 
		script.println("<script>"); 
		script.println("alert('Successfully Signed up!')"); 
		script.println("location.href='index.jsp';");
		script.println("</script>"); 
		script.close(); 
	}
%>
