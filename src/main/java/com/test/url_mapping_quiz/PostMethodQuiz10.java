package com.test.url_mapping_quiz;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/quiz10")
public class PostMethodQuiz10 extends HttpServlet {
	
	// doPost 메소드 바깥쪽에 위치
	private static final Map<String, String> userMap =  new HashMap<>() {
	    {
	        userMap.put("id", "marobiana");
	        put("password", "qwerty1234");
	        put("name", "신보람");
	    }
	};
	
	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		
		out.print("<html><head><title>입사지원서</title></head><body>");
		
		if (userMap.get("id").equals(request.getParameter("id"))) {
			if (userMap.get("password").equals(request.getParameter("pw"))) {
				out.print(userMap.get("name") + "님 환영합니다");
			} else {
				out.print("패스워드 불일치");
			} 
		} else {
			out.print("아이디 불일치");
		}
		
		out.print("</body></html>");
		
		
		
		
		
		
		
	}






	private void put(String string, String string2) {
		// TODO Auto-generated method stub
		
	}

}
