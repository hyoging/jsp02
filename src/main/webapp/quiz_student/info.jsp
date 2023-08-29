<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="dao.DBConnect"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>인적 사항</h1>
	
	
	<%
	
		Connection con = DBConnect.getConnect();
		System.out.println("jsp =>" + con);
		System.out.println(request.getParameter("id"));
		
		String sql = "select * from student where id = "+request.getParameter("id");
		PreparedStatement ps = con.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();
		 
		  %>
		<% while(rs.next()) {%>
		
		
		학번 : <%= rs.getString("id") %><br>
		이름 : <%= rs.getString("name") %><br>
		국,영,수 : <%= rs.getString("kor") %> , <%= rs.getString("eng") %> ,<%= rs.getString("math") %><br>
		
		<% } %>
		
		<a href="student.jsp">뒤로</a>
		

</body>
</html>