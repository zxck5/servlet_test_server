package com.test.url_mapping_quiz;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/quiz07")
public class UrlMappingQuiz07 extends HttpServlet {
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setContentType("text/html");
//		response.setCharacterEncoding("utf-8");
		
		String address = request.getParameter("address");
		String payCard = request.getParameter("payCard");
		String price = request.getParameter("price");
		
		
		PrintWriter out = response.getWriter();
//		int check = 0;
		
		out.print("<html><head><title></title></head><body>");
		
		if (address.startsWith("서울시") == false) {
//			check += 1;
			out.print("배달 불가 지역입니다");
		} else if (payCard.equals("신한카드")) {
			out.print("결제 불가 카드입니다");
		} else {
			out.print(address + "<b>배달 준비중</b><br>");
			out.print("결제카드"+payCard);
//			check += 1;
			
		}
//		if (check == 2) {
//		out.print(address);
//		out.print("배달 준비중");
//		out.print("결제금액 :"+ price);
//		}
//		
		out.println("</body></html>");
		
		
	}
	
}
