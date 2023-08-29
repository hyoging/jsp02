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
	
	<%

	
		Connection con = DBConnect.getConnect();
		System.out.println("jsp =>" + con);
		
		String sql = "select * from student";
		PreparedStatement ps = con.prepareStatement(sql);
		ResultSet rs =  ps.executeQuery();
		 %>
		
	<table border="1">
		<tr>
			<td>학번</td> <td>이름</td><td>국어</td> <td>영어</td> <td>수학</td>
		</tr>
		<% while( rs.next() ){ %>
		<tr>
			<td><%= rs.getString("id") %></td> 
			<td><a href="info.jsp?id=<%= rs.getString("id") %>">  <%= rs.getString("name") %> </a></td>
			<td><%= rs.getString("kor") %></td>
			<td><%= rs.getString("eng") %></td>
			<td><%= rs.getString("math") %></td>
		</tr>
		<% } %>
	</table>
	
</body>
</html>