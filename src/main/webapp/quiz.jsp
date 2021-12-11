<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="jsp.quiz" %>
<%@ page import="java.util.*" %>
<%@ page import="java.io.*" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>View page</title>
<link rel="stylesheet" href="quiz.css">
</head>
<body>
 <%
 int id = 0;
 String prevanswer = "0";
 int score = 0;
request.setCharacterEncoding("UTF-8"); 
if (request.getParameter("ID") != null) {
	id = Integer.parseInt(request.getParameter("ID"));
}
if (request.getParameter("score") != null) {
	score = Integer.parseInt(request.getParameter("score"));	
}
	
if (request.getParameter("first") != null) {
	prevanswer = "1";	
}
else if (request.getParameter("second")!=null) {
	prevanswer = "2";
}
else if (request.getParameter("third") != null) {
	prevanswer = "3";
}
else if (request.getParameter("fourth") != null) {
	prevanswer = "4";
}

quiz quiz = new quiz();
List tempquiz = quiz.getonequiz(id);
int temp = id + 1;
String next = "quiz.jsp?ID=" + temp;
System.out.println(next);
List quizlist = quiz.showlist();

for (int i = 0; i<quizlist.size(); i++) {
	if (i == id-2) {
		List list = (List)quizlist.get(i);
		System.out.println("answer: " + list.get(6));
		if (list.get(6).equals(prevanswer)) {
			score += 1;
		}
	}
}
System.out.println("id: " + id);
System.out.println("Score: " + score);
System.out.println("next: "+ next);
System.out.println("prevanswer: " + prevanswer);
System.out.println(tempquiz);
%>
<%
if (id <= quizlist.size()) {  
%>
<div class="main">
<form class="quizform" method="post" action="quiz.jsp?ID=<%=temp%>&score=<%=score%>">
        	<h1>NO <%=tempquiz.get(0)%> <%=tempquiz.get(1)%></h1>
        	<h2>Current Score: <%=score%></h2>
        	<label><input type="checkbox" name="first" value="1"><%=tempquiz.get(2)%></label><br>
        	<label><input type="checkbox" name="second" value="2"><%=tempquiz.get(3)%></label><br>
        	<label><input type="checkbox" name="third" value="3"><%=tempquiz.get(4)%></label><br>
        	<label><input type="checkbox" name="fourth" value="4"><%=tempquiz.get(5)%></label><br>
        	<button type="submit">Next Quiz</button>
        	<button type="button">Exit</button>
</form>
</div>

<%
} 
else {
%>
<div class="finish">
<h1>Finished!</h1>
<h2>Your score is: <%=score%> of <%=id-1%></h2>

<a class="quizfinishbutton" type="submit" href="index.jsp">Finish!</a>
</div>

		
<% 		
}
%>

</body>
</html>