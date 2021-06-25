package com.test.url_mapping_quiz;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/quiz05")
public class UrlMappingQuiz05 extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String numberParam = request.getParameter("number");
		Integer number = Integer.valueOf(numberParam);
		response.setContentType("text/html");
		
		
		PrintWriter out = response.getWriter();
		out.print("<html><head><title>구구단</title></head><body><ul>");
		for (int i = 0; i < 9 ; i ++) {
			int answer = Integer.valueOf(numberParam)*(i+1);
			
				out.println("<li>"+number+"x"+(i+1)+"="+answer+"</li>" );
			
		}
		out.print("</ul></body></html>");
		
		
	}
}
