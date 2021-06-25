package com.test.url_mapping_quiz;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/quiz09")
public class UrlMappingQuiz09 extends HttpServlet {
	
	// doPost 메소드 바깥쪽에 위치
	private final Map<String, String> userMap =  new HashMap<>() {
	    {
	        put("id", "marobiana");
	        put("password", "qwerty1234");
	        put("name", "신보람");
	    }
	};
	
	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
	
		
		String name = request.getParameter("name");
		String text = request.getParameter("selfIntroduce");
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		out.print(name);
		out.print(text);
		
		out.print("<html><head><title>입사지원서</title></head><body>");
		
		out.print("<b>"+name+"</b>" + "님 지원이 완료 되었습니다.");
		out.print("<h4>지원 내용</h4>");
		out.print(text);
		
		
		if (userMap.get("id").equals(request.getParameter("id"))) {
			if (userMap.get("password").equals(request.getParameter("pw"))) {
				out.print(userMap.get("name") + "님 환영합니다");
			} else {
				out.print("패스워드 불일치");
			} 
			out.print("아이디 불일치");
		}
		
		out.print("</body></html>");
		
		
		
		
		
		
		
	}






	private void put(String string, String string2) {
		// TODO Auto-generated method stub
		
	}

}
