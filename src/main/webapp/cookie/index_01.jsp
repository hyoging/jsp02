<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	index.jsp<br>
	<h1>care lab</h1>
	<%
		boolean bool = true;
		Cookie[] cookieArr = request.getCookies();
		if(cookieArr != null){
			for(Cookie c : cookieArr){
				if(c.getName().equals("myCookie")){
					bool=false;
				}
			}
		}
	%>
	
	<%if(bool){ %>
		<script type="text/javascript">
			window.open("popup01.jsp", "", "width=300,height=300");
		</script>
	<%} %>
</body>
</html>