<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Calendar" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
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
<%
	Calendar today = Calendar.getInstance();
	SimpleDateFormat sdf1 = new SimpleDateFormat("yyyy-MM");
	
	Calendar beforeMonth = Calendar.getInstance();
	beforeMonth.add(Calendar.MONTH, -1); // 한달전
	
	int lastDate = beforeMonth.getActualMaximum(Calendar.DATE); //저번달 마지막 날.
	beforeMonth.set(Calendar.DATE,lastDate); //beforeMonth 변수의 마지막 날로 설정.
	// 만약 lastDate의 요일을 알면.
	int dow = beforeMonth.get(Calendar.DAY_OF_WEEK); // 요일 알수 있음.
	// 이번달 기준 저번달 31일의 요일을 알면. 시작하는 요일을 알수있음.
	//out.print(dow); // dow => 4
	
	
	
	// 시작하는 날의 요일. => dow + 1 -> 5(목요일)
	int startDay = dow + 1; // 목요일 (5) // 저번달.
	int lastDay = today.getActualMaximum(Calendar.DATE); // 이달의 마지막 날
	
	
	int wom = today.get(Calendar.WEEK_OF_MONTH); // 이번달의 몇째주 ...
	
	
	int tdow = beforeMonth.get(Calendar.DAY_OF_WEEK); //이번달 마지막 요일
	
%>


<body>
	<div class="container">
		<h1><%= sdf1.format(today.getTime()) %></h1>
		
		<table class="table">
			<thead>
				<tr>
					<td>일</td>
					<td>월</td>
					<td>화</td>
					<td>수</td>
					<td>목</td>
					<td>금</td>
					<td>토</td>
				</tr>
			</thead>
			<tbody>
				<tr>
					<% 
						int k = 1;
						for (int i =0; i < 7; i ++) {
							if (i >= startDay-1) {
					%>
								<td><%=k%></td>				
			<%
								k += 1;
							} else {
				%>				
								<td></td>	
				<%				
							} 
						
						}
				%>
				</tr>
				
				<% 
				//lastDay
				int check = -1;
					for (int i = 0; i <= 4; i ++) {
				%>
				<tr>
				<%
						for (int m = k; m < k+7; m ++ ) {
				%>				
							<td><%=m %></td>
				<%			
						if (m == lastDay){
							check = 1;
							break;
						}
					}
				%>
				</tr>
				<%
						if (check == 1) {
							break;
						}
						k += 7;
					}
				%>
			</tbody>
		</table>
	</div>
	

</body>
</html>