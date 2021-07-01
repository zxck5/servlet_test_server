<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
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
	<%
		List<Map<String, Object>> list = new ArrayList<>();
	    Map<String, Object> map = new HashMap<String, Object>() {{ put("name", "버거킹"); put("menu", "햄버거"); put("point", 4.3); } };
	    list.add(map);
	    map = new HashMap<String, Object>() {{ put("name", "BBQ"); put("menu", "치킨"); put("point", 3.8); } };
	    list.add(map);
	    map = new HashMap<String, Object>() {{ put("name", "교촌치킨"); put("menu", "치킨"); put("point", 4.1); } };
	    list.add(map);
	    map = new HashMap<String, Object>() {{ put("name", "도미노피자"); put("menu", "피자"); put("point", 4.5); } };
	    list.add(map);
	    map = new HashMap<String, Object>() {{ put("name", "맥도날드"); put("menu", "햄버거"); put("point", 3.8); } };
	    list.add(map);
	    map = new HashMap<String, Object>() {{ put("name", "BHC"); put("menu", "치킨"); put("point", 4.2); } };
	    list.add(map);
	    map = new HashMap<String, Object>() {{ put("name", "반올림피자"); put("menu", "피자"); put("point", 4.3); } };
	    list.add(map);
	    
	    
	    String menu = request.getParameter("menu");
	    String exception= request.getParameter("exception");
	
	%>

	<div class="container">
		
		<h1 class="text-center">검색결과</h1>
		
		
		<table class="table text-center">
		  <thead>
		    <tr>
		      <th scope="col">메뉴</th>
		      <th scope="col">상호</th>
		      <th scope="col">별점</th>
		      
		      
		    </tr>
		  </thead>
		  <tbody>
		  
		  <% // while문
		  
		  
			 // 향상된 for문을 사용하는게 더 효율적이다.
		  for (int i = 0; i < list.size(); i ++) {
			 String menuName = null;
			 String store = null;
			 double point = 0;
			 int check = -11;
			 
			 
			 //String b = (String) list.get(i).get("menu");
			  if (menu.equals(list.get(i).get("menu"))) {
				  double a = (double) list.get(i).get("point");
				  if (exception != null) {
					  if (a > 4.0) {
						 check = 1; 
						 store = (String) list.get(i).get("name");
						 point = a; 
						 menuName = (String) list.get(i).get("menu");
						 
						  
					  } 
				  } else {
					  
					  	check = 1;
					  	store = (String) list.get(i).get("name");
						point = a; 
						menuName = (String) list.get(i).get("menu");
						  
					  
				  }
				  
			  }
		 	if (check == 1) {
			  
		  %>
		 		
		 	
		  
		    <tr>
		      <th scope="row"><%= menuName %></th>
		      <td><%= store %> </td>
		      <td><%= point %> </td>
		      
		    </tr>
		   
		  </tbody>
		  <% 
		 	}
		  }
		  %>
		</table>		
	</div>
	
	

</body>
</html>