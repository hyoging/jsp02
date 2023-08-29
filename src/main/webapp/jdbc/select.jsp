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
		
		String sql = "select * from members";
		PreparedStatement ps = con.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();
		while( rs.next() ){ %>
			id : <%= rs.getString("id") %><br>
			pwd : <%= rs.getString("pwd") %><br>
			name : <%= rs.getString("name") %><br>
			addr : <%= rs.getString("addr") %><br>
			tel : <%= rs.getString("tel") %>
			<hr>
		<% } %>
		<a href ="insert.jsp">데이터 추가</a>
		
		
</body>
</html>