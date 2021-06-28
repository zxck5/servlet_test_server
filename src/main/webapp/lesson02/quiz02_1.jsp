<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    %>
<%@ page import="java.util.Calendar" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%!
		Calendar instance = Calendar.getInstance();
	%>

	<%-- Response(서버) --%>
	
	<% if (request.getParameter("time") != null) {
		String time = instance.
		
		
	} else if (request.getParameter("date") != null) {
		
	}
	
	
	
	
	%>
	
	<strong>시간</strong>
	<%= request.getParameter("time") %>
	<br>
	
	
	
	<strong>날짜</strong>
	<%= request.getParameter("date") %>
	

</body>
</html>