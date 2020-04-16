<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="../gitTest/css/mainPage.css" />
<link rel="stylesheet" href="../gitTest/css/mainNav.css" />


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



</head>
<body>

	<div id="container">

		<jsp:include page="mainNav.jsp"></jsp:include>


	</div>

	<div id="body_container">
		<img src="../gitTest/mainResource/mainBG.gif" alt="" />

		<div class="test">

		<jsp:include page="asdasdad.jsp"></jsp:include>
			
		</div>
		
		<div class="test"></div>
		<div class="test"></div>
		<div class="test"></div>
		<div class="test"></div>

	</div>

</body>
</html>