<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP 예제</title>
</head>
<body>
	<!-- HTML 주석 문법: (소스 보기에서 보인다.) -->
	<%-- JSP의 주석 문법: (소스 보기에서, 사이트에선 안보임.) --%>
	<h1>Hello world!!!</h1>
	
	<%
		// java 문법 시작 ==> 자바 주석.
		// scriptlet <%
		// -- 메인 함수에 구현하는 느낌
		// 1+2+3+..+10
		int sum = 0;
		for (int i = 0; i < 10; i ++) {
			sum += i+1;
		}
	%>
	
	<strong>합계: </strong>
	<input type="text" value="<%=sum%>">
	<br>
	
	<%!
		// declaration
		// -- 일반 클래스 같은 느낌. (필드와 메소드 정의하기도 함.)
		// field
		private int number = 100;
		
		// method
		public String getHelloWorld(){
			return "Hello World!";
		}
	%>
	<%-- 표현식: 선언되어 있는 변수값이나 메소드의 러턴값을 출력한다. --%>
	<%=getHelloWorld() %>
	<br>
	<%= number + 200 %>
	
</body>
</html>