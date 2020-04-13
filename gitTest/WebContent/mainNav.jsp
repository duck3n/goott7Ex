<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style type="text/css">

<style type="text/css">
html, body {
	margin: 0;
	padding: 0;
	min-height: 100%;
}

#container {
	margin: 0;
	padding: 0;
	width: 100%;
}

/* 네비바 CSS */
#nav_container {
	height: 100px;
	width: 100%;
	position: fixed;
	margin-top: 0;
}

#nav_local {
	width: 100%;
	margin-top: 0;
	margin-left: 100px;
}

nav li {
	float: left;
	height: 50px;
	width: 215px;
	list-style-type: none;
	text-align: center;
	padding-top: 30px;
}

nav ul {
	padding: 0;
	margin-top: 10px;
}

li a {
	text-decoration: none;
	color: #403732;
}

/* 몸통 */
#body_container {
	width: 100%;
}

.test {
	width: 100%;
	height: 1080px;
}

#others {
	width: 230px;
	padding-top: 0px;
	height: 80px;
}

.login {
	width: 85%;
	height: 20px;
	text-align: left;
	background-color: red;
}

#logo {
	padding-top: 0px;
}

#menuX {
	width: 50px;
	text-align: right;
	padding-top: 20px;
	padding-right: 0px;
}

#mainStick {
	padding-top: 2px;
	text-align: right;
	height: 80px;
}

#searchItem {
	margin-left: 70px;
	padding-top: 20px;
}

#searchBox {
	background-image: url("../gitTest/mainResource/searchBar.png");
	background-repeat: no-repeat;
	border-radius: 35px;
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
									<input type="text" name="searchString" id="searchString" /> <input
										type="submit" id="submit" value="    " />
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
							<a href="#"><img src="../gitTest/mainResource/sign up.png"
								id="sign" /></a> <img src="../gitTest/mainResource/stick.png"
								id="stick" /> <a href="#"><img
								src="../gitTest/mainResource/in.png" id="in" /></a>
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

					<li class="nav" id="menuX"><a href="#"> <img
							src="../gitTest/mainResource/menu.png" id="menu" />
					</a></li>



					<!-- 여기까지 -->
				</nav>
			</div>




</body>
</html>