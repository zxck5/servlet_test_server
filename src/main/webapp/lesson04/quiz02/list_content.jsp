<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.test.common.MysqlService" %>
<%@ page import="java.sql.ResultSet" %>
<%
	//db 연동
	MysqlService mysqlService = MysqlService.getInstance();
	mysqlService.connection();	
	
	String query = "select A.*, B.* from `seller` AS A inner join `used_goods` AS B on A.id = B.sellerId";
	
	
	ResultSet resultSet = mysqlService.select(query);

	
%>


<section class="list_content">
	<%
		int i = 0;
		while(true) {
			if (resultSet.next() == false) {
				break;
			}
			
			//if (i % 3 != 0) {
			
				
			%>
				
				<%=resultSet.getString("title") %>
				<%=resultSet.getInt("price") + "원" %>
				<%=resultSet.getString("nickname") %>
				
			<%
			//}
			
			i += 1;
			if (i % 3 == 0) {
				%>
				<br>
				<%
			}
			//System.out.println(i);
		
		}
		
	%>
	
	
</section>

<% 
	mysqlService.disconnect();
%>