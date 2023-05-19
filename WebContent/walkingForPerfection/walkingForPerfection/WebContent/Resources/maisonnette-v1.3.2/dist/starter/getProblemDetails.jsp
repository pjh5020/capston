<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.net.HttpURLConnection, java.io.BufferedReader, java.io.InputStreamReader, java.net.URL" %>

<%
  // 프로그래머스 API 요청 URL
  String apiUrl = "https://api.programmers.co.kr/{version}/problems/{problem_id}";



  // 프로그래머스 API 키
  String apiKey = "YOUR_API_KEY";

  // 클릭한 링크에서 문제 ID를 가져옴 (예: playCodingPage.html?problem_id=1)
  String problemId = request.getParameter("problem_id");

  // API 요청 URL 생성
  String urlStr = apiUrl.replace("{version}", "1").replace("{problem_id}", problemId);

  // API 요청 헤더 설정
  URL url = new URL(urlStr);
  HttpURLConnection conn = (HttpURLConnection) url.openConnection();
  conn.setRequestMethod("GET");
  conn.setRequestProperty("Authorization", "Bearer " + apiKey);

  // API 응답 받아오기
  int responseCode = conn.getResponseCode();
  if (responseCode == HttpURLConnection.HTTP_OK) {
    // 응답 데이터 읽기
    BufferedReader reader = new BufferedReader(new InputStreamReader(conn.getInputStream()));
    String line;
    StringBuilder responseData = new StringBuilder();
    while ((line = reader.readLine()) != null) {
      responseData.append(line);
    }
    reader.close();

    // 응답 데이터 처리 (예: JSON 파싱 등)
    String responseDataStr = responseData.toString();
    // 데이터 활용을 위한 추가 처리

    // JSP 변수에 데이터 저장
    request.setAttribute("problemDetails", responseDataStr);
  } else {
    // API 요청이 실패한 경우 처리
    // 오류 메시지 출력 등
  }

  // 연결 종료
  conn.disconnect();
%>

<!-- 문제 정보를 표시하거나 활용 -->
<div>
  문제 정보: <%= request.getAttribute("problemDetails") %>
</div>