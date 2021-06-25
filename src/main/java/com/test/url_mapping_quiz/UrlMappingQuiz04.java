package com.test.url_mapping_quiz;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/quiz04")
public class UrlMappingQuiz04 extends HttpServlet {
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		out.print("<html><head><title>리스트 출력</title></head></html>");
		//<ul>
		//	<li></li>
		//</ul>
		for (int i = 0; i < 30; i ++) {
			out.println((i+1)+"번째 리스트");
			out.print("<li>" + (i+1) + "번째 리스트</li>");
			
			
		}
		
	}
}
