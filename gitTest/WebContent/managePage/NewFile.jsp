<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>화면 구상</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript" src="../js/topBar.js"></script>
<link rel="stylesheet" href="../css/topBar.css">
<style media="screen">
.container, .guide {
	outline: red solid 2px;
}
</style>
</head>
<body>
<div id="container">
	<jsp:include page="topBar.jsp"></jsp:include>
	<div class="guide" id="body_container">
	<%-- 몸통 부분 --%>
	</div>
</div>
</body>
</html>
