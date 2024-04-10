<!DOCTYPE html>
<html lang="en">
    
<head>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
    
    *{margin: 0; padding: 0;}

    /* 첫번째 헤더부분 */ /* 첫번째 헤더부분 */ /* 첫번째 헤더부분 */ /* 첫번째 헤더부분 */
    
    .first_header {
        font-size: 12px;
        height: 43px;
        line-height: 43px;
        vertical-align: middle;
        position: relative;
    }

    .first_row{
        position: relative;
    }

    .btn-link {
    /* white-space 속성을 normal로 변경하여 텍스트 줄 바꿈 가능하도록 함 */
    white-space: normal;
    }

    .first_header .col_1st > .btn::after{
        content: " | ";
        color: rgba(0, 0, 0, 0.3);
        font-size: 0.9em;
    }

    .first_header .dropdown-divider {
        border-top: 1px dashed gray;
    }

    .first_header .btn{
        font-size: 1em;
        text-decoration: none;
        padding: 10px 0px;
    }

    .first_header .btn-group{
        font-size: 1.1em;
    }

    /* 화살표를 없애는 스타일 */
    .first_header .btn-group .btn.dropdown-toggle::after {
        display: none; 
    }

    hr.hr_first{
        background-color: rgba(0, 0, 0, 0.1);
        clear: both;
    }

     .first_header .col_1st > .btn::before{
        content: " / ";
        color: rgba(0, 0, 0, 0.3);
        font-size: 0.9em;
    }  

    .first_header .col_1st > .btn{
        font-weight: bold;
        color: rgba(0, 0, 0, 0.1);
        width: 129px;
        display: inline-block;
        flex-shrink: 0;
        position: relative;
        left: -40px;
    }

    .first_header .col_2nd > .btn{
        font-weight: bolder;
        width: 96px;
        display: inline-block;
        position: relative;
        left: -22px;
        flex-shrink: 0;
    }

    .first_header .col_3rd {
        font-weight: bolder;
        width: 753px;
        display: inline-block;
        flex-shrink: 0;
        position: relative;
        left: -23px;
        flex-shrink: 0;
    }
	
	.first_header button{
		color: black;
	}
	
    .first_header .col_4th > .btn-group{
        font-weight: bolder;
        display: inline-block;
        flex-shrink: 0;
        position: relative;
        left: -35px;
        flex-shrink: 0;
        }

     .first_header .col_4th .dropdown-menu .dropdown-item{
     font-weight: bold;
     font-size: 13px;
     margin: 0;
     padding: 0;
     text-align: center;
     width: 115px;
    }

    

    .first_header .col_5th > .btn-group{
        font-weight: bolder;
        display: inline-block;
        flex-shrink: 0;
        position: relative;
        left: -13px;
    }

    .first_header .col_5th .btn-group .dropdown-menu{
        font-size: 13px;
        text-align: center;
    }

    .first_header .col_5th .dropdown-menu .dropdown-item{
        font-weight: bold;
        text-align: center;
    }

    .first_header .col_6th > .btn-group{
        font-weight: bolder;
        display: inline-block;
        flex-shrink: 0;
        position: relative;
        flex-shrink: 0;
        left: -35px;
    }

    .first_header .col_6th .btn-group .dropdown-menu{
        font-size: 13px;
        text-align: center;
        
    }

    .first_header .col_6th .dropdown-menu .dropdown-item{
        font-weight: bold;
        text-align: center;
        
    }

    .first_header .col_7th > .btn-group{
        font-weight: bolder;
        display: inline-block;
        flex-shrink: 0;
        position: relative;
        left: 1235px;
        top: -44px;
    }

    .first_header .col_7th .btn-group .dropdown-menu{
        font-size: 13px;
        text-align: center;
    }

    .first_header .col_7th .dropdown-menu .dropdown-item{
        font-weight: bold;
        text-align: center;
    }


    /* 두번째 헤더부분 */ /* 두번째 헤더부분 */ /* 두번째 헤더부분 */ /* 두번째 헤더부분 */

    /* 스와이퍼쪽 */ /* 스와이퍼쪽 */ /* 스와이퍼쪽 */ /* 스와이퍼쪽 */ /* 스와이퍼쪽 */
    .swiper-container {
        position: relative;
        height: 120px;
        width: 240px;
        line-height: 0;
        z-index: 0;
    }

    .swiper-pagination {
    	position: absolute;
    	z-index: 100;
    	text-align: center;
    }

    .arrow {
    	position: absolute;
    	z-index: 100;
    	border-radius: 5px;
    	cursor: pointer;
    }

    .first_swiper_container, .first_swiper_wrapper{
        margin: 0;
        padding: 0;
    }

    .first_swiper_container .swiper_button_next,.swiper_button_prev{
        z-index: 100;
        position: absolute;
    }


    .first_swiper_container .swiper_button_prev{
        bottom: 20px;
        right: 30px;
        color: rgba(0, 0, 0, 0.3);
    }

    .first_swiper_container .swiper_button_next{
        bottom: 20px;
        right: 8px;
        color: rgba(0, 0, 0, 0.3);
    }



    
    /* 스와이퍼 끝 */ /* 스와이퍼 끝 */ /* 스와이퍼 끝 */ /* 스와이퍼 끝 */ /* 스와이퍼 끝 */

    hr.hr_second{
        background-color: rgba(0, 0, 0, 0.1);
        clear: both;
    }

    .second_header{
        position: relative;
    }

    .second_header .second_row{
        height: 120px;
        display: flex;
        flex-wrap: nowrap;
        line-height: 120px;
    }

    .second_header > .col_1st{
        vertical-align: middle;
        width: 240px;
    }

    .second_header > .col_2nd{
        vertical-align: bottom;
        width: 240px;
    }

    .second_header > .col_3rd{
        vertical-align: middle;
        width: 240px;
    }

    .second_header .col_3rd .btn::after {
        display: none; /* 화살표를 없애는 스타일 */
    }

    .second_header .col_3rd{
        display: flex;
        align-content: space-evenly;

    }


    

    .second_header .second_row{
      position: relative;
    }

    .second_header .col_1st{
      position: relative;
      left: -55px;
    }

    .second_header .col_2nd{
      position: relative;
    }

    .second_header .col_3rd{
      position: relative;
      left: 80px;
    }


    .second_header .col_2nd{
        position: relative;
        top: 21px;
    }


    .second_header .col_3rd .btn{
        color: rgba(0, 0, 0, 0.6);
        margin: 0;
    }




    /* 세번째 헤더부분 */ /* 세번째 헤더부분 */ /* 세번째 헤더부분 */ /* 세번째 헤더부분 */ /* 세번째 헤더부분 */

    .third_header .btn::after {
        display: none; /* 화살표를 없애는 스타일 */
    }

    hr.hr_third{
        background-color: rgba(0, 0, 0, 0.1);
        clear: both;
    }

    .third_header{
        position: sticky;
        height: 50px;
        line-height: 50px;
    }


    /* 세번째 헤더부분 offcanvas */

    /* 스크롤바 너비 */
    .first_offcanvas_body::-webkit-scrollbar{
        width: 3px;
    }

    /* 스크롤바 길이,색상 */
    .first_offcanvas_body::-webkit-scrollbar-thumb{
        height: 1px;    /* 더 이상 짧게 못함 */
        background: rgba(0, 0, 0, 0.3);
    }
    
    /* 스크롤바 뒷 배경 색상 */
    .first_offcanvas_body::-webkit-scrollbar-track{
        background: white;
    }

    .first_offcanvas{
        width: 250px;
        padding: 0px 10px;
        margin: 0;
    }


    .offcanvas_scroll_part{     /* fixed밑으로 들어간 애들 빼내야하기 때문 */
        margin-bottom: 250px;
    }


    .third_header .col_1st .first_offcanvas .offcanvas-title{
        padding-top: 20px;
        font-weight: bold;
    }

    .third_header .col_1st .first_offcanvas .offcanvas_scroll_part {
        font-size: 13px;
        font-weight: 590;
        line-height: 13px;
        padding: 3px 0px;
        text-decoration: none;
    }

    .third_header .col_1st .first_offcanvas .offcanvas_scroll_part .offcanvas_list_part p{
        padding: 3px 0px;
    }

    .third_header .col_1st .first_offcanvas .offcanvas_scroll_part p:first-child{
        font-weight: 550;
    }
    
  

    .third_header .col_1st .first_offcanvas .offcanvas_scroll_part p:last-child{
        margin-bottom: 30px;
    }

    .third_header .col_1st .first_offcanvas .offcanvas_scroll_part a{
        text-decoration: none;
        color: black;
    }

    .third_header .col_1st .first_offcanvas .offcanvas_scroll_part hr{
        width: 100%;
        color: rgba(0, 0, 0, 0.3);
    }



    .offcanvas_fixed_part{
        position: fixed;
        height: 275px;
        left: 0;
        bottom: 0;
        background-color: white;
        width: 248px;
        border-top: 1px solid rgba(0, 0, 0, 0.1);
        padding: 8px 30px;
        
    }

    .offcanvas_fixed_part span:first-child,span:nth-child(2){
        padding-bottom: 5px;
        margin-bottom: 0;
    }

    .offcanvas_fixed_part span:first-child{
        margin-right: 10px;
        /* 색은 html속성으로줌 */
    }

    .offcanvas_fixed_part span:nth-child(2){
        font-size: 12px;
        /* 색은 html속성으로줌 */
    }

    .offcanvas_fixed_part hr{
        margin: 0;
    }
    
    .first_offcanvas .offcanvas_fixed_part .offcanvas_inner_search_div{
        width: 200px;
        background-color: rgba(0, 0, 0, 0.065);
        border: 1px solid rgba(0, 0, 0, 0.1);
        border-radius: 5px;
        margin-bottom: 10px;
        line-height: 1;
    }

    .first_offcanvas .offcanvas_fixed_part .offcanvas_inner_search_input{
        width: 160px;
        height: 35px;
        padding: 0px 10px;
        font-size: 12px;
        background-color: rgba(0, 0, 0, 0.001);
        border: none;
    }

    .first_offcanvas .offcanvas_fixed_part .offcanvas_inner_search_input:active{
        border: none;
    }

    .first_offcanvas .offcanvas_fixed_part .offcanvas_inner_search_div button{
        height: 35px;
        border: none;
    }

    .first_offcanvas .offcanvas_fixed_part .offcanvas_inner_sticky_btn_group{
        line-height: 2;
    }

    .first_offcanvas .offcanvas_fixed_part .offcanvas_inner_sticky_btn_group button{
        border-radius: 4px;
        font-size: 11px;
        background: white;
        border: 1px solid rgba(0, 0, 0, 0.6);
        line-height: 1;
        padding: 8px;
    }

    .first_offcanvas .offcanvas_fixed_part .offcanvas_inner_sticky_btn_group a{
        text-decoration: none;
        color: black;
        line-height: 1;
    }

    .first_offcanvas .offcanvas_fixed_part hr{
        margin: 10px 0px;
        color: rgba(0, 0, 0, 0.3);
    }

    .first_offcanvas .offcanvas_fixed_part .offcanvas_inner_sticky_service_part{
        text-align: center;
        line-height: 1;
    }

    .first_offcanvas .offcanvas_fixed_part .offcanvas_inner_sticky_service_part button:first-child{
        background-color: rgba(0, 0, 0, 0.7);
        color: white;
        padding: 10px 20px;
        font-size: 12px;
        border-radius: 4px;
        border: none;
    }

    .first_offcanvas .offcanvas_fixed_part .offcanvas_inner_sticky_service_part button:last-child{
        background-color: rgba(0, 0, 0, 0.1);
        color: rgba(0, 0, 0, 0.75);
        padding: 10px 20px;
        font-size: 12px;
        border-radius: 4px;
        border: rgba(0, 0, 0, 0.3)
    }




    .third_header .col_1st {
        position: relative;
        left: 230px;
    }

    .third_header .col_2nd{
        text-align: center;
        position: relative;
        display: flex;
        left: 270px;
    }

    .third_header .col_3rd {
      position: relative;
      right: 153px;
    }

    .third_header .col_2nd .btn_group{
        position: relative;
    }

    .third_header .col_2nd .btn{
        display: inline-block;
        font-size: 13.1px;
        font-weight: bold;
        color: rgba(0, 0, 0, 0.8);
        text-decoration: none;
        position: relative;
    }

    .third_header .btn_group .a_dropdown{
        border: 1px solid rgba(0, 0, 0, 0.1);
        position: absolute;
        background-color: white;
        display: none;
        padding: 5px;
        align-content: center;
        box-sizing: border-box;
    }

    .third_header .btn_group .a_dropdown img{
        position: relative;
        float: left;
        clear: both;
        padding: 0;
        margin: 0;
    }
    
    .third_header .btn_group .a_dropdown .anchors{
        position: relative;
        float: left;
        
        text-decoration: none;
        color: rgba(0, 0, 0, 0.65);
        font-weight: bold;
        font-size: 13px;
        padding: 0px;
    }

    .third_header .btn_group .a_dropdown .anchors:hover{
        background-color: rgba(0, 0, 0, 0.065);
    }

    .third_header .btn_group:first-child .a_dropdown{
        width: 280px;
        line-height: 20px;
        padding: 10px;
    }

    .third_header .btn_group:first-child .a_dropdown .anchors{
        padding: 4px;;
    }


    .third_header .btn_group:nth-child(2) .a_dropdown{
        width: 275px;
        line-height: 28px;
        padding: 10px;
    }

    .third_header .btn_group:nth-child(2) .a_dropdown .anchors{
        padding: 2px;

    }

    .third_header .btn_group:nth-child(3) .a_dropdown{
        width: 330px;
        line-height: 20px;
        padding: 10px;
    }

    .third_header .btn_group:nth-child(3) .a_dropdown .anchors{
        padding: 8px;
    }

    .third_header .btn_group:nth-child(4) .a_dropdown{
        width: 425px;
        line-height: 16px;
        padding: 10px;
    }

    .third_header .btn_group:nth-child(4) .a_dropdown .anchors{
        padding: 6px;
    }

    .third_header .btn_group:nth-child(5) .a_dropdown{
        width: 355px;
        line-height: 14px;
        padding: 10px;
    }


    .third_header .btn_group:nth-child(5) .a_dropdown .anchors{
        padding: 7px;
        font-size: 13px;
    }

    .third_header .btn_group:nth-child(6) .a_dropdown{
        width: 331px;
        line-height: 17px;
        padding: 10px;
    }


    .third_header .btn_group:nth-child(6) .a_dropdown .anchors{
        padding: 7px;
    }

    .third_header .btn_group:nth-child(7) .a_dropdown{
        width: 390px;
        line-height: 0px;
        padding: 10px;
    }


    .third_header .btn_group:nth-child(7) .a_dropdown .anchors{
        padding: 12px;
        font-size: 13px;
    }
    
    .third_header .btn_group:nth-child(8) .a_dropdown{
        width: 365px;
        line-height: 0px;
        padding: 10px;
    }


    .third_header .btn_group:nth-child(8) .a_dropdown .anchors{
        padding: 11px;
        font-size: 13px;
    }

    .third_header .btn_group:nth-child(9) .a_dropdown{
        width: 320px;
        line-height: 3px;
        padding: 10px;
    }


    .third_header .btn_group:nth-child(9) .a_dropdown .anchors{
        padding: 11px;
    }

    .third_header .btn_group:nth-child(11) .btn{
        width: 70px;
    }

    .third_header .btn_group:nth-child(12) .btn{
        width: 90px;
    }
    
    .third_header .btn_group:nth-child(13) .btn{
        width: 90px;
    }





    /* 모달부분 *//* 모달부분 *//* 모달부분 *//* 모달부분 *//* 모달부분 *//* 모달부분 */
    .first_modal{
        position:fixed;
        display:none;
        justify-content: center;
        top:0;
        left:0;
        width:100%;
        height:100%;
        z-index: 99999999;
        
        background-color: rgba(0,0,0,0.8);
    }


    /* 모달 여는 검색버튼 */


    .first_outer_open_modal_btn{
        border: none;
        background-color: white;
        position: relative;
        left: 15px;
    }



    /* 첫번째 모달 안의 엑스박스 */
    .first_modal .first_modal_body .modal_first_inner{
        line-height: 0;
        border: none;
        overflow: auto;
    }

    .first_modal .first_modal_body .modal_first_inner .modal_inner_close_btn{
        padding: 0;
        display: inline-block;
        border: none;
        position: absolute;
        top: 30px;
        right: 45px;
        overflow: hidden;
        
    }

    .first_modal .first_modal_body .modal_first_inner .modal_inner_close_btn{
        padding: 0;
    }

    .first_modal .first_modal_body .modal_first_inner .modal_inner_close_btn svg,path{
        background-color: rgba(0,0,0,0.787); 
        color: rgba(255, 255, 255, 0.787);
    }


    /* 두번째 모달 안의 검색창&검색버튼 */
    .first_modal .first_modal_body .modal_second_inner{
        display: inline-block;
        border-bottom: 2px solid white;
        width: 171%;
        display: flex;
        position: relative;
        top: 220px;
        left: -41%;
    }

    .first_modal .first_modal_body .modal_second_inner > .modal_search_input{
        background: rgba(0, 0, 0, 0.002);
        border: none;
        width: 171%;
        height: 80px;
        line-height: 60px;
        font-size: 33px;
        padding: 30px;
        margin-right: auto;
        color: white;
    }

    .first_modal .first_modal_body .modal_second_inner > .modal_search_input:focus{
        outline: none;
    }


    .first_modal .first_modal_body .modal_second_inner > .modal_search_btn{
        background: rgba(0, 0, 0, 0.002);
        border: none;
        text-align: right;
        padding: 30px;
        margin-left: auto;
    }


    /* 세번째 모달 안의 여러 버튼들 */
    .first_modal .first_modal_body .modal_third_inner{
        position: relative;
        width: 400px;
        text-align: left;
        top: 39%;
        left: 51%;
    }

    .first_modal .first_modal_body .modal_third_inner button{
        background: rgba(0, 0, 0, 0.002);
        border: 1px solid white;
        margin: 5px;
        
    }

    .first_modal .first_modal_body .modal_third_inner button a{
        display: inline-block;
        border: none;
        text-decoration: none;
        color: white;
        font-size: 13px;
        padding: 12px;
        height: 12px;
        line-height: 12px;
        vertical-align: middle;
        margin-bottom: 15px;
        font-weight: bolder;
    }

    .first_modal .first_modal_body .modal_third_inner button:hover{
        background-color: black;
        
    }


    

    



    </style>

    <script>
    /* 첫번째 헤더의 우측 버튼들 */
    /* 드랍다운  hr밑으로 나오게하기 */
    $(document).ready(function() {

        $('.first_header .btn-group').on('mouseenter focusin', function () {
            var hrBottom = $('hr.hr_first').offset().top + $('hr.hr_first').outerHeight();
            var dropdown = $(this).find('ul');
            var dropdownTop = dropdown.offset().top;

            if (dropdownTop < hrBottom) {
                dropdown.css('top', hrBottom - dropdownTop);
            }

            dropdown.stop().show(200);
        });

        $('.first_header .btn-group').on('mouseleave focusout', function () {
            $(this).find('ul').stop().hide(200);
        });

    });


    /* 첫번째 헤더의 우측 버튼들 호버 시 색입히기 */
    $(document).ready(function () {
      
      $('.first_header .col_4th .btn').on('mouseenter focusin', function () {

        $('.first_header .col_4th .btn').css({"color":"rgb(051, 204, 153)"})

      });

    });
    $(document).ready(function () {
      
      $('.first_header .col_5th .btn').on('mouseenter focusin', function () {

        $('.first_header .col_5th .btn').css({"color":"rgb(051, 204, 153)"})

      });

    });
    $(document).ready(function () {
      
      $('.first_header .col_6th .btn').on('mouseenter focusin', function () {

        $('.first_header .col_6th .btn').css({"color":"rgb(051, 204, 153)"})

      });

    });
    $(document).ready(function () {
      
      $('.first_header .col_7th .btn').on('mouseenter focusin', function () {

        $('.first_header .col_7th .btn').css({"color":"rgb(051, 204, 153)"})

      });

    });

    /* 색 없애기 */
    $(document).ready(function () {
      
      $('.first_header .col_4th .btn, .first_header .col_5th .btn, .first_header .col_6th .btn ,.first_header .col_7th .btn').on('mouseleave focusout', function () {

        $('.first_header .col_4th .btn, .first_header .col_5th .btn, .first_header .col_6th .btn ,.first_header .col_7th .btn').css({"color":"black"})

      });

    });



    /* 첫번째 헤더의 우측 버튼의 자식 요소들 박스 크기 조정 */
    $(document).ready(function () {

        var liSize = $('.first_header .btn-group').width();
        $('.first_header .btn-group .dropdown-menu').css({ "min-width": liSize + "px"});

    }); 






        
    /* 두번째 헤더 우측부분 */ /* 두번째 헤더 우측부분 */ /* 두번째 헤더 우측부분 */


    /* 팝오버 활성화 */
    $(document).ready(function() {

        $('.second_header .col_3rd .btn').popover({
            trigger: 'hover', // 수동으로 트리거 설정
            placement: 'bottom',
            offset: '0, -25',
        });

    });


    /* 두번째 헤더의 스와이퍼 부분 */ /* 두번째 헤더의 스와이퍼 부분 */ /* 두번째 헤더의 스와이퍼 부분 */
        

    document.addEventListener('DOMContentLoaded', function () {
    var swiper = new Swiper('.first_swiper_container', {
        autoplay: {
            delay: 3500,
            disableOnInteraction: false
        },
        slidesPerView: 1,
        loop: true,
        direction: 'vertical',
        pagination: {
            el: '.first_swiper_pagination',
            clickable: true
        },
        navigation: {    
            nextEl: '.swiper_button_next',
            prevEl: '.swiper_button_prev' 
        }
    });

});

    $(document).ready(function () {
       
        $('.first_swiper_container .first_swiper_pagination').css({"display":"none"});

        $('.first_swiper_container').hover(
            function () {
                $('.first_swiper_container .first_swiper_pagination').css({"display":"block"});
        },
            function () {
                $('.first_swiper_container .first_swiper_pagination').css({"display":"none"});
        }
        );

        $('.first_swiper_container .swiper_button_next,.swiper_button_prev').css({"display":"none"});

        $('.first_swiper_container').hover(
            function () {
                $('.first_swiper_container .swiper_button_next,.swiper_button_prev').css({"display":"block"});
        },
            function () {
                $('.first_swiper_container .swiper_button_next,.swiper_button_prev').css({"display":"none"});
        }
        );

    });



    /* 세번째 헤더의 좌측 종합버튼 offcanvas */

    $(document).ready(function () {
        var child_color_change = $('.first_offcanvas .first_offcanvas_body .offcanvas_list_part a');
        var etc_color_change = $('.first_offcanvas .first_offcanvas_body .offcanvas_etc_part a');
        var btn_color_change = $('.first_offcanvas .first_offcanvas_body .offcanvas_inner_sticky_btn_group a');

        child_color_change.on('mouseenter focusin', function () {
            $(this).css({"color":"rgb(051, 204, 153)"});
            $(this).parent().css({"background":"rgba(0, 0, 0, 0.065)"});
            $(this).closest('div').find('hr').prev().find('a').css({"color": "rgb(51, 204, 153)"});
        })

        child_color_change.on('mouseleave focusout', function () {
            $(this).css({"color":"rgba(0, 0, 0, 0.8)"});
            $(this).parent().css({"background":"white"});
            $(this).closest('div').find('hr').prev().find('a').css({"color": "rgba(0, 0, 0, 0.8)"});
        })

        etc_color_change.on('mouseenter focusin', function () {
            $(this).css({"color":"rgb(051, 204, 153)"});
        })
        
        etc_color_change.on('mouseleave focusout', function () {
            $(this).css({"color":"rgba(0, 0, 0, 0.8)"});
        })

        btn_color_change.on('mouseenter focusin', function () {
            $(this).css({"color":"rgb(051, 204, 153)"});
        })

        btn_color_change.on('mouseleave focusout', function () {
            $(this).css({"color":"rgba(0, 0, 0, 0.8)"});
        })

    })


    /* 세번째 헤더 좌측 종합버튼 팝오버 */
    $(document).ready(function () {

        $('.third_header .col_1st .btn').popover({
            trigger: 'hover',
            placement: 'right',
            offset: '-2, 0'
        });
        
    })




    /* 세번째 헤더의 중앙부분 호버 */

    $(document).ready(function() {
        $('.btn_group').on('mouseenter focusin', function () {
        var dropdown = $(this).find('.a_dropdown');
         dropdown.css({"display": "block"});
        dropdown.stop().show(200);
        });
   

        $('.btn_group').on('mouseleave focusout', function () {
        var dropdown = $(this).find('.a_dropdown');
        dropdown.stop().hide(200);
        });
    });


    /* 세번째 헤더의 중앙 우측 호버 시 글자 변환 */
    $(document).ready(function () {

        $('.third_header .col_2nd .btn_group:nth-child(11) .btn').hover(
        function () {
            $(this).text("문의");
        },
        function () {
            $(this).text('Q & A');
        }
    );

        $('.third_header .col_2nd .btn_group:nth-child(12) .btn').hover(
        function () {
            $(this).text("후기");
        },
        function () {
            $(this).text('REVIEWS');
        }
    );


    $('.third_header .col_2nd .btn_group:last-child .btn').hover(
        function () {
            $(this).text("고객센터");
        },
        function () {
            $(this).text('CS . HELP');
        }
    );
});

    

        /* 세번째 헤더 우측 모달 inner parts */
        $(document).ready(function () {
           
            // 모달 안쪽 닫기 버튼 활성화
            $('.third_header .col_3rd .modal_inner_close_btn').click(function () {
                  $('.first_modal').hide();
            });

        });


		
        /* 세번째 헤더 중앙 링크 연결 */
        /* 간식만 연결해놓음 */
        $(document).ready(function () {
			
        	$('.third_header .col_2nd button:first-child').click(function () {
				location.href = 'http://localhost:8080/semi_project/01snack_all.jsp';
			})
        	
		});
        

      






    </script>
</head>
<body>


    <!-- 첫번째 헤더부분~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->

    <div class="container first_header">
        <!-- 첫 번째 줄 -->
        <div class="row first_row">
            <!-- 고객지원센터 -->
            <div class="col-lg-1 col-md-1 col-sm-1 col_1st">
                <button type="button" class="btn btn-link" style="color: black">
                    <svg xmlns="http://www.w3.org/2000/svg" width="13" height="13" fill="black" class="bi bi-mic" viewBox="0 0 16 16">
                    <path d="M3.5 6.5A.5.5 0 0 1 4 7v1a4 4 0 0 0 8 0V7a.5.5 0 0 1 1 0v1a5 5 0 0 1-4.5 4.975V15h3a.5.5 0 0 1 0 1h-7a.5.5 0 0 1 0-1h3v-2.025A5 5 0 0 1 3 8V7a.5.5 0 0 1 .5-.5"/>
                    <path d="M10 8a2 2 0 1 1-4 0V3a2 2 0 1 1 4 0zM8 0a3 3 0 0 0-3 3v5a3 3 0 0 0 6 0V3a3 3 0 0 0-3-3"/>
                  </svg>&nbsp;&nbsp; 고객 지원센터</button>
            </div>
            <!-- 고객센터전화번호 -->
            <div class="col-lg-1 col-md-1 col-sm-1 col_2nd">
                <button type="button" class="btn btn-link" style="color: black">010-9061-1355</button>
            </div>
            <!-- 센터 공백 -->
            <div class="col-lg-6 col-md-6 col-sm-6 col_3rd">
                
            </div> 
            <!-- 로그인 드랍다운 -->
            <div class="col-lg-1 col-md-1 col-sm-1 col_4th">
                <div class="btn-group">
                    <button type="button" class="btn dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
                    로그인 / 회원가입
                    </button>
                    <ul class="dropdown-menu text-center first_drop">
                        <li><a class="dropdown-item" href="#">내 정보 수정</a></li>
                        <li><a class="dropdown-item" href="#">내 게시글 보기</a></li>
                        <li class="dropdown-divider">- - - -</li>                        
                        <li><a class="dropdown-item" href="#"><span class="span1">로그인</span></a></li>
                        <li><a class="dropdown-item" href="#">회원가입</a></li>
                    </ul>
                </div>
            </div>
            <!-- 배송조회 드랍다운 -->
            <div class="col-lg-1 col-md-1 col-sm-1 col_5th">
                <div class="btn-group">
                    <button type="button" class="btn dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
                        <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" fill="currentColor" class="bi bi-collection" viewBox="0 0 16 16">
                        <path d="M2.5 3.5a.5.5 0 0 1 0-1h11a.5.5 0 0 1 0 1h-11zm2-2a.5.5 0 0 1 0-1h7a.5.5 0 0 1 0 1h-7zM0 13a1.5 1.5 0 0 0 1.5 1.5h13A1.5 1.5 0 0 0 16 13V6a1.5 1.5 0 0 0-1.5-1.5h-13A1.5 1.5 0 0 0 0 6v7zm1.5.5A.5.5 0 0 1 1 13V6a.5.5 0 0 1 .5-.5h13a.5.5 0 0 1 .5.5v7a.5.5 0 0 1-.5.5h-13z"/>
                        </svg> 배송조회
                    </button>
                    <ul class="dropdown-menu text-center second_drop">
                        <li><a class="dropdown-item" href="#">전체</a></li>
                        <li class="dropdown-divider"> - - - - - - -</li> 
                        <li><a class="dropdown-item" href="#">입금전</a></li>
                        <li><a class="dropdown-item" href="#">배송준비중</a></li>
                        <li><a class="dropdown-item" href="#">배송완료</a></li>
                    </ul>
                </div>
             </div>
            <!-- 마이샾 드랍다운 -->
            <div class="col-lg-1 col-md-1 col-sm-1 col_6th">
                <div class="btn-group">
                    <button type="button" class="btn dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
                        <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" fill="currentColor" class="bi bi-person-circle" viewBox="0 0 16 16">
                        <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z"/>
                        <path fill-rule="evenodd" d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z"/>
                        </svg> 마이샾
                    </button>
                    <ul class="dropdown-menu text-center third_drop">
                        <li><a class="dropdown-item" href="#">나의글</a></li>
                        <li class="dropdown-divider"> - - -</li> 
                        <li><a class="dropdown-item" href="#">좋아요</a></li>
                        <li><a class="dropdown-item" href="#">관심상품</a></li>
                    </ul>
                </div>
            </div>
            <!-- 공지/게시판 드랍다운 -->
            <div class="col-lg-1 col-md-1 col-sm-1 col_7th">
                <div class="btn-group">
                    <button type="button" class="btn dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
                        <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" fill="currentColor" class="bi bi-bell" viewBox="0 0 16 16">
                        <path d="M8 16a2 2 0 0 0 2-2H6a2 2 0 0 0 2 2zM8 1.918l-.797.161A4.002 4.002 0 0 0 4 6c0 .628-.134 2.197-.459 3.742-.16.767-.376 1.566-.663 2.258h10.244c-.287-.692-.502-1.49-.663-2.258C12.134 8.197 12 6.628 12 6a4.002 4.002 0 0 0-3.203-3.92L8 1.917zM14.22 12c.223.447.481.801.78 1H1c.299-.199.557-.553.78-1C2.68 10.2 3 6.88 3 6c0-2.42 1.72-4.44 4.005-4.901a1 1 0 1 1 1.99 0A5.002 5.002 0 0 1 13 6c0 .88.32 4.2 1.22 6z"/>
                        </svg> 공지 / 게시판
                    </button>
                    <ul class="dropdown-menu text-center fourth_drop">
                        <li><a class="dropdown-item" href="#">고객센터</a></li>
                        <li class="dropdown-divider"> - - - - - - - -</li> 
                        <li><a class="dropdown-item" href="#">NOTICE</a></li>
                        <li><a class="dropdown-item" href="#">REVIEW</a></li>
                        <li><a class="dropdown-item" href="#">Q & A</a></li>
                        <li><a class="dropdown-item" href="#">EVENT</a></li>
                        <li><a class="dropdown-item" href="#">F A Q</a></li>
                    </ul>
                </div>
            </div>
        </div>            <!-- 첫번쨰 줄 end -->    

    </div>  <!-- 첫번쨰 container end -->

       
    
    <hr style="width: 100%;" class="my-0 hr_first">


    <!-- 두번째 헤더부분~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->


    <div class="container second_header">
        <div class="row second_row">

            <!-- 두번째 헤더 좌측부분 -->
            <div class="col-lg-2 col-md-2 col-sm-2 col_1st">
                    <div class="swiper-container first_swiper_container">
                        <div class="swiper-wrapper first_swiper_wrapper">
                            <div class="swiper-slide">
                                <a href="#"><img src="https://puppydog.co.kr/web/upload/appfiles/0zdpAngaKBFnlCcCqpCU4A/16d49755b662899cd506aedf2bbfc663.jpg" alt="강아지쿠션"></a>
                            </div>
                            <div class="swiper-slide">
                                <a href="#"><img src="https://puppydog.co.kr/web/upload/appfiles/0zdpAngaKBFnlCcCqpCU4A/da4fa2a6733c50811ca9f6fb7db08e31.jpg" alt="강아지장난감"></a>
                            </div>
                            <div class="swiper-slide">
                                <a href="#"><img src="https://puppydog09.openhost.cafe24.com/web/upload/appfiles/0zdpAngaKBFnlCcCqpCU4A/0f274a3aab0cebc22c5db69860779533.png" alt="고양이스크래쳐"></a>
                            </div>
                            <div class="swiper-slide">
                                <a href="#"><img src="https://puppydog.co.kr/web/upload/appfiles/0zdpAngaKBFnlCcCqpCU4A/fd659cb3862151a71e1d0a811c6c91c8.jpg" alt="애견간식"></a>
                            </div>
                        </div>

                        <div class="swiper-pagination first_swiper_pagination"></div>
                        <div class="swiper_button_next">&gt;</div>
                        <div class="swiper_button_prev">&lt;</div>

                    </div> 
            </div>

            <!-- 두번째 헤더 중앙부분 -->
            <div class="col-lg-8 col-md-8 col-sm-8 col_2nd">
                    <H2 class="head_title"><a href="./MainPage.jsp"><img src="https://puppydog.co.kr/web/upload/appfiles/0zdpAngaKBFnlCcCqpCU4A/3642e66df2340bdc448e87f7b3b2e756.png" style="width: 260px; height: 130xp;"></a></H2>

            </div>

            <!-- 두번째 헤더 우측부분 -->
            <div class="col-lg-2 col-md-2 col-sm-2 col_3rd">
                <button type="button" class="btn popover_1st" data-toggle="popover" title="마이샾" data-placement="bottom">
                    <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="rgb(102, 102, 102)" class="bi bi-person" viewBox="0 0 16 16">
                        <path d="M8 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6Zm2-3a2 2 0 1 1-4 0 2 2 0 0 1 4 0Zm4 8c0 1-1 1-1 1H3s-1 0-1-1 1-4 6-4 6 3 6 4Zm-1-.004c-.001-.246-.154-.986-.832-1.664C11.516 10.68 10.289 10 8 10c-2.29 0-3.516.68-4.168 1.332-.678.678-.83 1.418-.832 1.664h10Z"/>
                    </svg>
                </button>
            
                <button type="button" class="btn popover_2nd" data-toggle="popover" title="최근 본 상품" data-placement="bottom">
                    <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="rgb(102, 102, 102)" class="bi bi-clock" viewBox="0 0 16 16">
                        <path d="M8 3.5a.5.5 0 0 0-1 0V9a.5.5 0 0 0 .252.434l3.5 2a.5.5 0 0 0 .496-.868L8 8.71V3.5z"/>
                        <path d="M8 16A8 8 0 1 0 8 0a8 8 0 0 0 0 16zm7-8A7 7 0 1 1 1 8a7 7 0 0 1 14 0z"/>
                    </svg>
                </button>
                
                <button type="button" class="btn popover_3rd" data-toggle="popover" title="장바구니" data-placement="bottom">
                    <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="rgb(102, 102, 102)" class="bi bi-cart2" viewBox="0 0 16 16">
                        <path d="M0 2.5A.5.5 0 0 1 .5 2H2a.5.5 0 0 1 .485.379L2.89 4H14.5a.5.5 0 0 1 .485.621l-1.5 6A.5.5 0 0 1 13 11H4a.5.5 0 0 1-.485-.379L1.61 3H.5a.5.5 0 0 1-.5-.5zM3.14 5l1.25 5h8.22l1.25-5H3.14zM5 13a1 1 0 1 0 0 2 1 1 0 0 0 0-2zm-2 1a2 2 0 1 1 4 0 2 2 0 0 1-4 0zm9-1a1 1 0 1 0 0 2 1 1 0 0 0 0-2zm-2 1a2 2 0 1 1 4 0 2 2 0 0 1-4 0z"/>
                    </svg>
                </button>

            </div>
        </div>
    </div>


    <hr style="width: 100%;" class="my-0 hr_second">


    
<!-- 세번째 헤더부분~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->

    <div class="container third_header mw-100">

        <div class="row third_row">

            <!-- 헤더 좌측의 종합버튼 -->
            <div class="col-lg-1 col-md-1 col-sm-1 col_1st">

                <button class="btn dropdown-toggle" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasWithBothOptions" aria-controls="offcanvasWithBothOptions" data-toggle="popover" title="전체메뉴" data-placement="right">
                    <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="black" class="bi bi-justify" viewBox="0 0 16 16">
                        <path fill-rule="evenodd" d="M2 12.5a.5.5 0 0 1 .5-.5h11a.5.5 0 0 1 0 1h-11a.5.5 0 0 1-.5-.5zm0-3a.5.5 0 0 1 .5-.5h11a.5.5 0 0 1 0 1h-11a.5.5 0 0 1-.5-.5zm0-3a.5.5 0 0 1 .5-.5h11a.5.5 0 0 1 0 1h-11a.5.5 0 0 1-.5-.5zm0-3a.5.5 0 0 1 .5-.5h11a.5.5 0 0 1 0 1h-11a.5.5 0 0 1-.5-.5z"/>
                    </svg>
                </button>
    
                <div class="offcanvas offcanvas-lg offcanvas-md offcanvas-sm offcanvas-start first_offcanvas" data-bs-scroll="true" tabindex="-1" id="offcanvasWithBothOptions" aria-labelledby="offcanvasWithBothOptionsLabel">
                  <div class="offcanvas-header">
                    <h5 class="offcanvas-title" id="offcanvasWithBothOptionsLabel" style="color: black">카테고리</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
                  </div>
                  <div class="offcanvas-body first_offcanvas_body">
    
                    <div class="offcanvas_scroll_part">
                        <div class="offcanvas_list_part">
                            <p><a href="http://localhost:8080/semi_project/01snack_all.jsp">간식</a></p>
                            <hr>
                            <p><a href="http://localhost:8080/semi_project/02snack_dogGum.jsp">강아지껌</a></p>
                            <p><a href="http://localhost:8080/semi_project/03snack_biscuit.jsp">비스켓/스낵</a></p>
                            <p><a href="http://localhost:8080/semi_project/04snack_homemade.jsp">수제간식</a></p>
                            <p><a href="http://localhost:8080/semi_project/05snack_jerky.jsp">육포/사시미</a></p>
                            <p><a href="http://localhost:8080/semi_project/06snack_can.jsp">캔/파우치</a></p>
                            <p><a href="http://localhost:8080/semi_project/07snack_etc.jsp">기타간식</a></p>
                            <p><a href="http://localhost:8080/semi_project/08snack_cat.jsp">고양이간식</a></p>
                        </div>  
    
                        <div class="offcanvas_list_part">
                            <p><a href="#">사료</a></p>
                            <hr>
                            <p><a href="#">건식사료</a></p>
                            <p><a href="#">습식사료</a></p>
                            <p><a href="#">우유/분유</a></p>
                            <p><a href="#">강아지영양제</a></p>
                            <p><a href="#">고양이사료</a></p>
                        </div> 
    
                        <div class="offcanvas_list_part">
                            <p><a href="#">미용용품</a></p>
                            <hr>
                            <p><a href="#">드라이기</a></p>
                            <p><a href="#">발톱관리용품</a></p>
                            <p><a href="#">브러시</a></p>
                            <p><a href="#">샤워기/타월</a></p>
                            <p><a href="#">샴푸/린스</a></p>
                            <p><a href="#">이발기/가위</a></p>
                            <p><a href="#">기타미용용품</a></p>
                        </div>
    
                        <div class="offcanvas_list_part">
                            <p><a href="#">패션용품</a></p>
                            <hr>
                            <p><a href="#">레인코트</a></p>
                            <p><a href="#">신발/양말</a></p>
                            <p><a href="#">외투</a></p>
                            <p><a href="#">원피스/올인원</a></p>
                            <p><a href="#">코스튬</a></p>
                            <p><a href="#">셔츠/상의</a></p>
                            <p><a href="#">기타패션용품</a></p>
                        </div>
    
                        <div class="offcanvas_list_part">
                            <p><a href="#">위생용품</a></p>
                            <hr>
                            <p><a href="#">구강위생용품</a></p>
                            <p><a href="#">기저귀</a></p>
                            <p><a href="#">배변봉투</a></p>
                            <p><a href="#">배변판</a></p>
                            <p><a href="#">배변드</a></p>
                            <p><a href="#">탈취/소독제</a></p>
                            <p><a href="#">눈/귀 위생용품</a></p>
                            <p><a href="#">넥카라</a></p>
                            <p><a href="#">해충방지용품</a></p>
                            <p><a href="#">고양이화장실</a></p>
                            <p><a href="#">고양이모래</a></p>
                            <p><a href="#">기타고양이위생용품</a></p>
                            <p><a href="#">고양이모래매트</a></p>
                        </div>
    
                        <div class="offcanvas_list_part">
                            <p><a href="#">식기/급수기</a></p>
                            <hr>
                            <p><a href="#">급수기</a></p>
                            <p><a href="#">급식기</a></p>
                            <p><a href="#">정수기</a></p>
                            <p><a href="#">사료보관통</a></p>
                        </div>
    
                        <div class="offcanvas_list_part">
                            <p><a href="#">외출용품</a></p>
                            <hr>
                            <p><a href="#">가슴줄</a></p>
                            <p><a href="#">리드줄</a></p>
                            <p><a href="#">목걸이/인식표</a></p>
                            <p><a href="#">목줄</a></p>
                            <p><a href="#">유모차</a></p>
                            <p><a href="#">이동가방/이동장</a></p>
                            <p><a href="#">차량용캐리어/시트</a></p>
                            <p><a href="#">입마개</a></p>
                        </div>
    
                        <div class="offcanvas_list_part">
                            <p><a href="#">장난감/훈련용품</a></p>
                            <hr>
                            <p><a href="#">공/원반</a></p>
                            <p><a href="#">인형</a></p>
                            <p><a href="#">터널/큐브</a></p>
                            <p><a href="#">훈련용품</a></p>
                            <p><a href="#">기타장난감</a></p>
                            <p><a href="#">캣타워</a></p>
                            <p><a href="#">코양이스크래쳐</a></p>
                            <p><a href="#">고양이장난감</a></p>
                        </div>
    
                        <div class="offcanvas_list_part">
                            <p><a href="#">하우스/안전용품</a></p>
                            <hr>
                            <p><a href="#">계단/스텝</a></p>
                            <p><a href="#">매트</a></p>
                            <p><a href="#">안전문</a></p>
                            <p><a href="#">울타리</a></p>
                            <p><a href="#">쿠션/방석</a></p>
                            <p><a href="#">하우스/텐트</a></p>
                            <p><a href="#">해먹</a></p>
                        </div>
    
                        <div class="offcanvas_etc_part">
                            <p><a href="#">Q & A</a></p>
                            <hr>
                            <p><a href="#">REVIEWS</a></p>
                            <hr>
                            <p><a href="#">CS CENTER</a></p>
                            <hr>
                        </div>
                    </div>
                    
                    <div class="offcanvas_fixed_part">
                        <span style="font-weight: bolder; border-bottom: 1px solid black;">검색</span><span style="color: rgba(0, 0, 0, 0.5);">키워드 / 해시태그</span>
                        
                        <div class="offcanvas_inner_search_part" data-bs-scroll="false">
    
                            <div class="offcanvas_inner_search_div">
                                <form action="#">
                                    <input class="offcanvas_inner_search_input" placeholder="검색 키워드 입력">
                                    <button>
                                        <svg xmlns="http://www.w3.org/2000/svg" width="15" height="15" fill="black" class="bi bi-search" viewBox="0 0 16 16">
                                            <path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z"/>
                                        </svg>
                                    </button>
                                </form>
                            </div>
                        </div>
    
                        <div class="offcanvas_inner_sticky_btn_group">
                            <button><a href="#"># 시저캔</a></button>
                            <button><a href="#"># 개껌</a></button>
                            <button><a href="#"># 스텝</a></button>
                            <button><a href="#"># 목줄</a></button>
                            <button><a href="#"># 배변봉투</a></button>
                            <button><a href="#"># 터그놀이</a></button>
                        </div>
    
                        <hr>
    
                        <div class="offcanvas_inner_sticky_service_part">
                            <button>
                                상품문의
                            </button>
                            <button>
                                상품후기
                            </button>
                        </div>
                        
                     </div>
                    </div>
                </div>
            </div>

            <!-- 헤더 중앙 버튼들 -->
            <div class="col-lg col-md col-sm col_2nd">

                <!-- 1번째 버튼 -->
                <div class="btn_group">
                    <button type="button" class="btn">
                        간식
                    </button>
                    <div class="a_dropdown">
                        <img src="https://puppydog.co.kr/web/upload/appfiles/0zdpAngaKBFnlCcCqpCU4A/108319f1bc743653b6f05aaecdc75e05.jpg">
                        <a class="anchors" href="http://localhost:8080/semi_project/02snack_dogGum.jsp">강아지껌</a><Br>
                        <a class="anchors" href="http://localhost:8080/semi_project/03snack_biscuit.jsp">비스켓/스낵</a><Br>
                        <a class="anchors" href="http://localhost:8080/semi_project/04snack_homemade.jsp">수제간식</a><Br>
                        <a class="anchors" href="http://localhost:8080/semi_project/05snack_jerky.jsp">육포/사시미</a><Br>
                        <a class="anchors" href="http://localhost:8080/semi_project/06snack_can.jsp">캔/파우치</a><Br>
                        <a class="anchors" href="http://localhost:8080/semi_project/07snack_etc.jsp">기타간식</a><Br>
                        <a class="anchors" href="http://localhost:8080/semi_project/08snack_cat.jsp">고양이간식</a>
                    </div>
                </div>

                <!-- 2번째 버튼 -->
                <div class="btn_group">
                    <button type="button" class="btn">
                        사료
                    </button>
                    <div class="a_dropdown">
                        <img src="https://puppydog.co.kr/web/upload/appfiles/0zdpAngaKBFnlCcCqpCU4A/d16afad4bba5a0997275fd0ffe366872.jpg">
                        <a class="anchors" href="#">건식사료</a><Br>
                        <a class="anchors" href="#">습식사료</a><Br>
                        <a class="anchors" href="#">우유/분유</a><Br>
                        <a class="anchors" href="#">강아지영양제</a><Br>
                        <a class="anchors" href="#">고양이사료</a>
                    </div>
                </div>

                <!-- 3번째 버튼 -->
                <div class="btn_group">
                    <button type="button" class="btn">
                        미용용품
                    </button>
                    <div class="a_dropdown">
                        <img src="https://puppydog.co.kr/web/upload/appfiles/0zdpAngaKBFnlCcCqpCU4A/8d77c5e1591b609d47ce535ba60dbb94.jpg">
                        <a class="anchors" href="#">드라이기</a><Br>
                        <a class="anchors" href="#">발톱관리용품</a><Br>
                        <a class="anchors" href="#">부러시</a><Br>
                        <a class="anchors" href="#">샤워기/타월</a><Br>
                        <a class="anchors" href="#">샴푸/린스</a><Br>
                        <a class="anchors" href="#">이발기/가위</a><Br>
                        <a class="anchors" href="#">기타미용용품</a>
                    </div>
                </div>

                <!-- 4번째 버튼 -->
                <div class="btn_group">
                    <button type="button" class="btn">
                        패션용품
                    </button>
                    <div class="a_dropdown">
                        <img src="https://puppydog.co.kr/web/upload/appfiles/0zdpAngaKBFnlCcCqpCU4A/b564bfbc99fc51e1e732f3fc5d17f0ec.jpg">
                        <a class="anchors" href="#">레인코트</a><Br>
                        <a class="anchors" href="#">신발/양말</a><Br>
                        <a class="anchors" href="#">외투</a><Br>
                        <a class="anchors" href="#">원피스/올인원</a><Br>
                        <a class="anchors" href="#">코스튬</a><Br>
                        <a class="anchors" href="#">셔츠/상의</a><Br>
                        <a class="anchors" href="#">기타패션용품</a>
                    </div>
                </div>

                <!-- 5번째 버튼 -->
                <div class="btn_group">
                    <button type="button" class="btn">
                        위생용품
                    </button>
                    <div class="a_dropdown">
                        <img src="https://puppydog.co.kr/web/upload/appfiles/0zdpAngaKBFnlCcCqpCU4A/03e354fe61ae0dd4b1b33e1d0172ecd9.jpg">
                        <a class="anchors" href="#">구강위생용품</a><Br>
                        <a class="anchors" href="#">기저귀</a><Br>
                        <a class="anchors" href="#">배변봉투</a><Br>
                        <a class="anchors" href="#">배변판</a><Br>
                        <a class="anchors" href="#">배변패드</a><Br>
                        <a class="anchors" href="#">탈취/소독제</a><Br>
                        <a class="anchors" href="#">눈/귀 위생용품</a><Br>
                        <a class="anchors" href="#">넥카라</a><Br>
                        <a class="anchors" href="#">해충방지용품</a><Br>
                        <a class="anchors" href="#">고양이화장실</a><Br>
                        <a class="anchors" href="#">고양이모래</a><Br>
                        <a class="anchors" href="#">기타고양이위생용품</a><Br>
                        <a class="anchors" href="#">고양이모래매트</a>
                    </div>
                </div>

                <!-- 6번째 버튼 -->
                <div class="btn_group">
                    <button type="button" class="btn">
                        식기/급수기
                    </button>
                    <div class="a_dropdown">
                        <img src="https://puppydog.co.kr/web/upload/appfiles/0zdpAngaKBFnlCcCqpCU4A/30737a1116688c3753cd920d9bcc558a.jpg">
                        <a class="anchors" href="#">급수기</a><Br>
                        <a class="anchors" href="#">급식기</a><Br>
                        <a class="anchors" href="#">정수기</a><Br>
                        <a class="anchors" href="#">사료보관통</a><Br>
                    </div>
                </div>

                <!-- 7번째 버튼 -->
                <div class="btn_group">
                    <button type="button" class="btn">
                        외출용품
                    </button>
                    <div class="a_dropdown">
                        <img src="https://puppydog.co.kr/web/upload/appfiles/0zdpAngaKBFnlCcCqpCU4A/1d9e5418587f78199bc00f79089198cc.jpg">
                        <a class="anchors" href="#">가슴줄</a><Br>
                        <a class="anchors" href="#">리드줄</a><Br>
                        <a class="anchors" href="#">목걸이/인식표</a><Br>
                        <a class="anchors" href="#">목줄</a><Br>
                        <a class="anchors" href="#">유모차</a><Br>
                        <a class="anchors" href="#">이동가방/이동장</a><Br>
                        <a class="anchors" href="#">차량용캐리어/시트</a><Br>
                        <a class="anchors" href="#">입마개</a>
                    </div>
                </div>

                <!-- 8번째 버튼 -->
                <div class="btn_group">
                    <button type="button" class="btn">
                        장난감/훈련용품
                    </button>
                    <div class="a_dropdown">
                        <img src="https://puppydog.co.kr/web/upload/appfiles/0zdpAngaKBFnlCcCqpCU4A/a2eda75b781d420e1c741d847bd0ea61.jpg">
                        <a class="anchors" href="#">공/원반</a><Br>
                        <a class="anchors" href="#">인형</a><Br>
                        <a class="anchors" href="#">터널/큐브</a><Br>
                        <a class="anchors" href="#">훈련용품</a><Br>
                        <a class="anchors" href="#">기타장난감</a><Br>
                        <a class="anchors" href="#">캣타워</a><Br>
                        <a class="anchors" href="#">고양이스크래쳐</a><Br>
                        <a class="anchors" href="#">고양이장난감</a>
                    </div>
                </div>

                <!-- 9번째 버튼 -->
                <div class="btn_group">
                    <button type="button" class="btn">
                        하우스/안전용품
                    </button>
                    <div class="a_dropdown">
                        <img src="https://puppydog.co.kr/web/upload/appfiles/0zdpAngaKBFnlCcCqpCU4A/67f00972192237284703c33adc45624a.jpg">
                        <a class="anchors" href="#">계단/스텝</a><Br>
                        <a class="anchors" href="#">매트</a><Br>
                        <a class="anchors" href="#">안전문</a><Br>
                        <a class="anchors" href="#">울타리</a><Br>
                        <a class="anchors" href="#">쿠션/방석</a><Br>
                        <a class="anchors" href="#">하우스/텐트</a><Br>
                        <a class="anchors" href="#">해먹</a>
                    </div>
                </div>

                <!-- 용품과 Q&A 사이의 칸 나누기 -->
                <div style="color: rgba(0, 0, 0, 0.65); font-size: 13px;">
                   &nbsp;|&nbsp; 
                </div>

                <!-- 10번째 버튼 -->
                <div class="btn_group">
                    <button type="button" class="btn">
                        Q & A
                    </button>
                </div>

                <!-- 11번째 버튼 -->
                <div class="btn_group">
                    <button type="button" class="btn">
                        REVIEWS
                    </button>
                    <div class="a_dropdown">
                        <img src="https://puppydog.co.kr/web/upload/appfiles/0zdpAngaKBFnlCcCqpCU4A/033d26c86fb5c58d7e79febbc4f930a5.jpg">
                    </div>
                </div>

                <!-- 12번째 버튼 -->
                <div class="btn_group">
                    <button type="button" class="btn">
                        CS . HELP
                    </button>
                </div>

            </div>

            <!-- 헤더 우측 검색버튼 -->
            <div class="col-lg-1 col-md-1 col-sm-1 col_3rd">
                <!-- 모달 여는 버튼 -->
                <button class="btn-open-modal first_outer_open_modal_btn" type="button" class="btn dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
                    <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="black" class="bi bi-search" viewBox="0 0 16 16">
                        <path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z"/>
                    </svg> 
                </button>

                <!-- 모달 안의 내용 -->
                <div class="modal first_modal">
                    <div class="modal_body first_modal_body">

                        <div class="modal_first_inner">
                            <button class="modal_inner_close_btn">
                                <svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" fill="currentColor" class="bi bi-x-lg" viewBox="0 0 15 15">
                                    <path d="M2.146 2.854a.5.5 0 1 1 .708-.708L8 7.293l5.146-5.147a.5.5 0 0 1 .708.708L8.707 8l5.147 5.146a.5.5 0 0 1-.708.708L8 8.707l-5.146 5.147a.5.5 0 0 1-.708-.708L7.293 8 2.146 2.854Z"/>
                                </svg>
                            </button>
                        </div>
                        <form class="#" action="#">
                            <div class="modal_second_inner">
                                <input type="text" class="modal_search_input" method="#">
                                <button class="modal_search_btn" type="submit" onclick="msi()">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="white" class="bi bi-search" viewBox="0 0 16 16">
                                        <path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z"/>
                                    </svg> 
                                </button>
                            </div>
                        </form>

                        <div class="modal_third_inner">
                            <button class="modal_inner_btn_1st"><a href="#"># 시저캔</a></button>
                            <button class="modal_inner_btn_2nd"><a href="#"># 개껌</a></button>
                            <button class="modal_inner_btn_3rd"><a href="#"># 스텝</a></button>
                            <button class="modal_inner_btn_4th"><a href="#"># 목줄</a></button>
                            <button class="modal_inner_btn_5th"><a href="#"># 배변봉투</a></button>
                            <button class="modal_inner_btn_6th"><a href="#"># 터그놀이</a></button>
                        </div>
                        
                    </div>
                </div>
            </div>
        </div>
    </div>
<script>

/* 왠지 모르겠지만 이 부분은 위로 못보냄 */
var modal = document.querySelector('.first_modal');
var btnOpenModal=document.querySelector('.first_outer_open_modal_btn');

     

    btnOpenModal.addEventListener("click", ()=>{
        modal.style.display="flex";

                   
    });

function msi() {
    var m_i_s_i = $('.first_modal .modal_second_inner .modal_search_input');
    if (m_i_s_i.val() == null || m_i_s_i.val().length < 1 || m_i_s_i.val() == "") {
        alert("검색어를 입력해주세요");
}
}

</script>

    <hr style="width: 100%;" class="my-0 hr_third">
    
    






    <script type="text/javascript" src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
    <script type="text/javascript" src="js/jquery-3.7.1.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.bundle.min.js"></script>
    

    
</body>
</html>