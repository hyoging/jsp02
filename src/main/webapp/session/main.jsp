<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	main.jsp<br>
	
	<% if(session.getAttribute("nick") == null) {%>
		
		<script type="text/javascript">
			alert("로그인 대상만 접근");
			location.href="login.jsp";
		</script>
		<% 
		//response.sendRedirect("login.jsp");
	}
	%>
	
	
	<%= session.getAttribute("nick") %>님 환영합니다!!<br>
	<hr>
	<a href="logout.jsp">로그아웃</a>
	<a href="login.jsp">로그인 페이지 이동</a>
</body>
</html>