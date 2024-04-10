<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Timestamp"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8"); 
	response.setContentType("text/html;charset=utf-8");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 상품 등록 확인 페이지 -->
<title>상품 등록 확인</title>
</head>
<body>
	<%
	
	String savePath = application.getRealPath("/img");
	int maxSize = 5*1024*1024; // 5MB

	MultipartRequest multi = new MultipartRequest(request, savePath, maxSize, "UTF-8", new DefaultFileRenamePolicy());
	
	String pro_num = multi.getParameter("pro_num");
	String pro_name = multi.getParameter("pro_name");
	String pro_kind = multi.getParameter("pro_kind");
	String pro_content = multi.getParameter("pro_content");
	String pro_img = multi.getFilesystemName("pro_img");
	String pro_price = multi.getParameter("pro_price");
	String pro_sale = multi.getParameter("pro_sale");
	
	
	try {
	    Class.forName("com.mysql.jdbc.Driver");
	    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb", "root", "mysql");
	    String query = "INSERT INTO product (pro_num, pro_name, pro_kind, pro_content, pro_img, pro_price, pro_sale, pro_regdate) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";

	    PreparedStatement pstmt = conn.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);
	    pstmt.setString(1, pro_num);
	    pstmt.setString(2, pro_name);
	    pstmt.setString(3, pro_kind);
	    pstmt.setString(4, pro_content);
	    pstmt.setString(5, pro_img);
	    pstmt.setString(6, pro_price);
	    pstmt.setString(7, pro_sale);
	    
	    Timestamp reg = new Timestamp(System.currentTimeMillis());
	    pstmt.setTimestamp(8, reg);
	    
	    int result = pstmt.executeUpdate();

	    if(result > 0) {
	        out.println("<script>alert('상품 등록 성공'); location.href='MainPage2.jsp';</script>");
	    } else {
	        out.println("<script>alert('상품 등록 실패'); history.go(-1);</script>");
	    }

	    pstmt.close();
	    conn.close();
	} catch (Exception e) {
	    e.printStackTrace();
	    out.println("<p>Error: " + e.getMessage() + "</p>");
	}
	
	%>
</body>
</html>