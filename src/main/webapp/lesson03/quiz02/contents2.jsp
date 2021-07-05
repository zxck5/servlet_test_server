<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>    
<%@ page import="java.util.ArrayList" %>    
<%@ page import="java.util.Map" %>    
<%@ page import="java.util.HashMap" %>    

    
    
<%
// 아티스트 정보 

    Map<String, Object> artistInfo = new HashMap<>();
    artistInfo.put("name", "아이유");
    artistInfo.put("debute", 2008);
    artistInfo.put("agency", "EDAM엔터테인먼트");
    artistInfo.put("photo", "https://w.namu.la/s/3ca92265fffe4dd38a729df3df7dd41ea3ef12b72383958c8fd0bea79ffaa0331810fb8bea8ba09156d69e5f792eef522dd8eb932389ed972ff233c2c9adb34fc92d9ebceb03cdd9ae4ff0093f88e0e7bbe21d3251555878b233fa2a5f6af14544c8dd26f4cb608d0b0101c91fc37dce");


// 아이유 노래 리스트 
    List<Map<String, Object>> musicList = new ArrayList<>();

    Map<String, Object> musicInfo = new HashMap<>();
    musicInfo.put("id", 1);
    musicInfo.put("title", "팔레트");
    musicInfo.put("album", "Palette");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/b/b6/IU_Palette_final.jpg");
    musicInfo.put("time", 217);
    musicInfo.put("composer", "아이유");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 2);
    musicInfo.put("title", "좋은날");
    musicInfo.put("album", "Real");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/3/3c/IU_-_Real.jpg");
    musicInfo.put("time", 233);
    musicInfo.put("composer", "이민수");
    musicInfo.put("lyricist", "김이나");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 3);
    musicInfo.put("title", "밤편지");
    musicInfo.put("album", "palette");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/b/b6/IU_Palette_final.jpg");
    musicInfo.put("time", 253);
    musicInfo.put("composer", "제휘,김희원");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 4);
    musicInfo.put("title", "삐삐");
    musicInfo.put("album", "삐삐");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://ww.namu.la/s/5ea8ba97baf8af3cc13f2972d9d23bcd17e19b8b8a96ce86d50c4bd03ad4df30321fc7e012738ad4b00c50642195ef7a68ff484ad760b15ff46bb1dc45ffb3fc399e4345c5d4dd2240820b59f3a573a57f84b8a6a2e4fb26ce5e81ad66d85f77debc979900275f6cf7a51386c8c39aa9");
    musicInfo.put("time", 194);
    musicInfo.put("composer", "이종훈");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 5);
    musicInfo.put("title", "스물셋");
    musicInfo.put("album", "CHAT-SHIRE");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://w.namu.la/s/4a817b8f4ec9caca4027a6991651a401d683a7691f1926bd60e59908f306d439f7cc251af5ef263a6f0a249e831d5d9cf641855bf590dadd86869ff941aad8dc236bc91bac89f84cff60c981d8d6c85f57a2ff4df00b5efe3bbc10e9745ce13571eda48f1912435423317450475d6ffe");
    musicInfo.put("time", 194);
    musicInfo.put("composer", "아이유,이종훈,이채규");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 6);
    musicInfo.put("title", "Blueming");
    musicInfo.put("album", "Love poem");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/6/65/%EC%95%84%EC%9D%B4%EC%9C%A0_-_Love_poem.jpg");
    musicInfo.put("time", 217);
    musicInfo.put("composer", "아이유,이종훈,이채규");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);
%>    

<%
	String songTitle = request.getParameter("songTitle"); 
	
%>
    
<div>


<h3>곡 정보</h3>

<%
	for (Map<String, Object> items : musicList) {
		
		if (songTitle.equals((String)items.get("title"))) {
			%>
			
			
			<img src="<%=items.get("thumbnail")%>" alt="썸네일" height=100px></img>
			<h2><%= items.get("title") %></h2>
			<%= items.get("singer")%><br>
			앨범<%= items.get("album") %><br>
			<% int a = (int)items.get("time");
				int minute = a / 60;
				int seconds = a % 60;
			%>
			재생 시간 <%= minute + ":" + seconds %><br>
			
			작곡가 <%= items.get("composer") %><br>
			작사가 <%= items.get("lyricist") %><br>
			
			
			<%
		}
	}
%>

<h3>가사</h3>
가사 정보 없음


<form method="get" action="quiz02.jsp">
	<button type="submit" class="btn">뒤로가기</button>
</form>
</div>