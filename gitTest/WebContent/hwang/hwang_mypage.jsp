<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>




<style type="text/css">
body{
background-color: #ffcab3;
}

	#account {
		font-weight : bold;
		font-size: 20px;
	}
	#logout {
	  text-decoration: underline;
	}
	
	
</style>



</head>

<body>



	<div id="container">

		<jsp:include page="../mainNav.jsp"></jsp:include>


	</div>



<div id="mypage">

<aside>
			<section>
	<h2>계정관리</h2>
		<aside>
 <ul>
  <a href="../hwang/hwang_mypagemenu.jsp"><p>회원정보 수정</p></a>
  
  <a href="BoardSearchIndex.jsp"> <p>고객센터</p> </a>
  
  <a href="../hwan/hwang_bank.jsp"><p>계좌 및 적립금 관리</p></a>
  
 </ul>
</aside>
</section>

</aside>
</div>
</body>
</html>