<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<style>
<!--
a.cash {
	margin-right : 15px;
	position: relative;
	display: inline;
}
a.cash span {
	position: absolute;
	width: 180px;
	color: #FFFFFF;
	background: #000000;
	height: 30px;
	line-height: 30px;
	text-align: center;
	display: none;
	border-radius: 6px;
}
a.cash span:after {
	content: '';
	position: absolute;
	top: 100%;
	left: 50%;
	margin-left: -8px;
	width: 0;
	height: 0;
	border-top: 8px solid #000000;
	border-right: 8px solid transparent;
	border-left: 8px solid transparent;
}
a:hover.cash span {
	display: block;
	opacity: 0.8;
	bottom: 30px;
	left: 50%;
	margin-left: -76px;
	z-index: 999;
}
-->
</style>
<script>
var loadMenu = function(u, callback){
	$.ajax({
		url: u,
		method: 'GET',
		success: function(data){
			callback(data);
		}
	});
};


var loadmypage = function(data){ // section 영역을 비우고 그 자리에 mypage 페이지를 넣는다.
	$("section").empty();
	$("section").html(data);
};
var loadshop = function(data){ 
	$("section").empty();
	$("section").html(data);
};

var loadlogout = function(data) {
	$("section").empty();
	$("section").html(data);
}



$(function(){
	var $menuArr = $("#coreTopMenu>span>a"); // 메뉴(Login, Join) 페이지를 찾아 배열형태로 변수에 저장.
	$menuArr.click(function(event){		
		var url = $(this).attr('href');
		switch(url){
		
		case '../hwang/hwang_mypage.jsp':
			loadMenu(url, loadmypage);
			break;
		case '../hwang/hwang_shop.jsp':
			loadMenu(url, loadshop);
			break;
		case '../hwang/hwang_logout.jsp':
			loadMenu(url, loadlogout);
			break;
		};
	return false;  //이벤트전달 중지
	});
});
</script>    

<div>
<ul  id="coreTopMenu">
<span><a href='../hwang/hwang_logout.jsp'><font color="black"> 로그아웃 </font></a></span>&nbsp;&nbsp;
<a class="cash">적립금
<span>적립금 : 얼마있음 1212</span></a>
<span><a href='../hwang/hwang_mypage.jsp'><font color="black"> 마이페이지 </font></a></span>&nbsp;&nbsp;
<span><a href='../hwang/hwang_shop.jsp'><font color="black"> 위시리스트 </font></a></span>&nbsp;&nbsp;
</ul>
</div>