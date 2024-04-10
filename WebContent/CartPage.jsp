<%@page import="java.util.ArrayList"%>
<%@page import="pet.join.productDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false" %>

<!-- 상품금액총합 자리수 표시하기 -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html lang="en">
<head>
<link rel="stylesheet" href="./css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://unpkg.com/swiper/swiper-bundle.min.css" />
<link rel="stylesheet" href="./css/swiper.min.css">
<link rel="stylesheet" href="./css/style.css" type="text/css">
<script type="text/javascript" src="./js/jquery-3.7.1.min.js"></script>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>장바구니</title>
</head>
<style>
.page-container {
	margin: 0 auto;
	padding: 0
}
/* 최상단 타이틀(MY CART부분 컨테이너) */
.cart-container {
	margin: 50px 0 50px 0;
	text-align: center;
	padding: 50px;
}

/* 중간 아이콘(고객센터,배송조회,상품문의,상품후기 부분) */
.event-container>ul {
	width: 1200px;
	margin: 0 auto;
	display: flex;
	align-items: center;
	justify-content: center;
	list-style-type: none;
}
/* 중간 두번째 리스트 */
p {
	color: black;
	font-size: 15px;
}

li span {
	color: #3ed4be;
}
/* li태그 내 div들 클래스명  */
.icon {
	margin: 50px;
}
/* 4개 아이콘 div클래스명 */
.in-icon {
	max-width: 70px;
	margin: 0 17px 0 17px;
	display: inline-block;
	text-align: center;
}

.in-icon span {
	color: black;
	font-size: 15px
}

.in-icon a {
	text-decoration: none;
}

.in-icon:hover span {
	color: #3ed4be;
}

/* 배송상품 구역 (부트스트랩 사용) */
.cartlist-nav {
	margin: 0 auto;
	margin-bottom: 50px;
	padding: 50px;
	max-width: 85%;
	max-height: 50%;
}

#myTabContent {
	text-align: center;
	padding: 30px;
}

.small-icon {
	max-width: 20px;
}

.page-container .cartlist-nav li {
	list-style-type: none;
}

.page-container .cartlist-nav .cartArea_none li:first-child {
	padding: 20px 10px;
}

.page-container .cartlist-nav .cart_btns {
	height: 10px;
	text-align: right;
	position: relative;
	top: 15px;
}

.page-container .cartlist-nav .cart_btns button {
	padding: 10px 20px;
	height: 50px;
	text-align: center;
}

.page-container .cartlist-nav .cart_btns button:first-child {
	background: #3ed4be;
	border-radius: 5px;
	border: 1px solid #3ed4be;
	color: white;
	font-weight: 300;
	vertical-align: middle;
}

.page-container .cartlist-nav .cart_btns button:first-child:hover {
	box-shadow: 0 0px 4px rgba(0, 0, 0, 0.5);
}

.page-container .cartlist-nav .cart_btns button:last-child {
	background: rgba(0, 0, 0, 0.65);
	border-radius: 5px;
	border: 1px solid rgba(0, 0, 0, 0.65);
	color: white;
	font-weight: 300;
	vertical-align: middle;
}

.page-container .cartlist-nav .cart_btns button:last-child:hover {
	box-shadow: 0 0px 4px rgba(0, 0, 0, 0.7);
}

.page-container .cartArea_block_div {
	text-align: left;
	padding-bottom: 1px;
}

.page-container .cartArea_block_div span:first-child {
	font-size: 17px;
	font-weight: 700;
}

.page-container .cartArea_block_div span:first-child>span {
	padding: 1px 5px;
}

.page-container .cartArea_block_div span:nth-child(2) {
	font-size: 14px;
	font-weight: 500;
	color: rgba(0, 0, 0, 0.6);
}

.page-container .cartArea_block_div table {
	display: flex;
	justify-content: center;
	flex-direction: row;
}

.page-container .cartArea_block_div tr th:first-child, td:nth-child(2) {
	width: 47px;
	text-align: center;
}

.page-container .cartArea_block_div tr th:nth-child(2), td:nth-child(3)
	{
	width: 110px;
	text-align: center;
}

.page-container .cartArea_block_div tr th:nth-child(3), td:nth-child(4)
	{
	width: 650px;
	text-align: left;
	padding: 0 10px;
}

.page-container .cartArea_block_div tr th:nth-child(4), td:nth-child(5)
	{
	width: 93px;
	text-align: center;
	padding: 0 0px;
}

.page-container .cartArea_block_div tr th:nth-child(5), td:nth-child(6)
	{
	width: 130px;
	text-align: center;
	padding: 0 10px;
}

.page-container .cartArea_block_div tr th:nth-child(6), td:nth-child(7)
	{
	width: 110px;
	text-align: center;
	padding: 0 10px;
}

.page-container .cartArea_block_div tr th:nth-child(7), td:nth-child(8)
	{
	width: 110px;
	text-align: center;
	padding: 0 10px;
}

.page-container .cartArea_block_div tr th:nth-child(8), td:nth-child(9)
	{
	width: 105px;
	text-align: center;
	padding: 0 10px;
}

.page-container .cartArea_block_div tr th:nth-child(9), td:nth-child(10)
	{
	width: 170px;
	text-align: center;
	padding: 0 10px;
}

.page-container .cartArea_block_div tr:first-child {
	height: 50px;
}

.page-container .cartArea_block_div tr:first-child th {
	font-size: 14px;
	color: rgba(0, 0, 0, 0.8);
}

.page-container .cartArea_block_div tr td {
	height: 122px;
	font-size: 14px;
	font-weight: 600;
	color: rgba(0, 0, 0, 0.6);
}

.page-container .cartArea_block_div tr td button {
	width: 110px;
	height: 30px;
	font-size: 13px;
	font-weight: 600;
	margin: 1px 0;
}

.page-container .cartArea_block_div tr td button:first-child {
	background: rgba(10, 10, 10, 0.65);
	color: white;
	border: 1px solid rgba(0, 0, 0, 0.8);
	border-radius: 3px;
}

.page-container .cartArea_block_div tr td button:nth-child(2) {
	color: rgba(0, 0, 0, 0.7);
	border: 2px solid rgba(0, 0, 0, 0.6);
	border-radius: 3px;
	background: white;
}

.page-container .cartArea_block_div tr td button:nth-child(3) {
	color: rgba(0, 0, 0, 0.7);
	border: 1px solid rgba(0, 0, 0, 0.3);
	border-radius: 3px;
	background: white;
}



.cart_btns {
padding-right: 20px;
}

.total_price {
text-align: right;
padding-right: 20px;
font-size: 13px;
font-weight: 600;
}

.cartArea_block_div .total_price span:first-child {
	font-size: 13px;
	font-weight: 800;
	color: rgba(0, 0, 0, 0.8);
}

.cartArea_block_div .total_price span:nth-child(2) {
	color: black;
	font-weight: 900;
	font-size: 16px;
}

.cartArea_block_div .total_price span:nth-child(3) {
	color: rgba(0, 0, 0, 0.65);
	font-weight: 700;
}
.cartArea_block_div .total_price span:nth-child(4) {
	color: #3ed4be;
	font-size: 20px;
	font-weight: 900;
}
.cartArea_block_div .total_price span:nth-child(5) {
	color: #3ed4be;
	font-weight: 900;
}


</style>


<script type="text/javascript">

$(document).ready(function () {
	
	// 비 로그인 상태 시 장바구니 상품등록하면 로그인 페이지로 화면 전환
	$('.cart_btns button').click(function () {
		
		let userId = '<%= session.getAttribute("user_id") != null ? session.getAttribute("user_id") : "" %>';
		
		if(userId == "") {
			alert("로그인이 필요합니다.");
		    let CartPageURL = "http://localhost:8080/semi_project/userLogin.jsp";
		    window.location.href = CartPageURL;
		}
		
	});
	
	
	
	
	
	// 장바구니 삭제 버튼 활성화
// 	$('.cartTableDelete').click(function () {
		
// 		let result = confirm('해당 품목을  장바구니에서 삭제하겠습니까?');
// 		if(result) {
			
// 			$.ajax({
				
// 				type: 'POST',
// 				url: 'cartTableDelete',
// 				data: {
<%-- 					pro_name: '<%= request.getAttribute("pro_name") %>', --%>
<%-- 					pro_content: '<%= request.getAttribute("pro_content") %>', --%>
<%-- 					pro_price: '<%= request.getAttribute("pro_price") %>', --%>
<%-- 					pro_sale: '<%= request.getAttribute("pro_sale") %>' --%>
// 				},
// 				success: function (response) {
// 					window.location.href = 'http://localhost:8080/semi_project/cartTableDelete';
// 				},
// 				error: function (error) {
//                     console.error('장바구니 삭제 중 오류 발생:', error);
//                 }
				
// 			})
			
// 		} else {
// 			return false;
// 		}
		
// 	});
	
});

// 장바구니 삭제 버튼 누르면 confirm창 띄우기

	function confirmDelete(proName) {
		let result = alert("장바구니 물품을 삭제됐습니다.");
		if(result) {
			document.getElementById("form"+proName).submit();
		}
	}
	
	
//장바구니 전체 버튼 클릭시 모든 상품 선택되기 추가
document.addEventListener('DOMContentLoaded', function () {
	
   let selectAllCheckbox = document.querySelector('input[name="selectAll"]');
   let selectOneCheckboxes = document.querySelectorAll('input[name="selectOne"]');

 	selectAllCheckbox.addEventListener('change', function () {
       	
       for (let i = 0; i < selectOneCheckboxes.length; i++) {
           selectOneCheckboxes[i].checked = selectAllCheckbox.checked;
       }
   });
 	
       
 });

// 현재 장바구니 물품의 개수 표시 
$(document).ready(function() {
    let cartTable_num = ${cartTable.size()};
    let listNum = $('#listNumber');

    listNum.text(cartTable_num);
});
	

</script>
<body>
	<jsp:include page="/module/header_fin.jsp" />
	<div class="page-container">
		<!-- 상단(MY CART)부분 -->
		<div class="cart-container">
			<h3>
				<strong>MY CART</strong>
			</h3>
			<span style="opacity: 0.5;">나의.장바구니</span>
		</div>
		<hr style="width: 1200px; margin: 0 auto">
		<!-- 중간(아이콘 고객센터,배송조회,상품문의,상품후기)부분 -->
		<div class="event-container">
			<ul>
				<li><div class="icon">
						<img class="in-icon" src="./img/man.png">
					</div></li>
				<li>
					<div class="icon">
						<p>
							저희 쇼핑몰을 이용해 주셔서 감사합니다.<br>
							<span><strong>로그인</strong></span>을 하시면 <span>다양한 혜택</span>을 확인할 수
							있습니다.
					</div>
				</li>
				<li>
					<div class="icon">
						<div class="in-icon">
							<a href="#"><img src="./img/gogak.png"><br>
							<span>고객센터</span></a>
						</div>
						<div class="in-icon">
							<a href="#"><img src="./img/baesong.png"><br>
							<span>배송조회</span></a>
						</div>
						<div class="in-icon">
							<a href="#"><img src="./img/sangpum.png"><br>
							<span>상품문의</span></a>
						</div>
						<div class="in-icon">
							<a href="#"><img src="./img/huki.png"><br>
							<span>상품후기</span></a>
						</div>
					</div>
				</li>
			</ul>
		</div>
		<!-- 부트스트랩 -->
		<div class="cartlist-nav">
			<ul class="nav nav-tabs" id="myTab" role="tablist">
				<!-- 배송상품 배너 -->
				<li class="nav-item" role="presentation">
					<button class="nav-link active" id="cart" data-bs-toggle="tab"
						data-bs-target="#home" type="button" role="tab"
						aria-controls="home" aria-selected="true">
						<img class="small-icon" src="./img/baesong.png">&nbsp;&nbsp;배송상품
					</button>
				</li>
			</ul>
			<!-- 장바구니 목록 -->
			<div class="tab-content" id="myTabContent">
				<div class="tab-pane fade show active" id="home" role="tabpanel"
					aria-labelledby="home-tab">
					
				<c:if test="${sessionScope.user_id == null }">
					<ul class="cartArea_none"
						style="display: block; padding-bottom: 120px; padding-top: 40px">
						<li><svg xmlns="http://www.w3.org/2000/svg" width="43"
								height="43" fill="rgba(0, 0, 0, 0.7)" class="bi bi-cart4"
								viewBox="0 0 16 16">
  									<path
									d="M0 2.5A.5.5 0 0 1 .5 2H2a.5.5 0 0 1 .485.379L2.89 4H14.5a.5.5 0 0 1 .485.621l-1.5 6A.5.5 0 0 1 13 11H4a.5.5 0 0 1-.485-.379L1.61 3H.5a.5.5 0 0 1-.5-.5zM3.14 5l.5 2H5V5H3.14zM6 5v2h2V5H6zm3 0v2h2V5H9zm3 0v2h1.36l.5-2H12zm1.11 3H12v2h.61l.5-2zM11 8H9v2h2V8zM8 8H6v2h2V8zM5 8H3.89l.5 2H5V8zm0 5a1 1 0 1 0 0 2 1 1 0 0 0 0-2zm-2 1a2 2 0 1 1 4 0 2 2 0 0 1-4 0zm9-1a1 1 0 1 0 0 2 1 1 0 0 0 0-2zm-2 1a2 2 0 1 1 4 0 2 2 0 0 1-4 0z" />
								</svg></li>
						<li style="color: rgba(0, 0, 0, 0.5); font-weight: 600">장바구니가
							비어있습니다.</li>
					</ul>
				</c:if>



					<!-- 로그인 시 장바구니 물품이 담기면 -->
					
					<c:if test="${sessionScope.user_id != null}">
						
						<c:if test="${empty cartList}">
							<ul class="cartArea_none"
								style="display: block; padding-bottom: 120px; padding-top: 40px">
								<li><svg xmlns="http://www.w3.org/2000/svg" width="43"
										height="43" fill="rgba(0, 0, 0, 0.7)" class="bi bi-cart4"
										viewBox="0 0 16 16">
		  									<path
											d="M0 2.5A.5.5 0 0 1 .5 2H2a.5.5 0 0 1 .485.379L2.89 4H14.5a.5.5 0 0 1 .485.621l-1.5 6A.5.5 0 0 1 13 11H4a.5.5 0 0 1-.485-.379L1.61 3H.5a.5.5 0 0 1-.5-.5zM3.14 5l.5 2H5V5H3.14zM6 5v2h2V5H6zm3 0v2h2V5H9zm3 0v2h1.36l.5-2H12zm1.11 3H12v2h.61l.5-2zM11 8H9v2h2V8zM8 8H6v2h2V8zM5 8H3.89l.5 2H5V8zm0 5a1 1 0 1 0 0 2 1 1 0 0 0 0-2zm-2 1a2 2 0 1 1 4 0 2 2 0 0 1-4 0zm9-1a1 1 0 1 0 0 2 1 1 0 0 0 0-2zm-2 1a2 2 0 1 1 4 0 2 2 0 0 1-4 0z" />
										</svg></li>
								<li style="color: rgba(0, 0, 0, 0.5); font-weight: 600">장바구니가
									비어있습니다.</li>
							</ul>
						</c:if>
						
						<c:if test="${!empty cartList}">
							<div class="cartArea_block_div" style="display: block">
								<span>일반상품 (<span id="listNumber"></span>)
								</span><span>&nbsp;/&nbsp;장바구니 일반상품 목록을 확인하세요.</span>
								<hr style="height: 3px; margin-top: 0; margin-bottom: 0;">
									<table>
										<!-- 컬럼에 적립금은 제외함 -->
										<tr>
											<th><input type="checkbox" name="selectAll"></th>
											<th>이미지</th>
											<th>상품정보</th>
											<th>수량</th>
											<th>상품구매금액</th>
											<th>할인금액</th>
											<th>배송구분</th>
											<th>배송비</th>
											<th>선택</th>
										</tr>
										
										<c:set var="totalPrice" value="0" />
										<c:forEach var="cartInfo" items="${cartTable}">
										
											
											    <tr>
											    <form id="form${cartInfo.pro_name}" action="cartTableDelete" method="post">
											        <td>
											        	<input type="checkbox" name="selectOne">
											        	<input type="hidden" name="pro_name" value="${cartInfo.pro_name}">
											        </td>
											        <td><a href="http://localhost:8080/semi_project/goods_detail.jsp?pro_name=${cartInfo.pro_name}"><img src="${pageContext.request.contextPath}/img/${cartInfo.pro_img}" style="width: 55px; height: 100px"></a></td>
											        <td><a href="http://localhost:8080/semi_project/goods_detail.jsp?pro_name=${cartInfo.pro_name}" style="text-decoration: none; color: rgba(0, 0, 0, 0.7);"><input type="hidden" name="pro_content" value="${cartInfo.pro_content}">${cartInfo.pro_content}</a></td>
											        <td>1</td>
											        <td><input type="hidden" name="pro_price" value="${cartInfo.pro_price}">${cartInfo.pro_price}</td>
											        <td><input type="hidden" name="pro_sale" value="${cartInfo.pro_sale}">${cartInfo.pro_sale}%</td>
											        <td>기본배송</td>
											        <td>3,000원<br><span style="font-size: 12px; color: rgba(0, 0, 0, 0.5); font-weight: 700;">조건</span></td>
											        <td>
											            <button>주문하기</button>
											            <button>관심상품등록</button>
											            <button onclick="confirmDelete('${cartInfo.pro_name}')" form="form${cartInfo.pro_name}" id="cartTableDelete" type="submit">X&nbsp;&nbsp;&nbsp;&nbsp;삭제</button>
											        </td>
											    </form>
											    </tr>
											
											<!-- 상품 총액 합 -->
											<c:set var="totalPrice" value="${totalPrice + (cartInfo.pro_price * ((100 - cartInfo.pro_sale)/100))}"/>											
											
										</c:forEach>
									</table>
								<hr>
								<div class="total_price">
									<span>상품구매금액</span>&nbsp;<span><fmt:formatNumber value="${totalPrice}" pattern="#,##0"/></span><span> + 배송비 3,000원 = 합계&nbsp;&nbsp;</span><span><fmt:formatNumber value="${totalPrice+3000}" pattern="#,##0"/></span><span>&nbsp;원</span>
								</div>								
								
							</div>
						</c:if>
					</c:if>
					
				</div>


				<!-- 상품주문 버튼 -->
				
				<div class="cart_btns">
					<button type="submit">
						<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20"
							fill="white" class="bi bi-check-lg" viewBox="0 0 16 16">
					  						<path
								d="M12.736 3.97a.733.733 0 0 1 1.047 0c.286.289.29.756.01 1.05L7.88 12.01a.733.733 0 0 1-1.065.02L3.217 8.384a.757.757 0 0 1 0-1.06.733.733 0 0 1 1.047 0l3.052 3.093 5.4-6.425a.247.247 0 0 1 .02-.022Z" />
										</svg>
						&nbsp;&nbsp;전체상품 주문
					</button>
					<button type="submit">
						<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20"
							fill="white" class="bi bi-check2-square" viewBox="0 0 16 16">
						 				 <path
								d="M3 14.5A1.5 1.5 0 0 1 1.5 13V3A1.5 1.5 0 0 1 3 1.5h8a.5.5 0 0 1 0 1H3a.5.5 0 0 0-.5.5v10a.5.5 0 0 0 .5.5h10a.5.5 0 0 0 .5-.5V8a.5.5 0 0 1 1 0v5a1.5 1.5 0 0 1-1.5 1.5H3z" />
						 				 <path
								d="m8.354 10.354 7-7a.5.5 0 0 0-.708-.708L8 9.293 5.354 6.646a.5.5 0 1 0-.708.708l3 3a.5.5 0 0 0 .708 0z" />
										</svg>
						&nbsp;&nbsp;선택상품 주문
					</button>
				</div>

				


			</div>
		</div>
	</div>


	<!-- 까지 부트스트랩 -->
	<jsp:include page="./module/footer.html" flush="false" />
</body>
</html>











