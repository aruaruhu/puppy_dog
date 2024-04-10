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
<title>회원가입</title>
<style type="text/css">
	.join-container{
		margin: 0 auto;
		padding: 10px;
	}
    /* 상단 타이틀(JOIN) */
    .join-container .join-title{
    	margin: 20px 0px;
        text-align: center;
        padding: 30px;
    }
    .join-container .join-title > p {	/* 얘는 왜 색깔 안됨??? */
    	font-size: 22px;
    	padding: 10px;
    	font-weight: bolder;
    	letter-spacing: 5px;
    	/* color: ???; */
    }
    
    .join-container p {
    	text-align: center;
    	font-size: 19px;
    	font-weight: 800;
    	color: rgba(0, 0, 0, 0.6);
    	padding: 20px;
    }
    
    /* 회원가입 박스 부분 */
    .join-container .join-inner{
    	margin: 0 auto;
    	max-width: 70%;
    	display: flex;
    	align-items: flex-start;
    	justify-content: center;
    }
    .join-container .join-table{
    	margin-top: 50px;
    	width: 60%;
    	
    }
    .join-container .join-table tr{
    	margin: 10px;
		border-left: none;
    	border-right: none;
    	border-bottom: 1px solid rgba(0, 0, 0, 0.08);
    }
    
    .join-container .join-table tr:first-child {
    	border-top: none;
    }
    
    .join-container .join-table tr span{
    	color: #3ed4be;
    	font-size: 20px;
    	font-weight: bolder;
    }
    .join-container .join-table tr td{
    	padding: 15px 15px;
    	font-size: 12px;
    	color: rgba(0, 0, 0, 0.4);
    	font-weight: bold;
    }
    
    .join-container .join-table tr:first-of-type td{
    	font-size: 20px;
    	color: black;
    	font-weight: blod;
    }
    
    .join-container .join-table tr td:first-of-type {
    	width: 150px;
    }
    
    .join-container .join-table tr input {
    	border-radius: 3px;
    	background: rgba(0, 0, 0, 0.02);
    	height: 30px;
    	line-height: 15px;
    	padding: 0px 8px;
    }
    
    .join-container .join-table tr:nth-child(2) input {
    	border-radius: 3px;
    	background: #3ed4be;
    	height: 30px;
    	line-height: 15px;
    	color: white;
    }
    
    .join-container .join-table tr:nth-child(8) input {
    	width: 400px;
    }
    
    .join-container .join-table input::-webkit-input-placeholder{
    	color: rgba(0, 0, 0, 0.2);
    }
    
    .join-container .join-table tr:nth-child(2) td:last-child::after{
    	content: "아이디를 입력해 주세요. (영문소문자/숫자, 4~16자)";
    	padding-left: 10px;
    	font-size: 10px;
    }
    
    .join-container .join-table tr:nth-child(4) td:last-child::after{
    	content: "(영문 대소문자/숫자/특수문자 중 3가지 이상 조합, 8자~16자)";
    	padding-left: 10px;
    	font-size: 10px;
    }
    
    .join-container .join-table .dismatch_pw::after{
    	content: "비밀번호가 일치하지 않습니다.";
    	padding-left: 10px;
    	font-size: 10px;
    	color: #3ed4be;
    }
    
    .join-container .join-table #user_phone1 {
    	width: 70px;
    	padding-left: 10px;
    	padding-top: 5px;
    	padding-bottom: 5px;
    	font-size: 12px;
    	font-weight: bold;
    	color: rgba(0, 0, 0, 0.6);
    	background: rgba(0, 0, 0, 0.02);
    	border-radius: 3px;
     	border: 1px solid rgba(0, 0, 0, 0.08);
    }
    
    .join-table input[placeholder='0000']{
    	width: 60px;
    	padding-left: 10px;
    }
    
    
    .join-container .join-table tr:nth-child(8) .email_chk::after{
    	content: "이메일을 입력해 주세요.";
    	padding-left: 10px;
    	font-size: 10px;
    }
    
    .join-container .join-table tr:nth-child(8) .wrong_email::after{
    	content: "유효한 이메일을 입력해 주세요.";
    	padding-left: 10px;
    	font-size: 10px;
    	color: #3ed4be;
    }
        
    .join-container .btn-cancel{
    	background: white;
    	border: 1px solid lightgray;
    	width: 125px;
		height: 50px;
    }
    .join-container input{
    	border: 1px solid rgba(0, 0, 0, 0.08);
    	max-height: 100%;
    }
    
    .join-container .btn-join {
		background: #3ed4be;
		color: white;
		border: 1px solid lightgray;
		width: 125px;
		height: 50px;
	}
	
	.join-container .join-table .btn-join:hover {
		border: 1px solid rgba(0, 0, 0, 0.35);
	}
	
	.join-container .join-table .btn-cancel:hover {
		border: 1px solid rgba(0, 0, 0, 0.35);
	}
	
</style>

<script type="text/javascript">
	
	
	$(document).ready(function () {
		
		/* 비밀번호 일치 검사 only for visual*/
		let pw = $('.join-container .join-table tr:nth-child(4) input');
		let pw_confirm = $('.join-container .join-table tr:nth-child(5) input');
		
		pw_confirm.on('input', function () {
			if(pw.val() !== "" && pw_confirm.val() !== "" && pw.val() !== pw_confirm.val()) {
				$('.join-container .join-table tr:nth-child(5) td:last-child').addClass('dismatch_pw');
			} else {
				$('.join-container .join-table tr:nth-child(5) td:last-child').removeClass('dismatch_pw');
			}
		});
		
		// 이메일 유효성 검사 only for visual
		let email = $('.join-container .join-table tr:nth-child(8) td:last-child input');
		email.on('input blur',function () {
			if(email.val() === "") {
				return;
			} else if (email.val() !== "" && email.val().indexOf('@') == -1) {
				$('.join-container .join-table tr:nth-child(8) td:last-child').addClass('wrong_email');
			} else if(email.val() !== "" && email.val().indexOf('@') !== -1 
					&& (email.val().indexOf('\.com') !== -1 
							|| email.val().indexOf('\.net') !== -1 
							|| email.val().indexOf('\.org') !== -1)) {
				$('.join-container .join-table tr:nth-child(8) td:last-child').removeClass();
			}
		});
		
	});
	
	
	/* 회원가입 로직 유효성 검사 */
	$(document).ready(function () {
		
		$('.btn-join').click(function () {
			
			let user_id = $('.join-container .join-table tr:nth-child(2) td:last-child').val();
			let user_name = $('.join-container .join-table tr:nth-child(3) td:last-child').val();
			let user_pw1 = $('.join-container .join-table tr:nth-child(4) td:last-child').val();
			let user_pw2 = $('.join-container .join-table tr:nth-child(5) td:last-child').val();
			let user_phone1 = $('.join-container .join-table tr:nth-child(6) td:last-child #user_phone1').val();
			let user_phone2 = $('.join-container .join-table tr:nth-child(6) td:last-child input:first-child').val();
			let user_phone3 = $('.join-container .join-table tr:nth-child(6) td:last-child input:last-child').val();
			let user_address = $('.join-container .join-table tr:nth-child(7) td:last-child').val();
			let user_email = $('.join-container .join-table tr:nth-child(8) td:last-child').val();
			
			if(user_id == "") {
				alert("아이디를 입력하세요.");
				user_id.focus();
			} else if (user_id.val().indexOf('admin') !== -1) {
				alert("아이디에 admin글자가 포함될 수 없습니다.");
				user_id.focus();
			} else if (user_name == "") {
				alert("이름을 입력해주세요.");
				user_name.focus();
			} else if (user_pw1 == "") {
				alert("비밀번호를  입력해주세요.");
				user_pw1.focus();
			} else if (user_pw2 == "") {
				alert("확인 비밀번호를 입력해주세요.");
				user_pw2.focus();
			} else if (user_phone1 == "") {
				alert("핸드폰 번호 앞 자리를 선택해 주세요.");
				user_phone1.focus();
			} else if (user_phone2 == "") {
				alert("핸드폰 가운데 번호를 입력해주세요.");
				user_phone2.focus();
			} else if (user_phone3 == "") {
				alert("핸드폰 마지막 번호를 입력해주세요.");
				user_phone3.focus();
			} else if (user_address == "") {
				alert("주소를 입력해주세요.");
				user_address.focus();
			} else if (user_email == "") {
				alert("주소를 입력해주세요.");
				user_email.focus();
			}
			
			location.href = 'join.do';
			
			
		});
		
		
		
		
		
		
		
		
		
	});
	


</script>

</head>
<body>
<jsp:include page="/module/header_fin.jsp"/>
	<div class="join-container">
		<!-- 상단(JOIN)부분 -->
	    <div class="join-title">
	        <p>JOIN</p>
	        <hr style="width: 30px; margin: 0 auto;">
	    </div>
	    
	    <hr style="color: rgba(0, 0, 0, 0.6)">
	    
	    <div class="container join-container">
	    	<p>아래 회원가입<br>양식을 입력해주세요.</p>
	    </div>
	    
	    <hr style="color: rgba(0, 0, 0, 0.6)">
	    
	    <!-- 상품 등록 박스 -->
	    <form class="join-inner" method="post">
	    	<table class="join-table">
	    		<tr>
	    			<td>구분</td>
	    		</tr>
	    		<tr>
	    			<td>아이디&nbsp;<span>*</span></td>
	    			<td><input type="text" name="user_id" placeholder="ID"></td>
	    		</tr>
	    		
	    		<tr>
	    			<td>이름&nbsp;<span>*</span></td>
	    			<td><input type="text" name="user_name" placeholder="이름"></td>
	    		</tr>
	    		
	    		<tr>
	    			<td>비밀번호&nbsp;<span>*</span></td>
	    			<td><input type="password" name="user_pw" placeholder="Password"></td>
	    		</tr>
	    		<tr>
	    			<td>비밀번호확인&nbsp;<span>*</span></td>
	    			<td><input type="password" name="user_pw" placeholder="Confirm Password"></td>
	    		</tr>
	    		<tr>
	    			<td>휴대폰&nbsp;<span>*</span></td>
	    			<td><select id="user_phone1" name="user_phone" size="1">
	    					<option value="010" selected>010</option>
	    					<option value="011">011</option>
	    					<option value="013">013</option>
	    					<option value="017">017</option>
	    					<option value="017">019</option>
	    				</select>
	    				<input type="text" name="user_phone" maxlength="4" placeholder="0000">
	    				<input type="text" name="user_phone" maxlength="4" placeholder="0000">
	    			</td>
	    		</tr>
	    		<tr>
	    			<td>주소&nbsp;<span>*</span></td>
	    			<td><input type="text" name="user_address"></td>
	    		</tr>
	    		<tr>
	    			<td>이메일&nbsp;<span>*</span></td>
	    			<td class="email_chk"><input type="text" name="user_email" placeholder="user@domain.com"></td>
	    		</tr>
	    		<tr>
	    			<td colspan="2" align="center">
	    				<input class="btn-join" type="submit" value="회원가입" 
	    				style="color: white; font-weight: bolder; 
	    				background: #3ed4be;">&nbsp;&nbsp;
	    			<input class="btn-cancel" type="reset" value="취소"
	    			style="color: rgba(0, 0, 0, 1); font-weight: bolder;">
	    			</td>
	    		</tr>
	    	</table>
	    </form>
	    
	</div>


<jsp:include page="/module/footer.jsp"/>
</body>
</html>