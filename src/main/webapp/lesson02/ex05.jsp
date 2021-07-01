<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Calendar" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Calendar</title>
</head>
<body>
	<%
		Calendar today = Calendar.getInstance();
		today.getTime();
		out.println(today);
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy년 MM월 dd일 HH:mm:ss");
		
		// Calendar -> Date 객체로 변환 후 format 적용
		out.println("오늘 날짜 :" + sdf.format(today.getTime()) + "<br>");
		
		SimpleDateFormat sdf2 = new SimpleDateFormat("yyyy년 MM월 dd일");
		// 어제 날짜 구하기
		Calendar yesterday = Calendar.getInstance();
		yesterday.add(Calendar.DATE, -1); // 하루 전
		out.println("어제 날짜:" + sdf2.format(yesterday.getTime()));
		
		
		//yesterday.add(Calendar.MONTH, -1); // 한달전
		//out.println("한달 전: "+ sdf2.format(yesterday.getTime()));
		
		//yesterday.add(Calendar.YEAR,-1); // 1년전
		//out.println("한달 전: "+ sdf2.format(yesterday.getTime()));
		
		// 두 날짜 비교
		// compareTo "2021-06-10" "2021-07-11" -> 1(앞에 있는게 더 크면) 0(같으면) -1(뒤가 더크면)
		today.compareTo(yesterday); // 기준값(today)가 더 크면 1, 같으면 0, 기준값이 작으면 -1
		int result = today.compareTo(yesterday);
		if (result > 0) {
			out.print("today가 더크다");
		} else if (result == 0) {
			out.print("두 날짜는 같다");
		} else {
			out.print("yesterday가 더크다.");
		}
		
	%>


</body>
</html>