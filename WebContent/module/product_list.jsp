<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
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
                    <a href="./goods_detail.jsp?pro_name=<%=rs.getString("pro_name")%>"><img src="<%=imgUrl%>" class="card-img-top" alt="..."></a>
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
    <!-- 페이지네이션 영역 -->
    		<nav aria-label="Search results pages">
				 <ul class="pagination justify-content-center first_pagination">
				   <li class="page-item disabled">
				     <a class="page-link" href="#" aria-label="Previous">
				       <span aria-hidden="true">&laquo;</span>
				     </a>
				   </li>
				   <li class="page-item active"><a class="page-link" href="MainPage.jsp">1</a></li>
				   <li class="page-item"><a class="page-link" href="MainPage2.jsp">2</a></li>
				   <li class="page-item"><a class="page-link" href="MainPage3.jsp">3</a></li>
				   <li class="page-item">
				     <a class="page-link" href="MainPage2.jsp" aria-label="Next">
				       <span aria-hidden="true">&raquo;</span>
				     </a>
				   </li>
				 </ul>
			</nav>
			
<script type="text/javascript">

	document.addEventListener("DOMContentLoaded", function () {
		
		// 기본 페이지
		let pageToInclude = "MainPage.jsp"; 
		
		$(".first_pagination .page-link").click(function () {
			
			switch($(this).text()) {
			case "1":
				pageToInclude = "MainPage.jsp";
				break;
			case "2":
				pageToInclude = "MainPage2.jsp";
				break;
			case "3":
				pageToInclude = "MainPage3.jsp";
				break;
			}
			// 선택된 페이지를 동적으로 포함
	        pageContext.include(pageToInclude);
		});
	});
	
</script>
    
    <hr>
    
</body>
</html>