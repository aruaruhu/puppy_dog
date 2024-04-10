<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8"); 
	response.setContentType("text/html;charset=utf-8");
%>
<!DOCTYPE html>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />
    <link rel="stylesheet" href="../css/swiper.min.css">
    <link rel="stylesheet" href="../css/style.css" type="text/css"> 
    <script type="text/javascript" src="../js/jquery-3.7.1.min.js"></script>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <jsp:include page="./header_fin.jsp" flush="false"/>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	.discount-cost{
		color: black;
	}
</style>
</head>
<body>
<%
    Connection conn = null;
    Statement stmt = null;
    ResultSet rs = null;

    try {
        Class.forName("com.mysql.jdbc.Driver");
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb", "root", "mysql");

        stmt = conn.createStatement();
        rs = stmt.executeQuery("SELECT * FROM product ORDER BY pro_price ASC");
%>



<!-- ---------------------------------------------------------1번째 배너(BEST ITEM) 첫줄----------------------------------------------------------------------- -->
<div class="container text-center">
    <div class="row">
        <% while(rs.next()) { 
        	 String pro_img = rs.getString("pro_img");
             String imgUrl = request.getContextPath() + "/img/" + pro_img;
        %>
        
            <div class="col">
                <div class="card" style="width: 18rem;">
                    <a href="../goods_detail.jsp?pro_name=<%=rs.getString("pro_name")%>"><img src="<%=imgUrl%>" class="card-img-top" alt="..."></a>
                    <div class="card-body">
                        <p class="card-text"><small class="text-body-secondary"><%=rs.getString("pro_content")%></small></p>
                        <p class="card-title"><a href="./goods_detail.jsp" style="text-decoration:none; color:black;"><%=rs.getString("pro_name")%></a></p>
                        <hr>
                        <div class="text">
                            <p class="discount" style="color:green;"><%=rs.getString("pro_sale")%>%</p>
                            <p class="cost" style="color:gray; text-decoration:line-through;"><%=rs.getString("pro_price")%>원</p>
                            <p class="discount-cost"><%=(Integer.parseInt(rs.getString("pro_price"))*(100-Integer.parseInt(rs.getString("pro_sale")))/100)%>원</p>
                        </div>
                    </div>
                </div>
            </div>
        <% } %>
        </div>
    </div>
    
    
    <%
    } catch (SQLException e) {
%>
    <p>데이터베이스 연결에 문제가 발생했습니다.</p>
    <p><%= e.getMessage() %></p>
<%
    } finally {
        if (rs != null) try { rs.close(); } catch(SQLException e) {}
        if (stmt != null) try { stmt.close(); } catch(SQLException e) {}
        if (conn != null) try { conn.close(); } catch(SQLException e) {}
    }
%>
    <!-- ---------------------------------------------------------1번째 배너(BEST ITEM) 두번째줄----------------------------------------------------------------------- -->
    
    
</body>
</html>