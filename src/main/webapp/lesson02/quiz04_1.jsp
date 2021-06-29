<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body>
	<%!
		double result = 0;
	
		public void add(int a, int b) {
			result = a+b;
		}
		public void subtract(int a, int b) {
			result = a-b;
		}
		public void multiply(int a, int b) {
			result = a*b;
		}
		public void divide(int a, int b) {
			if (b>0 || b < 0) {				
				result = a/b;
			} else {
				System.out.println("실행 안됨");
				return;
			}
		}		
		
	%>
	
	<%	
		int number1 = Integer.parseInt(request.getParameter("num1"));
		int number2 = Integer.parseInt(request.getParameter("num2"));
	
	
		String operator = request.getParameter("operator");
		String printOperator = null;
		
		switch (operator) {
		case "add":
			add(number1,number2);
			printOperator = "+";
			break;
		case "subtract":
			subtract(number1,number2);
			printOperator = "-";
			break;
		case "multiply":
			multiply(number1,number2);
			printOperator = "*";
			break;
		case "divide":
			divide(number1,number2);
			printOperator = "/";
			break;
		}
	
	
	%>




	<div class="container">
		<h1>계산결과</h1>
		<div class="display-3">
			<%
				// 3 + 5 = 8
				out.print(number1 + " " + printOperator + " " + number2 + " = " + result);
			%>
		</div>
		
	
	</div>

</body>
</html>