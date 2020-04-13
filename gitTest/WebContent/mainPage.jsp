<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

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


<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
	$(function() {
		// 	네비 부분 스크립트
		console.dir($('#nav_container'));
		$('.navItem').hide();
		$('.nav').hover(nav_slide);

	});

	function nav_slide() {
		//.nav의 자식들(li)
		item = $(this).find('li');
		//슬라이드 
		$(item).stop().slideToggle(300);
	}
</script>





</head>
<body>

	<div id="container">

	<jsp:include page="mainNav.jsp"></jsp:include>


		
	</div>

		<div id="body_container">
			<img src="../gitTest/mainResource/mainBG.gif" alt="" />

			<div class="test">

				<jsp:include page="BoardSearchIndex.jsp"></jsp:include>
			</div>
			<div class="test"></div>
			<div class="test"></div>
			<div class="test"></div>
			<div class="test"></div>

		</div>

</body>
</html>