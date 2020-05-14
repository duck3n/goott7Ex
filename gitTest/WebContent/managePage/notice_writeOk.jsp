<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>waiting page</title>
<script type="text/javascript">
	window.onload = function() {
		setTimeout(function() {
			location.href = "../notice.do?cmd=list";
		},2000);
	}
</script>
<style type="text/css">
#title{
	margin: 100px 50px;
	width: 100px;
}
#wait{
	margin: 50px 50px;
	font-size: 15px;
}
</style>
</head>
<body>
	<div id="title">
		<h2>
			제목 : <c:out value="${sessionScope.title}"/>
		</h2>
	</div>
	<div id="wait">
		잠시후 목록으로 이동합니다..
	</div>
</body>
</html>