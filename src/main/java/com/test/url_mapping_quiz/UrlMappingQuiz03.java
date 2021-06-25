package com.test.url_mapping_quiz;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/quiz03")
public class UrlMappingQuiz03 extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		out.print("<html><head><title>뉴스 기사 출력</title></head><body>");
		out.print("<h1>[단독] 고양이가 야옹해</h1>");
		out.print("기사 입력 시간 : 2021/35/23 11:35:32");
		out.print("<br></br>");
		out.print("끝");
		out.print("</body></html>");
		
		
	}

}
