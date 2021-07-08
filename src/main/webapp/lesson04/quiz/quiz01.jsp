<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>즐겨찾기 추가</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</head>
<body>
	<%-- 
		Flow
		
		유저 추가) ex02.jsp (input 폼 화면) -> ex02_insert(서블릿, insert 쿼리) -> ex02_1.jsp(유저 목록, select 쿼리)
	
	 --%>
	<div class="container">
	
		<form method="post" action="/lesson04/quiz01_insert">
			<h2> 즐겨찾기 추가</h2>
			
				<label for="name">사이트명:</label>
				<input type="text" name="name" id= "name" class="form-control col-3">
			
			
			
				<label for="url">사이트 주소:</label>
				<input type="text" name="url" id="url" class="form-control col-8"> 
			
			
			
				<input type="submit" class="btn btn-success" value="추가">
			
		
		
		</form>
	</div>


</body>
</html>