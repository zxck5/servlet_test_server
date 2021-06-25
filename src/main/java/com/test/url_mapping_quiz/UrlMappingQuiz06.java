package com.test.url_mapping_quiz;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/quiz06")
public class UrlMappingQuiz06 extends HttpServlet{
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String number1Param = request.getParameter("number1");
		String number2Param = request.getParameter("number2");
		
		Integer number1 = Integer.valueOf(number1Param);
		Integer number2 = Integer.valueOf(number2Param);
		
		int addition = number1 + number2;
		int substraction;
		if (number1 > number2) {
			substraction = number1 - number2;
		} else {
			substraction = number2 - number1;
		}
		int multiplication = number1*number2;
		
		int division = 0;
		if (number2 != 0) {
			division = number1/number2;
		} else if (number1 != 0) {
			division = number2/number1;
		}
		
		response.setContentType("text/json");
		PrintWriter out = response.getWriter();
		
//		{"addition":1570,"substraction":...., "key" : value }
		
		out.println("{\"addition\":" + addition +",\"substraction\":" + substraction +",\"multiplication\":"+ multiplication+", \"division\":" + division+ "}");
	
		
		
	}
}
