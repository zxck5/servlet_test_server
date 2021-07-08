<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.test.common.MysqlService" %>
<%@ page import="java.sql.ResultSet" %>
<%
	//db 연동
	MysqlService mysqlService = MysqlService.getInstance();
	mysqlService.connection();	
	
	String query_seller = "select * from `seller`";
	String query_usedgoods = "select * from `used_goods`";
	
	ResultSet resultSet = mysqlService.select(query_seller);


%>


<section class="list_content">
	<table class="table">
		
		
		
	</table>
	
	
</section>

<% 
	mysqlService.disconnect();
%>