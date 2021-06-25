package com.test.url_mapping_quiz;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/quiz08")
public class UrlMappingQuiz08 extends HttpServlet{
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		String search = request.getParameter("search");
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		List<String> list = new ArrayList<>(Arrays.asList(
				"강남역 최고 맛집 소개 합니다.", 
				"오늘 기분 좋은 일이 있었네요.", 
				"역시 맛집 데이트가 제일 좋네요.", 
				"집에 가는 길에 동네 맛집 가서 안주 사갑니다.",
				"자축 저 오늘 생일 이에요."));
		
		out.print("<html><head><title>검색</title></head><body>");

		
//				char [] a = new char[list.get(i).length()];
//				for (int k = 0; k < a.length; k ++) {
//					a[k] = list.get(i).charAt(k);

		for (String text : list) {
			//out.print(text + "<br>");
			//풀이1)
//			int index = text.indexOf(search);
//			if (index > -1) {
//				StringBuffer sb = new StringBuffer();
//				sb.append(text);
//				sb.insert(index, "<b>"); // 예) |맛집 앞부분에 <b> 태그 추가
//				sb.insert(index + search.length() + 3, "</b>"); // <b> 맛집| 부분에 </b>추가. 키워드 단어 길이와 <b> -> 3을 더함
//				out.print(sb + "<br>");
//			}
			// 풀이2)
//			String[] words = text.split(search);
//			if (text.contains(search)) {
//				out.print(words[0] + "<b>" + search + "</b>" + words[1] + "<br>");
//			}
			
			// 풀이3)
//			if (text.contains(search)) {
//				text = text.replaceAll(search, "<b> + search + </b>");
//				out.print(text + "<br>");
//			}
			
		}
		out.print("</body></html>");

	}

}
