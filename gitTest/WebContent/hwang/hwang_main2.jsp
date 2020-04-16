<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<style>
a{
text-decoration: none;
}
</style>
<body>
<%
Cookie[] c = request.getCookies();
if (c != null) {
	for (Cookie cf : c) {
		if (cf.getName().equals("id")){
			String ids = cf.getValue();
			session.setAttribute("id", ids);
		}
	}
}

// 세션값 가져오기
String id = (String) session.getAttribute("id"); // Object 타입이므로 다운캐스팅
%>
<header>
									<!-- 페이지 타이틀을 클릭하면 메인화면으로 이동 -->
	<p  style="text-align: center; "><a href='main2.jsp'> 
	<font color="black" id="HOME"> HOMEPAGE </font></a>
	<div style="text-align: right;">

	<jsp:include page="../hwang/hwang_menu2.jsp"/> <!-- 상세메뉴인 menu.jsp를 include해 사용 -->
	</div>
	<hr>
	<br>
	<br>
</header>
<section><p style="text-align: center;">ddd</p></section>
<footer></footer>
</body>