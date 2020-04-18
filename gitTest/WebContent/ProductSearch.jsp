<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>검색</title>
<link rel="stylesheet" href="./css/ProductSearchLayout.css" />
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
	 
	
	System.out.println("id : " + id);

%>
	
	
	


	

		
	


	
	<%
	if(id == null){
	
	%>


		<jsp:include page="before_mainNav.jsp"></jsp:include>

	<%
	}
	else{
		
	
	%>
	<jsp:include page="mainNav.jsp"></jsp:include>
	
	<%
	}
	%>
	
	
	
	<div id="containerX">
	
	<div id="searchTool">
	<form action="#">
	<input type="text" name="searchString" id="searchString" value=<%=searchString %> />
	<input type="submit" value="검색" />
	</form>
	
	
	
	</div>
	
	
	
	

	<div id="bodyX">
		<jsp:include page="nav.jsp"></jsp:include>
		<jsp:include page="<%=pname %>"></jsp:include>

	</div>
	
	
</div>	
</body>
</html>