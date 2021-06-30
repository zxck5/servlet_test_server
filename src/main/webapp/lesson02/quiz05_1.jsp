<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>



</head>
<body>
	<%!
			
	%>

	<%
	
		//1 cm = 0.394 inch
		//1 cm = 0.01 meter
		//1 cm = 0.0109361yard
		//1 cm = 0.0328084feet
		String lengthType [] = request.getParameterValues("lengthType");
		double length = Integer.parseInt(request.getParameter("length"));
		double value = 0;
		String type = null ;
		
		double inchValue = length * 0.394;
		double yardValue = length * 0.0109361;
		double feetValue = length * 0.0328084;
		double meterValue = length * 0.01;
		
	%>
	
	<div class="container">
		<h1>길이 변환 결과</h1>
		<span class="display-4"><%= length %>cm</span>
		<hr>
		<div>
			<h3>
				<%
					for (String lengths : lengthType) {
						
						if (lengths.equals("inch")) {
							value = inchValue;
							type = "in";
							out.println(value);
							out.print(type);
							
						} else if(lengths.equals("yard")) {
							value = yardValue;
							type = "yd";
							out.println(value);
							out.print(type);
						} else if (lengths.equals("feet")) {
							value = feetValue;
							type="ft";
							out.println(value);
							out.print(type);
						} else if (lengths.equals("meter")) {
							value = meterValue;
							type="m";
							out.println(value);
							out.print(type);
						}
						out.print("<br>");
						
					}
				%>
			</h3>
			
		</div>
	</div>
	
</body>
</html>