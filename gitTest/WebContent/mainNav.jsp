<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../gitTest/css/mainNav.css" />


<style type="text/css">
#searchBox {
	background-color: #e7efe5;
	background-repeat: no-repeat;
	border-radius: 15px;
	border-style: solid;
	border-color: #c4d9df #a4c3ca #83afb7;
	height: 40px;
	padding-left: 10px;
}

#searchString {
	background-color: transparent; padding-left : 20px;
	border: none;
	padding-left: 20px;
}

#submit {
	background-image: url("../gitTest/mainResource/searchBtn.png");
	border: none;
	width: 40px;
	height: 40px;
	padding-left: 10px;
}
</style>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">

$(function() {
// 	네비 부분 스크립트
	console.dir($('#body_container'));
	$('.navItem').hide();
	$('.nav').hover(nav_slide);

});

function nav_slide() {
	//.nav의 자식들(li)
	item = $(this).find('li');
	//슬라이드 아걸(개별)
	$(item).stop().slideToggle(300);
}

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


</head>
<body>


<div class="guide" id="nav_container">




			<div class="guide" id="nav_local">
				<nav>

					<!--여기부터 -->
					<li class="nav" id="logo"><a href="#"> <img
							src="../gitTest/mainResource/logo.png" id="Logo" />
					</a></li>

					<li class="nav"><a href="#"> <img
							src="../gitTest/mainResource/searchIcon.png" id="search" />
					</a>
						<ul>
							<li class="navItem" id="searchItem">

								<form id="searchBox" action="ProductSearch.jsp">
									<input type="text" name="searchString" id="searchString" /> 
									<input type="submit" id="submit" value="    " />
								</form>


							</li>
						</ul></li>

					<li class="nav"><a href="#"> <img
							src="../gitTest/mainResource/BRAND LIST.png" id="blandList" />
					</a></li>

					<li class="nav"><a href="#"> <img
							src="../gitTest/mainResource/Clothing.png" id="clothing" />
					</a></li>

					<li class="nav"><a href="#"> <img
							src="../gitTest/mainResource/accessories.png" id="accessories" />
					</a></li>

					<li class="nav"><a href="#"> <img
							src="../gitTest/mainResource/Retailer.png" id="Retailer" />
					</a></li>


					<li class="nav" id="others">

						<div class="login">
							<a href="../gitTest/hwang/hwang_mypage.jsp">마이페이지</a> 
							<img src="../gitTest/mainResource/stick.png"id="stick" /> 
							<a href="../gitTest/hwang/hwang_logout.jsp">로그아웃</a>
						</div> <a href="#"><img src="../gitTest/mainResource/piggy.png"
							id="piggy" /></a> <a href="#"><img
							src="../gitTest/mainResource/wishList.png" id="wishList" /></a> <a
						href="#"><img
							src="../gitTest/mainResource/shoppingBag full.png"
							id="shoppingBag" /></a>

					</li>


					<li class="nav" id="mainStick"><a href="#"> <img
							src="../gitTest/mainResource/mainStick.png" id="mainStick" />
					</a></li>

					<li class="nav" id="menuX"><a href="BoardSearchIndex.jsp"> <img
							src="../gitTest/mainResource/menu.png" id="menu" />
					</a></li>



					<!-- 여기까지 -->
				</nav>
			</div>




</body>
</html>