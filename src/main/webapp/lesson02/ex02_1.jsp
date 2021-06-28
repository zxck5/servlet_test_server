<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Get Method</title>
</head>
<body>
	<% /*JSP 내장 객체
	선언하지 않아도 사용 가능한 객체들. import없이 바로 사용 가능하다.
	request, response, out, session, pageContext, application, config, page, exception 
	*/%>
	<%-- Response(서버) --%>
	
	<strong>아이디</strong>
	<%= request.getParameter("user_id") %>
	<br>
	<strong>이름</strong>
	<%= request.getParameter("name") %>
	<br>
	<strong>나이</strong>
	<%= request.getParameter("age") %>
	
</body>
</html>