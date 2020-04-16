<%@page import="DAO.hwang_memberDao"%>
<%@page import="VO.hwang_memberVo"%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$("#modi").on('click', function() {
		document.frm.action = "modify.jsp";
		document.frm.method = "get";
		document.frm.submit();
	});
});// document ready end

</script>
<style type="text/css">	
a{
text-decoration: none;
}
#custom {
	margin-left : 900px;
	margin-bottom : 200px;
}
</style>

<body>
<%
	hwang_memberVo vo = new hwang_memberVo();
	hwang_memberDao dao = new hwang_memberDao();
	String id = (String) session.getAttribute("id"); // Object 타입이므로 다운캐스팅
	String pw = (String) session.getAttribute("pw"); // Object 타입이므로 다운캐스팅
%>
<header>
									<!-- 페이지 타이틀을 클릭하면 메인화면으로 이동 -->
	<p  style="text-align: center; "><a href="../gitTest/hwang/hwang_main2.jsp"> 
	<font color="black" id="HOME"> HOMEPAGE </font></a>
	<div style="text-align: right;">

	<jsp:include page="../hwang/hwang_menu2.jsp"/> <!-- 상세메뉴인 menu.jsp를 include해 사용 -->
	
	</div>
	<hr>
	<br>
	<br>
</header>
<section>
<a href="../gitTest/hwang/main2.jsp"><p>이전</p></a><span id="custom">계좌관리</span>
<br />
<hr />
<hr />


</section>
<footer></footer>
</body>