package com.test.lesson04;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson04/quiz01_insert")
public class Quiz01_insert extends HttpServlet {
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String name = request.getParameter("name");
		String url = request.getParameter("url");

		
		MysqlService instance = MysqlService.getInstance();
		instance.connection(); // db연결
		//insert query 
		String query = "insert into `favorites`\r\n"
				+ "(`name`, `url`)\r\n"
				+ "values\r\n"
				+ "('" + name + "','" + url +"')";
				
		try {
			instance.update(query);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		instance.disconnect(); // db 연결 해제
		
		// 목록 화면 이동 = redirect 
		response.sendRedirect("/lesson04/quiz/quiz01_1.jsp");
		
		
		
	}
}
