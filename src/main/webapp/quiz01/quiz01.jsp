<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% Integer count = (Integer) application.getAttribute("count"); 
	if(count == null){
		out.print(0);
	}
%>

	<table border="1">
		<tr>
			<td>제목</td> <td>조회수</td>
		</tr>
		<tr>
			<td><a href="board.jsp">안녕하세요</a></td> <td><%=application.getAttribute("count")%></td>
		</tr>
	</table>

</body>
</html>