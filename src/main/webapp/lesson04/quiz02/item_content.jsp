<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.test.common.MysqlService" %>
<%@ page import="java.sql.ResultSet" %>
<%
	//db 연동
	MysqlService mysqlService = MysqlService.getInstance();
	mysqlService.connection();	
	
	String query = "select A.*, B.* from `seller` AS A left join `used_goods` AS B on A.id = B.sellerId";
	
	
	ResultSet resultSet = mysqlService.select(query);
	

	
%>
    
    
<section>
	<div class= "item_content">
		<h1>물건올리기</h1>
			
		<%-- TODO::: action채워야됨. /lesson04/quiz02_insert --%>
		<form method="get" action="/lesson04/quiz02_insert">
			<div class=d-flex>
			
				<select name="nickname">
				<% 
					while (resultSet.next()) {
						
				%>
					<option><%=resultSet.getString("nickname") %></option>
				<%
					}	
				%>
					
				</select>
				<div>
				
				</div>
				<input type="text" class="form-control" name="title" placeholder="제목">
				
				<input type="text" class="form-control" name="price" placeholder = "가격">
				
				
			
			</div>
				<textarea class="form-control" name="description" rows="8" placeholder = "내용 입력"></textarea>
				<label for="url">이미지 url</label>
				<input type="text" class="form-control" name="url">
				
				<input type="submit" class="btn btn-secondary" value="저장">
		</form>
		
		
		
		
		
		
	</div>
</section>

<%
	mysqlService.disconnect();
%>