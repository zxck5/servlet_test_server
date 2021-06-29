<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BMI 계산</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>


</head>
<body>
	<%! double getBmi(String height, String weight) {
		int height1 = Integer.parseInt(height);
		int weight1 = Integer.parseInt(weight);
		double BMI = weight1  / ((height1 / 100.0) * (height1 / 100.0));
		return BMI ;
	} %>




	<%
		String height = request.getParameter("height");
		String weight = request.getParameter("weight");
		
		String status = null ;
		double bmi = getBmi(height,weight);
		if (bmi <= 20) {
			status = "저체중";
		} else if (bmi <=25) {
			status="정상";
		} else if (bmi <= 30) {
			status="과체중";
		} else if (bmi>30){
			status="비만";
		}
	
	%>
	
	<div class="container">
		<h2>BMI 측정 결과</h2>
		<div class="display-4">당신은 <span class="text-info"><%=status %> </span> 입니다</div>
		<div>
			BMI 수치 : <%=bmi %>
		</div>
		
		
	</div>
	
	
	
	
	

</body>
</html>