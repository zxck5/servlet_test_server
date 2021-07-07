package com.test.lesson04;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson04/ex02_insert")
public class Ex02Insert extends HttpServlet {
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String name = request.getParameter("name");
		String birth = request.getParameter("birth");
		String email = request.getParameter("email");
		String introduce = request.getParameter("introduce");
		
		MysqlService instance = MysqlService.getInstance();
		instance.connection(); // db연결
		//insert query 
		String query = "insert into `new_user`\r\n"
				+ "(`name`, `yyyymmdd`,`email`,`introduce`)\r\n"
				+ "values\r\n"
				+ "('" + name + "','" + birth + "','" + email + "','"+ introduce +"')";
				
		try {
			instance.update(query);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		instance.disconnect(); // db 연결 해제
		
		// 목록 화면 이동 = redirect 
		response.sendRedirect("/lesson04/ex02/ex02_1.jsp");
		
		
		
	}
}
