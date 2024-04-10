<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8"); %>    
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />
    <link rel="stylesheet" href="css/swiper.min.css">
    <link rel="stylesheet" href="css/style.css" type="text/css"> 
    <script type="text/javascript" src="js/jquery-3.7.1.min.js"></script>
    <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <jsp:include page="./module/header_fin.jsp" flush="false"/>
<title>snack_all</title>

<style type="text/css">

*{padding: 0;margin: 0;}

.path_container .col_1st {
	margin: 10px 0px;
}

.path_container .col_1st button {
	border: none;
	background: white;
}

.path_container .col_1st .btn_middle {
	color: rgba(0, 0, 0, 0.3);
}

.path_container .col_1st .btn_snack {
	color: rgba(0, 0, 0, 0.8);
	font-size: 11px;
	font-weight: bolder;
}

.path_container .col_2nd .path_title {
 	margin: 50px 0px;
 	
}

.path_container .col_2nd .path_title p{
	font-weight: bolder;
 	font-size: 21px;
 	color: black;
}

.path_container .col_3rd {
	margin-bottom: 80px;
}

.path_container .col_3rd .path_btns button{
	border: none;
	background: white;
	color: rgba(0, 0, 0, 0.4);
	margin: 0 10px;
	font-weight: 900;
	font-size: 14px;
	padding-bottom: 5px;
}

.path_container .col_3rd .path_btns button:nth-child(5) {
	color: black;
	border-bottom: 2px solid black;
}


.path_container .col_4th .product_list{
	border-bottom: 3px solid rgba(0, 0, 0, 0.3);
	display: flex;
	justify-content: space-between;
	line-height: 20px;
	vertical-align: middle;
	padding-bottom: 5px;
	
}

.path_container .col_4th .product_list .left {
	display: inline-block;
	text-align: left;
}

.path_container .col_4th .product_list .right {
	display: inline-block;
	text-align: right;
	
}

.path_container .col_4th .product_list .left_inner_part {
	display: inline-block;
	border-bottom: 2px solid black;
}


.path_container .col_4th .product_list .left_inner_part span:first-child {
	font-size: 13px;
	font-weight: 600;
	color: rgba(0, 0, 0, 0.6)
}

.path_container .col_4th .product_list .left_inner_part span:last-child {
	font-size: 15px;
	font-weight: 800;
}

.path_container .col_4th .product_list .left > span {
	color: rgba(0, 0, 0, 0.4);
	font-size: 11px;
	font-weight: 500;
}

.path_container .col_4th .product_list .right button:first-child {
	background: white;
	border: none;
	
}

.path_container .col_4th .product_list .right button:first-child span{
	font-size: 10px;
	font-weight: 600;
	padding-right: 10px;
}

.path_container .col_4th .product_list .right button:last-child {
	border: 1px solid rgba(0, 0, 0, 0.3);
	background: white;
	border-radius: 3px;
	font-size: 9px;
	padding: 0px 3px;
	color: rgba(0, 0, 0, 0.7);
	font-weight: 700;
}

.path_container .col_4th .product_list .right button:last-child:hover{
	background: rgba(0, 0, 0, 0.8);
	color: white;
	font-weight: 600;
}

.path_container .fifth_row {
	line-height: 25px;
	position: relative;
	top: 6px;
}


.path_container .fifth_row .col_1st {
	display: inline-block;
	text-align: left;
	margin-left: 10px;
}

.path_container .fifth_row .col_2nd {
	display: inline-block;
	text-align: right;
}

.path_container .fifth_row .col_1st span{
	font-size: 11px;
	font-weight: 600;
	color: rgba(0, 0, 0, 0.4);
}

.path_container .fifth_row .col_1st span:nth-of-type(2) {
	color: rgb(051, 204, 153);
	font-size: 13px;
}

.path_container .fifth_row .col_2nd .arrange_btns button{
	background: white;
	color: rgba(0, 0, 0, 0.4);
	border: none;
	font-weight: 700;
	font-size: 11px;
	margin: 0px 8px;
}

.path_container .fifth_row .col_2nd .arrange_btns button:hover{
	color: rgb(051, 204, 153);
}

.path_container .fifth_row .col_2nd .arrange_btns button:not(:last-child)::after {
	content: "|";
	color: rgba(0, 0, 0, 0.3);
	margin-left: 16px;
}




</style>
<script type="text/javascript">
	
	/* path_icon 클릭 시 경로 이동 */
	$(document).ready(function () {
		
		let home = $('.path_container .col_1st .path_icon .btn_home')
		
		$(home).click(function () {
			location.href = './MainPage.jsp';
		});
		
		let snack = $('.path_container .col_1st .path_icon .btn_snack');
		
		$(snack).click(function () {
			location.href = './01snack_all.jsp?kind=간식';
		});
	});
	
	
	
	
	/* path_btns hover css 변경 */
	$(document).ready(function () {
		
		let btnColor1 = $('.path_container .col_3rd .path_btns button')
		let btnColor2 = $('.path_container .col_3rd .path_btns button:not(:nth-child(5))');
		
		$(btnColor1).on('mouseenter focusin', function () {
			$(this).css({"color":"black","border-bottom":"2px solid black"});
		})
		
		$(btnColor2).on('mouseleave focusout', function () {
			$(this).css({"color":"rgba(0, 0, 0, 0.4)","border-bottom":"none"});
		})
		
	});
	
	
	
	
	
	/* path_btns 클릭 시 이동 */
	$(document).ready(function () {
		
		let path1 = $('.path_container .col_3rd .path_btns button:first-child');
		let path2 = $('.path_container .col_3rd .path_btns button:nth-child(2)');
		let path3 = $('.path_container .col_3rd .path_btns button:nth-child(3)');
		let path4 = $('.path_container .col_3rd .path_btns button:nth-child(4)');
		let path5 = $('.path_container .col_3rd .path_btns button:nth-child(5)');
		let path6 = $('.path_container .col_3rd .path_btns button:nth-child(6)');
		let path7 = $('.path_container .col_3rd .path_btns button:nth-child(7)');
		let path8 = $('.path_container .col_3rd .path_btns button:nth-child(8)');
		
		$(path1).click(function () {
			location.href = '././01snack_all.jsp?kind=간식';
		})
		
		$(path2).click(function () {
			location.href = './02snack_dogGum.jsp';
		})
		
		$(path3).click(function () {
			location.href = './03snack_biscuit.jsp';
		})
		
		$(path4).click(function () {
			location.href = './04snack_homemade.jsp';
		})
		
		$(path5).click(function () {
			location.href = './05snack_jerky.jsp';
		})
		
		$(path6).click(function () {
			location.href = './06snack_can.jsp';
		})
		
		$(path7).click(function () {
			location.href = './07snack_etc.jsp';
		})
		
		$(path8).click(function () {
			location.href = './08snack_cat.jsp';
		})
		
	});


	
	
	/* row_4th */
	
    $(document).ready(function() {
    	
    	let like_btn = $('.path_container .col_4th .product_list .right button:first-of-type');
    	isLiked = false;
    	
    	/* 팝오버 활성화 */
    	$(like_btn).popover({
			trigger: 'hover',
			placement: 'left'
		});
    	
		// 카테고리 좋아요 누르면 엄지척 색 변하기
		$(like_btn).click(function () {
			
			let svg = like_btn.find('svg');
			let count = like_btn.find('span:last-child');
			
			if(isLiked) {
				svg.css({"fill":"rgba(0, 0, 0, 0.08)"});
				count.text('0')
			} else {
				svg.css({"fill":"rgba(0, 0, 0, 0.8)"});
				count.text('1')
			}
			
			isLiked = !isLiked;
			
		});
		
    });
	
	
	
	
		
	
</script>

</head>
<body>
	
	<div class="container path_container">
	
		<div class="row first_row">
		
			<!-- 우측의 경로가기 버튼 -->
			<div class="col-lg col-md col-sm col_1st">
				
				<div class="path_icon" align="right">
					<button class="btn_home">
						<svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" fill="gray" class="bi bi-house-door" viewBox="0 0 16 16">
	  						<path d="M8.354 1.146a.5.5 0 0 0-.708 0l-6 6A.5.5 0 0 0 1.5 7.5v7a.5.5 0 0 0 .5.5h4.5a.5.5 0 0 0 .5-.5v-4h2v4a.5.5 0 0 0 .5.5H14a.5.5 0 0 0 .5-.5v-7a.5.5 0 0 0-.146-.354L13 5.793V2.5a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5v1.293L8.354 1.146ZM2.5 14V7.707l5.5-5.5 5.5 5.5V14H10v-4a.5.5 0 0 0-.5-.5h-3a.5.5 0 0 0-.5.5v4H2.5Z"/>
						</svg>
					</button>
					<button class="btn_middle">
						&gt;
					</button>
					<button class="btn_snack">
						간식
					</button>
				</div>
				
			</div>
			
		</div>
		
		<div class="row second_row">
		
			<!-- 경로의 제목 -->
			<div class="col-lg col-md col-sm col_2nd">
			
				<div class="path_title" align="center">
					<p>육포/사사미</p>
				</div>
				
			</div>
			
		</div>
		
		<div class="row third_row">
			
			<!-- 경로 버튼들 -->
			<div class="col-lg col-md col-sm col_3rd">
			
				<div class="path_btns" align="center">
					<button>ALL</button>
					<button>강아지껌</button>
					<button>비스켓/스낵</button>
					<button>수제간식</button>
					<button>육포/사사미</button>
					<button>캔/파우치</button>
					<button>기타간식</button>
					<button>고양이간식</button>
				</div>
				
			</div>
			
		</div>
		
				<div class="row fourth_row">
			
			<!-- Product List / 카테고리 인기상품 목록입니다. -->
			<div class="col-lg col-md col-sm col_4th">
				
				<div class="product_list">
					<div class="left">
						<div class="left_inner_part">
							<span>PRODUCT</span>
							<span>LIST</span>
						</div>
						<span>&nbsp;/&nbsp;카테고리 인기 상품 목록입니다.</span>
					</div>
					<div class="right">
						<button type="button" data-toggle="popover" title="마이샾에서도 확인이 가능합니다" data-placement="left">
						<span>카테고리 좋아요</span>
						<svg xmlns="http://www.w3.org/2000/svg" width="11" height="11" fill="rgba(0, 0, 0, 0.08)" class="bi bi-hand-thumbs-up-fill" viewBox="0 0 16 16">
						  <path d="M6.956 1.745C7.021.81 7.908.087 8.864.325l.261.066c.463.116.874.456 1.012.965.22.816.533 2.511.062 4.51a9.84 9.84 0 0 1 .443-.051c.713-.065 1.669-.072 2.516.21.518.173.994.681 1.2 1.273.184.532.16 1.162-.234 1.733.058.119.103.242.138.363.077.27.113.567.113.856 0 .289-.036.586-.113.856-.039.135-.09.273-.16.404.169.387.107.819-.003 1.148a3.163 3.163 0 0 1-.488.901c.054.152.076.312.076.465 0 .305-.089.625-.253.912C13.1 15.522 12.437 16 11.5 16H8c-.605 0-1.07-.081-1.466-.218a4.82 4.82 0 0 1-.97-.484l-.048-.03c-.504-.307-.999-.609-2.068-.722C2.682 14.464 2 13.846 2 13V9c0-.85.685-1.432 1.357-1.615.849-.232 1.574-.787 2.132-1.41.56-.627.914-1.28 1.039-1.639.199-.575.356-1.539.428-2.59z"/>
						</svg>
						<span>0</span>
               			</button>
						<button>더보기</button>
					</div>
				</div>
				
			</div>
			
		</div>
		
		<div class="row fifth_row">
			
			<div class="col col-lg col-md col-sm col_1st">
				<div class="count_output">
					<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="gray" class="bi bi-box" viewBox="0 0 16 16">
	  				<path d="M8.186 1.113a.5.5 0 0 0-.372 0L1.846 3.5 8 5.961 14.154 3.5 8.186 1.113zM15 4.239l-6.5 2.6v7.922l6.5-2.6V4.24zM7.5 14.762V6.838L1 4.239v7.923l6.5 2.6zM7.443.184a1.5 1.5 0 0 1 1.114 0l7.129 2.852A.5.5 0 0 1 16 3.5v8.662a1 1 0 0 1-.629.928l-7.185 2.874a.5.5 0 0 1-.372 0L.63 13.09a1 1 0 0 1-.63-.928V3.5a.5.5 0 0 1 .314-.464L7.443.184z"/>
					</svg>
					<span>&nbsp;총&nbsp;</span>
					<span>???</span>
					<span>&nbsp;개의 상품이 검색되었습니다.</span>
				</div>
			</div>
			
			<div class="col col-lg col-md col-sm col_2nd">
				<div class="arrange_btns">
					<button>신상품</button>
					<button>상품명</button>
					<button>낮은가격</button>
					<button>높은가격</button>
					<button>제조사</button>
					<button>사용후기</button>
				</div>
			</div>
			
		</div>
		
		
	</div>
	
	
	
	
		<!-- 영웅이 파트 (베스트아이템) -->


<%
    Connection conn = null;
    Statement stmt = null;
    ResultSet rs = null;

    try {
        Class.forName("com.mysql.jdbc.Driver");
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb", "root", "mysql");

        stmt = conn.createStatement();
        String kind = request.getParameter("kind");
        PreparedStatement pstmt = conn.prepareStatement("SELECT * FROM product WHERE pro_kind = ?");
        pstmt.setString(1, kind);
        rs = pstmt.executeQuery();
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
    <jsp:include page="./module/footer.jsp" flush="false"/>
</html>












