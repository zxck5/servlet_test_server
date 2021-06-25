package com.test.url_mapping_quiz;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.util.Calendar;
import java.util.Date;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;



public class UrlMappingQuiz01 extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request,HttpServletResponse response) throws IOException {
		//한글 깨짐 방지 
//		response.setCharacterEncoding("utf-8");
		response.setContentType("text/plain");
		
		
		Date date = new Date();
		PrintWriter out = response.getWriter();
		
		SimpleDateFormat sdf = new SimpleDateFormat("오늘의 날짜는 yyyy년 MM월 dd일");
		
		out.println("오늘의 날짜는" + sdf.format(date));
		
		Calendar calendar = Calendar.getInstance();
		
		calendar.getTime();
		//sdf
		//HH : 0 -23
		//kk : 1 - 24
		//KK : 0 -11
		//hh : 1 - 12
		
		SimpleDateFormat sdf2 = new SimpleDateFormat("현재 시간은 HH시 mm분 ss초 입니다.");
		out.println(sdf2.format(date));
		out.println(sdf2.format(calendar.getTime()));
		
		
		
	}
	
}
