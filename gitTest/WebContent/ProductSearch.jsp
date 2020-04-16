<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>네이버 메인 따라 만들기</title>
<link rel="stylesheet" href="../css/ProductSearchLayout.css" />
</head>
<body>

<%
String pname = "";
String fno = request.getParameter("fno");

String searchString = "";

if(request.getParameter("searchString") != null){
	searchString = request.getParameter("searchString");
	request.getSession().setAttribute("searchString", searchString);
}
else if(request.getSession().getAttribute("searchString") != null){
	searchString = (String)request.getSession().getAttribute("searchString");
}


	if(fno==null){
		pname = "SearchProduct.jsp";
	}else {
		pname = fno + ".jsp";
	
	}

%>
	
	
	<form action="#">
	<input type="text" name="searchString" id="searchString" value=<%=searchString %> />
	<input type="submit" value="검색" />
	</form>
	
	
	내부가 바뀔 페이
	<div id="container">
		<jsp:include page="nav.jsp"></jsp:include>
		<jsp:include page="<%=pname %>"></jsp:include>


	</div>
	
</body>
</html>