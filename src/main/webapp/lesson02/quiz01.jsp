<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>    
<%@ page import="java.util.Arrays" %>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%! 
		public int addAll(int n) {
			int sum = 0;
			for (int i = 0; i < n; i ++) {
				sum += i+1;
			}
			return sum;
		}
			
		public int addAll(int[] scores) {
			int sum = 0;
			for (int i = 0; i < scores.length; i ++) {
					sum += scores[i];
			}
			return sum;
		}
		public double average(int[] scores){
			int av =0;
			double ave = 0;
			for (int i = 0; i < scores.length; i ++) {
				av += scores[i];
			}
			ave = av/scores.length;
			return ave;
		}
	
	%>
	
	
	<% //1부터 n까지의 합계를 구하는 함수 
	int[] scores = {80, 90, 100, 95, 80};
	List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
	
	int score = 0;
	for (int i = 0; i < scoreList.size(); i ++) {
		if (scoreList.get(i).equals("O")) {
			score += 10;
		}
	}
	
	String birthDay = "20010820";
	
	int year = 2021;
	String birth = birthDay.substring(0,4);
	int birthYear = Integer.parseInt(birth);
	
	int age = year - birthYear + 1;
	
	
	
	%>
	<%= addAll(50) %>
	
	<%= "평균"+ average(scores) %>
	
	<%="answer="+addAll(scores)/scores.length%>
	
	<%="점수="+score %>
	
	<%="나이="+ age %>
	
	
	
	

</body>
</html>