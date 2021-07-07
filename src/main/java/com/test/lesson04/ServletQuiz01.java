package com.test.lesson04;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/db/quiz01")
public class ServletQuiz01 extends HttpServlet {
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/plain");
		PrintWriter out = response.getWriter();
		
		MysqlService instance = MysqlService.getInstance();
		instance.connection();
		
		try {
			// insert
			String query = "insert into `real_estate` (`realtorId`,`address`,`area`,`type`,`price`,`rentPrice`)\r\n"
					+ "values\r\n"
					+ "(3, '헤라펠리스 101동 5305호', 350, '매매', 1500000, null);";
			instance.update(query);
			
			//select
			String selectQuery = "select * from `real_estate` \r\n"
					+ "order by id desc\r\n"
					+ "limit 10;";
			instance.select(selectQuery);
			ResultSet resultSet = instance.select(selectQuery);
			
			
			while (resultSet.next()) {
				out.println("매물 주소 : "+resultSet.getString("address") + ", 면적: "+resultSet.getInt("area")+", 타입: "+resultSet.getString("type"));
			}
			
			
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
		
		
		instance.disconnect(); // db연결 해제
		
	}
	
	
}
