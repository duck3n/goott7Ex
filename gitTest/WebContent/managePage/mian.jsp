<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<!-- <link rel="stylesheet" href="../css/topBar.css"> -->
<style media="screen">
html, body {
	margin: 0;
 	padding: 0;
	background-color: #eee8da;
	min-height: 80%;
}
#container {
	margin: 0;
	padding: 0;
 	width: 100%;
 	height: 100%;
}
/* 몸통 */
#body_container{
	padding-top: 150px;
	width: 90%;
	margin: 0 auto;
}
</style>
</head>
<%
	String par = request.getQueryString();
	String fno = request.getParameter("fno");
	String parm[] = new String[2];
	String uri = "";
	
// 	System.out.println("");
// 	System.out.println("parm[1] : "+parm[1]);
	
	int x = 0;
	//인클루드 초기값
	if(fno==null) {fno = "board_list";}
	//넘어오는 파라미터 쿼리가 없을 경우 
	if(par==null){
		par = "";
	}else {
		parm = par.split(fno+"&");
		System.out.println("parm.len : "+parm.length);
	}
	
	//사용할 파라미터 합치기
	if(parm.length<=2){
		uri = fno+".jsp?"+parm[parm.length-1];
	}else{
		uri = fno+".jsp"; 
	}
		
	//테스트
// 	System.out.println("par : "+par);
// 	System.out.println("fno : "+fno);
// 	System.out.println(uri+"!");
%>
<body>
  <div id="container">
  	<jsp:include page="topBar.jsp"></jsp:include>
  	<div class="guide" id="body_container">
  	<%-- 몸통 부분 --%>
  	<jsp:include page="<%=uri %>"></jsp:include>
  	</div>
  </div>

<!-- ************* 요부분은 다른페이지에서 처리후 이곳으로 이동 ***************** -->

<!--   	파라미터로 받은 유저값을 세션(또는 쿠키)으로 전환 -->


<!-- 	세션에서 사용자 값을 가져와서 -->
<!-- 	매니저아이디와 매칭, 맞다면 리스트로 -->
</body>
</html>
