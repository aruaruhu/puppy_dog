<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
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

<!-- ---------------------------------------------------------BEST ITEM----------------------------------------------------------------------- -->
    <hr>
    <div class="BESTITEM" style="text-align:center">
        <h2>Best Item</h2>
        <p class="card-text"><small class="text-body-secondary">Anniversary Sale early</small></p>
    </div>
    <br><br>
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
                        <p class="card-text"><small class="text-body-secondary"><%=	rs.getString("pro_content")%></small></p>
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
				   <li class="page-item">
				     <a class="page-link" href="MainPage.jsp" aria-label="Previous">
				       <span aria-hidden="true">&laquo;</span>
				     </a>
				   </li>
				   <li class="page-item"><a class="page-link active" href="MainPage.jsp">1</a></li>
				   <li class="page-item active"><a class="page-link" href="MainPage2.jsp">2</a></li>
				   <li class="page-item"><a class="page-link" href="MainPage3.jsp">3</a></li>
				   <li class="page-item">
				     <a class="page-link" href="MainPage3.jsp" aria-label="Next">
				       <span aria-hidden="true">&raquo;</span>
				     </a>
				   </li>
				 </ul>
			</nav>
			
<script type="text/javascript">

	document.addEventListener("DOMContentLoaded", function () {
		
		// 기본 페이지
		let pageToInclude = "MainPage2.jsp"; 
		
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
        <!-- ---------------------------------------------------------2번째 배너----------------------------------------------------------------------- -->
    <!-- 메인 아이템 하단 광고 이미지 -->
    <div class="container text-center">
        <table class="second_banner_ad" style="margin: 0 auto; border-collapse: collapse;">

            <!-- 좌측 테이블 -->
            <tr>
                <tr>
                    <td style="width: 50%; height: 100px; position: relative;">
                        <a href="" style="position: relative; display: block; width: 100%; height: 100%; text-align: left;">
                            <div style="width: 100%; height: 100%;" >
                                <img src="./img/사진5.jpg" alt="..." style="width: 100%; height: 100%; object-fit: cover;">
                                <div style="position: absolute; top: 75%; left: 60%; transform: translate(-50%, -50%); color: black; text-align: left; width: 70%; height:70%;">
                                    <h5 style="font-weight: bold; margin: 0; color: black;">루나 베이직 물병식기</h5>
                                    <img src="./img/icon-lg.png" style="width: 30%; height: 10%; display: inline-block; margin-top: 5px;">
                                    <p style ="color: black;">보급형 물병은 퍼피의 체형에 맞게 높이 조절 가능</p>
                                    <p style ="color: black;">모든 구성품 분리가 가능해 세척 용이</p>
                                </div>
                            </div>
                        </a>
                    </td>
            
                <!-- 우측 테이블 -->
                <td colspan="4">
                    <!-- 우측 컨텐츠를 위한 중첩된 테이블 -->
                    <table style="width: 100%; height: 100px; border-collapse: collapse;">
                        <!-- 1열 이미지 -->
                        <tr>
                            <td>
                                <a href="" style="position: relative; display: block; width: 100%; height: 100%; text-align: left; background-color: #f9fafc;;">
                            <div style = "width: 70%; height: 70%; position: absolute; top: 60%; left: 50%; transform: translate(-50%, -50%); color: black;" >
                                <h5 style = "font-weight:bold; color: black;">반자동 급식</h5>
                                <img src = "./img/icon-lg.png" style = "width:30%; height:10%; display:inline-block;">
                                <p style ="color: black;">먹은 만큼 사료가 나와 외출 시에도 끼니 걱정 NO!</p>
                                <p style ="color: black;">반려동물이 자율적으로 먹을 수 있어요~</p>
                        </div>
                        </a>
                            <!-- hover 이미지 -->
                            <td>
                                <div class="image-container">
                                    <img src="./img/사진6.jpg" class="second_banner_ad_img" alt="...">
                                    <a href="">
                                        <!-- hover시 나타나는 컨텐츠들 -->
                                        <div class="second_banner_ad_content">
                                            <p>MORE VIEW</p>
                                        </div>
                                    </a>
                                </div>
                            </td>
                        </tr>

                        <!-- 2열 이미지 -->
                        <tr>
                            <!-- hover 이미지 -->
                            <td>
                                <div class="image-container">
                                    <img src="./img/사진7.jpg" class="second_banner_ad_img" alt="...">
                                    <a href="">
                                        <!-- hover시 나타나는 컨텐츠들 -->
                                        <div class="second_banner_ad_content">
                                            <p>MORE VIEW</p>
                                        </div>
                                    </a>
                                </div>
                            </td>
                            <td>
                                <a href="" style="position: relative; display: block; width: 100%; height: 100%; text-align: left; background-color: #f9fafc;"  >
                                    <div style = "width: 70%; height: 70%; position: absolute; top: 55%; left: 50%; transform: translate(-50%, -50%); color: black;" >
                                        <h5 style = "font-weight:bold; color: black;">반려동물 접이식 밥그릇 2p 세트</h5>
                                        <img src = "./img/icon-lg.png" style = "width:30%; height:10%; display:inline-block;">
                                        <p style ="color: black;">늘렸다 줄였다~ 높이 조절로 편안하게</p>
                                        <p style ="color: black;">반려동물 휴대용 접이식 밥그릇</p>
                                </div>
                                </a>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </div>
    
    <hr>
  <!-- ---------------------------------------------------------3번째 배너----------------------------------------------------------------------- -->
    <div class="third_banner_ad">
        <div class="third_banner_ad_content">
            <small>DETAIL INFO</small><br>
            <h2 style="font-weight:bold;">고양이 캣타워</h2>
            <p class="a">높은 곳을 좋아하는 고양이들을 위한<br> 스크래처 고양이 캣타워</p>
            <a href="" style="text-decoration: none; color:white;">
                <button class="btn">SHOP NOW</button>
            </a>
        </div>
        <img src="./img/긴사진.jpg" class="third_banner_ad_img">
    </div>
    <hr>
</body>
</html>