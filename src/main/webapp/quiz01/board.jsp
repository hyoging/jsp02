<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>게시글 입니다</h1>
	<h3>공지사항 입니다</h3>
	
	jsp application을 이용한<br>조회수 올리기 문제입니다<br>
	
	<% Integer count = (Integer) application.getAttribute("count");
		count++;
	application.setAttribute("count", count); %>
	
	
	<a href="quiz01.jsp">돌아가기</a>
</body>
</html>