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
	
	<% 
		String type= request.getParameter("type");


		SimpleDateFormat sdf = null;

		Date now = new Date();

		


	
	
		if (type.equals("time")) {
			sdf = new SimpleDateFormat("현재 시간은 HH시 mm분 ss초입니다.");
		} else if (type.equals("date")) {
			sdf = new SimpleDateFormat("현재 시간은 yyyy년 MM월 dd일입니다.");
		}
		String nowString = sdf.format(now);
	
	%>
	
	<%-- server: 시간 또는 날짜를 출력 --%>
	<div class="container">
		<div class=display-3"><%=nowString %></div>
	</div>
	
	

</body>
</html>