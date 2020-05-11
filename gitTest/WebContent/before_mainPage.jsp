<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="./css/mainPage.css" />
<link rel="stylesheet" href="./css/mainNav.css" />


<%
session.invalidate(); // 세션 초기화

// 로그인 유지 쿠키 삭제
Cookie[] c = request.getCookies();
if (c != null) {
	for (Cookie cf : c) {
		if (cf.getName().equals("id")) {
			cf.setMaxAge(0);
			cf.setPath("/");
			response.addCookie(cf);
		}
	}
}

%>


</head>
<body>

	<div id="container">

		<jsp:include page="before_mainNav.jsp"></jsp:include>


	</div>

	<div id="body_container">
		<img src="../gitTest/mainResource/mainBG.gif" alt="" />

	

	</div>

</body>
</html>