<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript" src="../js/topBar.js"></script>
<link rel="stylesheet" href="../css/topBar.css">
<style media="screen">
.container, .guide {
	outline: red solid 2px;
}
</style>
<div id="container">
	<jsp:include page="topBar.jsp"></jsp:include>
	<div class="guide" id="body_container">
	<%-- 몸통 부분 --%>
	</div>
</div>

<%
	//파라미터로 받은 유저값을 세션(또는 쿠키)으로 전환
	String mid = request.getParameter("ID");

	response.sendRedirect("board_list.jsp");

	
	
	
	//세션에서 사용자 값을 가져와서
	//매니저아이디와 매칭, 맞다면 리스트로
%>

<%-- <jsp:useBean id=""></jsp:useBean> --%>