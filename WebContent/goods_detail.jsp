<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8"); 
	response.setContentType("text/html;charset=utf-8");
%>
<!DOCTYPE html>
<html lang="ko">

<head>
 <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />
    <link rel="stylesheet" href="css/swiper.min.css">
    <link rel="stylesheet" href="./css/style.css" type="text/css"> 
    <script type="text/javascript" src="js/jquery-3.7.1.min.js"></script>
    <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
    <link rel="stylesheet" href="./css/goods_detail.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <jsp:include page="./module/header_fin.jsp" flush="false"/>
    <title>Goods_Detail</title>
    
    <style>
        /* 기본 스타일 */
    
        /* 화면 폭이 768px 이하일 때 스타일 변경 */
        @media (max-width: 768px) {
            .goods_detail_container {
                flex-direction: column;
                align-items: stretch;
            }
    
            .goods_detail_thumbnail {
                order: 2; /* 순서 변경 */
                padding: 10px; /* 예시: 세로 배치 시 여백 조정 */
            }
    
            .goods_detail_content {
                order: 1; /* 순서 변경 */
            }
    
            /* 예시: 상품명과 가격 간격 조정 */
            .goods_name {
                font-size: 1.5em;
            }
    
            /* 예시: 화면이 작아질 때 구매 버튼 그룹 간격 조정 */
            .btn_group {
                display: flex;
                flex-direction: column; /* 세로 배치 */
                gap: 10px; /* 버튼 간격 조정 */
            }
    
            /* 예시: 버튼의 최대 너비 설정 */
            .btn_group a {
                max-width: 100%; /* 부모 요소에 꽉 차게 설정 */
            }
        }
    </style>
    
<script type="text/javascript">
	
	

	
	


</script>
</head>

<body>

<%
	String url = "jdbc:mysql://localhost:3306/mydb";
	String user = "root";
	String pwd = "mysql";
	String DRIVER = "com.mysql.jdbc.Driver";
	 
	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;

	String pro_name = request.getParameter("pro_name"); 
	
	try{
	Class.forName(DRIVER);
	conn = DriverManager.getConnection(url, user, pwd);
	
	stmt = conn.createStatement();
	rs = stmt.executeQuery("SELECT * FROM product WHERE pro_name ='" + pro_name + "'");

 	if (rs.next()) {
 		String pro_img = rs.getString("pro_img");
 		String imgUrl = request.getContextPath() + "/img/" + pro_img;
	    // 나머지 코드
	
	
	
%>

<script type="text/javascript">

$(document).ready(function () {
    $('.cart_btn').click(function () {
       let userId = '<%= session.getAttribute("user_id") != null ? session.getAttribute("user_id") : "" %>';
       if(userId != ""){
          
           let result = confirm('장바구니에 상품을 등록하고 이동하시겠습니까?');
           
           if (result) {
               // AJAX를 사용하여 서버에 데이터 전송
               $.ajax({
                   type: 'POST',
                   url: 'cartListUpload',
                   data: {
                       user_id: '<%= session.getAttribute("user_id") %>',
                       pro_num: '<%= rs.getString("pro_num") %>'
                   },
                   success: function (response) {
                       
                       window.location.href = 'http://localhost:8080/semi_project/cartShowup';
                   },
                   error: function (error) {
                       console.error('장바구니 등록 중 오류 발생:', error);
                   }
               });
           } else {
               return false;
           }
       }else{
          alert("로그인이 필요합니다.");
          let CartPageURL = "http://localhost:8080/semi_project/userLogin.jsp";
          window.location.href = CartPageURL;
          return false;
       }
    });
});
<%

%>
</script>
<!-- 모든 컨텐츠 컨테이너 -->
    <div class="goods_detail_container" style="display:flex; align-items: center; justify-content: center;">


        <!-- 좌측 썸네일 컨테이너 -->
        <div class="goods_detail_thumbnail" style=" padding: 30px; position:relative; width:660px; height:660px;">

            <div class="thumnail_display">
                <img src="<%=imgUrl %>" style="width: 600px; height: 600px; object-fit:cover;">
                <hr>
            </div>
            <!-- 사진 밑 좋아요 DIV -->
            <div class ="thumb_up">
                <a href = "" data-bs-toggle="tooltip" data-bs-placement="top"
                data-bs-custom-class="custom-tooltip"
                data-bs-title="좋아요한 상품은 내 정보에서 확인할 수 있습니다.">좋아요
                <i class="bi bi-hand-thumbs-up"></i>
                </a>
            </div>
        </div>  <!-- 좌측 컨테이너 END -->


    <!-------------------------------- 제품 상세 정보 상단 (상세 옵션 부터) -------------------------------->
        <div class="goods_detail_content" style = "width:550px; height: 100%">
            <div class="goods_content_top">

                <ul>
                    <li>
                        <h2 class = "goods_name" style="font-weight: bold;"> 
                            <%=rs.getString("pro_name") %><br>
                            <span><%=rs.getString("pro_content") %></span>
                        </h2>
                    </li>
                </ul>
                <div>
                    <p><span class="discount" style="color:green; font-weight:bold;"><%=rs.getString("pro_sale")%>%↓</span>
                         <span class="pro_price" style= "color:black; font-weight:bold;"><%=(Integer.parseInt(rs.getString("pro_price"))*(100-Integer.parseInt(rs.getString("pro_sale")))/100)%>원</span>
                        &nbsp;<span class="pro_original_price" style="text-decoration: line-through; color:gray; font-weight:bold;"><%=rs.getString("pro_price")%>원</span>
                      
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <span class="question" style="font-weight:bold;">문의 0</span>
                        <span class="review" style="font-weight:bold;">리뷰 0</span>
                    </p>
                </div>
                <hr class="line">
            </div>


    <!-------------------------------- 제품 상세 정보 중단 (상세 옵션 부터) -------------------------------->
            <div class="goods_content_middle">
                <div class="middle_title">
                    <span style="font-weight: bold;">상세옵션</span><span style="color:gray; font-size: 11px;"> / 상품 기본
                        정보 입니다.</span>
                </div>
                <hr class="boldline">


                <ul>
                    <li>배송비&nbsp;&nbsp;<span>3,000원</span>
                    </li>
                    <hr class="line">

                    <li>적립금&nbsp;&nbsp;<span><%=(Integer.parseInt(rs.getString("pro_price"))*(100-Integer.parseInt(rs.getString("pro_sale")))/10000)%>
                            (1%)</span>
                    </li>
                    <hr class="line">

                    <li>상품코드<span><%=rs.getString("pro_num")%></span>
                    </li>
                    <hr class="line">

                    <li style="padding:2px;">주문 수량안내 최소 주문수량 1개 이상
                    </li>
                    <li style="padding:2px;">수량을 선택해주세요
                    </li>
                </ul>
            </div>
            <!-------------------------------- 제품 상세 정보 하단 (선택된 옵션 부터) -------------------------------->
            <div class="bottom_title">
                <span style="font-weight: bold;">선택된 옵션</span>
                <span style="color:gray; font-size: 11px;"> / 옵션을 선택하시면 아래에 노출됩니다.</span>
            </div>

            <hr class="boldline">

            <div class="goods_content_bottom" style="display:flex;">
                <div class="option">
                    <span style="padding-right:30px;">1</span>
                    <span>  <%=rs.getString("pro_name") %></span>
                </div>
                <div class="quantity-container" style="padding-left: 50px;">
                    <span class="quantity">
                        <input id="quantity" name="quantity_opt[]" value="1" type="text">
                        <div class="quantity_controller">
                            <a href="#" class="quantity-control up-quantity"><img
                                    src="//img.echosting.cafe24.com/skin/base_ko_KR/product/btn_count_up.gif"
                                    alt="수량증가"></a>
                            <a href="#" class="quantity-control down-quantity"><img
                                    src="//img.echosting.cafe24.com/skin/base_ko_KR/product/btn_count_down.gif"
                                    alt="수량감소"></a>
                        </div>
                    </span>
                </div>
                <div class="final_price" style="padding-left : 50px;">
                    <span><%=Integer.parseInt(rs.getString("pro_price"))*(100-Integer.parseInt(rs.getString("pro_sale")))/100 %></span>
                </div>  
            </div>
            <hr class="boldline">
            <div class="bottom_total_price" style="position:relative;">
                <p><i class="bi bi-coin"></i>
                    <span>최종 결제 금액</span>
                    <span style ="position:absolute; left:320px; font-weight:bold; color: black;"> Total</span>
                    <span style ="position:absolute; left: 370px; top:3px; font-size:12px;
                    color: lightgray; font-weight: bold;">(QTY)</span>
                    <span class="total_price" style ="position:absolute; left:420px; top:-3px; font-size:20px; font-weight:bold; color: #45cfb6;"><%=Integer.parseInt(rs.getString("pro_price"))*(100-Integer.parseInt(rs.getString("pro_sale")))/100 %></span>
                </p>
            </div>

            <!-- 구매 버튼 그룹 -->
            <div class="btn_group" style="display:flex;">
                

                <!-- 구매 버튼 -->
                <a href="$" style="text-decoration: none; color:white;  width: 45%;" >
                    <button class="buy_btn" data-bs-toggle="tooltip" data-bs-placement="top"
                    data-bs-custom-class="custom-tooltip"
                    data-bs-title="바로 구매하기"><span>B U Y</span></button>
                </a>


                <!-- 장바구니 버튼 -->
                <a href="http://localhost:8080/semi_project/cartShowup" style="text-decoration: none; color:white;  width: 30%;" >
                    <button class="cart_btn" data-bs-toggle="tooltip" data-bs-placement="top"
                    data-bs-custom-class="custom-tooltip"
                    data-bs-title="장바구니 담기"><i class="bi bi-bag-check" style ="position:absolute; top:11px; left:25px;"></i><span  style ="position:absolute; top:12px; left:50px;">C A R T</span></button>
                </a>

                <!-- 위시 버튼 -->
                <a href="#" style="text-decoration: none; color:white;  width: 30%;" >
                    <button class="wish_btn" style="position: relative;" data-bs-toggle="tooltip" data-bs-placement="top"
                    data-bs-custom-class="custom-tooltip"
                    data-bs-title="관심상품 등록"><i class="bi bi-star" style ="position:absolute; top:12px; left:25px;"></i>&nbsp;<span style ="position:absolute; top:12px; left:50px;">W I S H</span></button>
                </a>

            </div>



            </div>
        </div>
    
<%} %>
    <%	} catch (Exception e) {
	    e.printStackTrace();
	    out.println("<p>Error: " + e.getMessage() + "</p>");
	} %>
    
    <script>
        const tooltipTriggerList = document.querySelectorAll('[data-bs-toggle="tooltip"]')
		const tooltipList = [...tooltipTriggerList].map(tooltipTriggerEl => new bootstrap.Tooltip(tooltipTriggerEl))
    </script>
    
    <jsp:include page="./module/footer.jsp"/>
</body>

</html>