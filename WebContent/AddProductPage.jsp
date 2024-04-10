<%@page import="javax.swing.text.Document"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="./css/bootstrap.min.css">
    <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />
    <link rel="stylesheet" href="./css/swiper.min.css">
    <link rel="stylesheet" href="./css/style.css" type="text/css"> 
    <script type="text/javascript" src="./js/jquery-3.7.1.min.js"></script>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>상품 등록</title>
<style type="text/css">
	.add-container{
		margin: 0 auto;
		padding: 10px;
	}
    /* 상단 타이틀(MY CART부분 컨테이너) */
    .add-title{
    	margin: 20px 0;
        text-align: center;
        padding: 30px;
    }
    
    .add-pro p {
    	text-align: center;
    	font-size: 19px;
    	font-weight: 800;
    	color: rgba(0, 0, 0, 0.6);
    	padding: 20px;
    	
    }
    
    /* 상품 등록 박스 부분 */
    .add-product{
    	margin: 0 auto;
    	max-width: 70%;
    	display: flex;
    	align-items: flex-start;
    	justify-content: center;
    }
    .add-table{
    	margin: 50px;
    }
    .add-table tr:first-of-type td{
    	font-size: 20px;
    	color: black;
    	font-weight: blod;
    }
    
    .add-table tr{
    	margin: 10px;
		border-left: none;
    	border-right: none;
    	border-bottom: 1px solid rgba(0, 0, 0, 0.08);
    }
    .add-table tr td{
    	padding: 15px 15px;
    	font-size: 12px;
    	color: rgba(0, 0, 0, 0.4);
    	font-weight: bold;
    }
    
    .add-table input::-webkit-input-placeholder{
    	color: rgba(0, 0, 0, 0.2);
    }
    .add-table textarea::-webkit-input-placeholder{
    	color: rgba(0, 0, 0, 0.2);
    }
    
    .add-table tr input{
    	border-radius: 3px;
    	height: 30px;
    	line-height: 15px;
    	padding: 0px 8px;
    }
    
    
    .add-table tr span{
    	color: #3ed4be;
    	font-size: 20px;
    	font-weight: bolder;
    }
    .add-table tr td{
    	padding: 30px 50px 30px 50px;
    }
    .add-table tr:last-child{
    	text-align: center;
    	margin: 0 auto;
    }
    
    /* 버튼 부분 */
    .btn-cancel{
    	background: white;
    	border: 1px solid lightgray;
    	width: 125px;
		height: 50px;
    }
    textarea{
    	width: 300px;
    	height: 100px;
    	border: 1px solid lightgray;
    }
    input{
    	border: 1px solid lightgray;
    	max-height: 100%;
    }
    .btn-add {
		background: #3ed4be;
		color: white;
		border: 1px solid lightgray;
		width: 125px;
		height: 50px;
	}
</style>
</head>
<body>
<jsp:include page="/module/header_fin.jsp"/>
	<div class="add-container">
		<!-- 상단(ADD PRODUCT)부분 -->
	    <div class="add-title">
	        <h3><strong>ADD PRODUCT</strong></h3>
	        <span style="opacity: 0.5;">상품등록</span>
	        <hr style="width: 50px; margin: 0 auto">
	    </div>
	    <div class="add-pro">
	    	<p>상품 정보 양식을 입력해주세요.</p>
	    </div>
	    <!-- 상품 등록 박스 -->
	    <form action="addaction.jsp" method="post" class="add-product" enctype="multipart/form-data"> <!-- enctype="multipart/form-data" -> 이미지 업로드 -->
	    	<table class="add-table">
	    		<tr><td>상품 등록</td></tr>
	    		<tr>
	    			<td>상품코드&nbsp;<span>*</span></td><td><input type="text" name="pro_num" placeholder="상품코드"></td>
	    		</tr>
	    		<tr>
	    			<td>상품명&nbsp;<span>*</span></td><td><input type="text" name="pro_name" placeholder="상품명"></td>
	    		</tr>
	    		<tr>
	    			<td>상품 종류&nbsp;<span>*</span></td>
	    			<td>
	    				<select name="pro_kind">
	    					<option value="사료">사료</option>
	    					<option value="간식">간식</option>
	    					<option value="미용">미용</option>
	    					<option value="패션">패션</option>
	    				</select>
	    			</td>
	    		</tr>
	    		<tr>
	    			<td>상품설명&nbsp;<span>*</span></td><td><textarea name="pro_content" placeholder="상품설명"></textarea></td>
	    		</tr>
	    		<tr>
	    			<td>상품 이미지&nbsp;<span>*</span></td><td><input type="file" name="pro_img"></td>
	    		</tr>
	    		<tr>
	    			<td>상품 가격&nbsp;<span>*</span></td><td><input type="text" name="pro_price" placeholder="상품가격"></td>
	    		</tr>
	    		<tr>
	    			<td>상품 할인&nbsp;<span>*</span></td><td><input type="text" name="pro_sale" placeholder="상품할인"></td>
	    		</tr>
	    		<tr>
	    			<td colspan="2"><input class="btn-add" type="submit" value="등록">&nbsp;&nbsp;<input class="btn-cancel" type="reset" value="취소"></td>
	    		</tr>
	    	</table>
	    </form>
	    
	</div>


<jsp:include page="./module/footer.jsp"/>
</body>
</html>