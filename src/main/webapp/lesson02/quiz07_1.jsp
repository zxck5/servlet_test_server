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
		  
		  
		  for (int i = 0; i < list.size(); i ++) {
			 String menuName = null;
			 String store = null;
			 double point = 0;
			 
			 
			 String b = (String) list.get(i).get("menu");
			  if (menu.equals(b)) {
				  if (exception != null) {
					  double a = (double) list.get(i).get("point");
					  if (a >= 4.0) {
						 menuName = (String) list.get(i).get("menu");
						 point = a; 
						 
						  
					  } 
				  } else {
					  
				  }
				  
			  }
		  
		  
		  %>
		 
		  
		    <tr>
		      <th scope="row"><%= (i+1) %></th>
		      <th scope="row"><%= (i+1) %></th>
		      <th scope="row"><%= (i+1) %></th>
		      <td><%=  %> </td>
		    </tr>
		   
		  </tbody>
		  <% 
		  }
		  %>
		</table>		
	</div>
	
	

</body>
</html>