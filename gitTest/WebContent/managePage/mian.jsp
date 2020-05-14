<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<link rel="stylesheet" href="../css/container.css">
</head>
<body>
  <div id="container">
  	<jsp:include page="topBar.jsp"></jsp:include>
  	<div class="guide" id="body_container">
  	<%-- 몸통 부분 --%>
  	</div>
  </div>

<!-- ************* 요부분은 다른페이지에서 처리후 이곳으로 이동 ***************** -->

<!--   	파라미터로 받은 유저값을 세션(또는 쿠키)으로 전환 -->


<!-- 	세션에서 사용자 값을 가져와서 -->
<!-- 	매니저아이디와 매칭, 맞다면 리스트로 -->
</body>
</html>
