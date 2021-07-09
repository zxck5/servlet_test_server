package com.test.lesson04;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson04/quiz02_insert")
public class Quiz02_insert extends HttpServlet {
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String nickname = request.getParameter("nickname"); //seller
		String title = request.getParameter("title"); // usedgoods
		Integer price = Integer.parseInt(request.getParameter("price")); // usedgoods
		String description = request.getParameter("description"); //usedgoods
		String url = request.getParameter("url"); //usedgoods
		

		
		MysqlService instance = MysqlService.getInstance();
		instance.connection(); // db연결
		//insert query 
		String query ="select * from `seller`";
		ResultSet resultSet;
		Integer sellerId = null ;
		
		try {
			resultSet = instance.select(query);
				while (resultSet.next()) {
					if (resultSet.getString("nickname").equals(nickname)) {
						sellerId= resultSet.getInt("id");
						break;
					}
					
				}
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
		
		
		
		if (sellerId != null) {
			
			
			
			query = "\r\n"
						+ "insert into `used_goods`\r\n"
						+ "(`sellerId`, `title`,`price`,`description`,`picture`)\r\n"
						+ "values \r\n"
						+ "(" + sellerId+ ",'" + title +"',"+ price+",'" + description + "','" +url + "')";
			System.out.println(query);
			
			
			
			try {
				instance.update(query);
			} catch (SQLException e) {
					// TODO Auto-generated catch block
				e.printStackTrace();
			}
				
				
		}
		
		
		instance.disconnect(); // db 연결 해제
		
		// 목록 화면 이동 = redirect 
		response.sendRedirect("/lesson04/quiz02/list_template.jsp");
		
		
		
	}
}
