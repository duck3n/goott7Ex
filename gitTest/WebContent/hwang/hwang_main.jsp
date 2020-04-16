<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<style>
a{
text-decoration: none;
}
</style>
<body>
<header>
									<!-- 페이지 타이틀을 클릭하면 메인화면으로 이동 -->
	<p  style="text-align: center; "><a href='main.jsp'> 
	<font color="black" id="HOME"> HOMEPAGE </font></a></p>
	<div style="text-align: right;">

	<jsp:include page="../hwang/hwang_menu.jsp"/> <!-- 상세메뉴인 menu.jsp를 include해 사용 -->
	</div>
	<hr>
	<br>
	<br>
</header>
<section><p style="text-align: center;">안녕하세요</p></section>
</body>