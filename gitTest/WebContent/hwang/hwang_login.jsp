<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	body{ background-color: #FFD8D8;}
	img{
		width: 70px;
		height: 70px;
		display: block;
		margin: auto auto;
	}
	#title{
		margin-top: 50px;
	
	}
	#container{
		margin-top: 80px;
	}
	#btn{
		border: 1px solid #747474;
		background-color: rgba(0,0,0,0);
		color: #747474;
		border-radius: 5px;
	}
</style>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
	/* $(document).ready(function(){
		$("#loginbtn").on('click', function() {
			//일반 방식
			/* //var id = document.getElementById("id");
			var id = document.frm.id.value;
			
			
			//console.log(id);
			//path방식
			var pw = document.frm.pw.value;
			var recheck = document.frm.recheck.value;
			var name = document.frm.name.value;
			var birth =document.frm.birth.value;
			var mp1 = document.frm.mp1.value;
			var mp2 = document.frm.mp2.value;
			var email = docuemnt.frm.email.value;
	 */
	//console.log(id+","+pw+","+recheck+","+name+","+
	//birth+","+mp1+","+mp2+","+email);
	//jquery 방식
	/* var id = $("#id");
	
	console.log(id); 
	if($("#id").val()==""){
		alert("아이디 입력");
		$("#id").focus();
		return;
		
	}else if($("#pw").val()==""){
		alert("패스워드 입력");
		$("#pw").focus();
		 
		return;
	}else {
		document.frm.action = "loginOk.jsp";
		document.frm.method = "get";
		document.frm.submit();
		
	}
	
	
	
	
	});
	
	}); */
	function popup() {
		var url = "../hwang/hwang_idfind.jsp"; //팝업창에 출력될 페이지 URL
		var myWindow = window.open(url, '아이디찾기',
				'width=580,height=330,left=800,top=200');
	}
	function popup1() {
		var url = "../hwang/hwang_pwfind.jsp"; //팝업창에 출력될 페이지 URL
		var myWindow = window.open(url, '비밀번호찾기',
				'width=580,height=330,left=800,top=200');
	}
</script>
</head>
<body>
	<%
		Cookie[] c = request.getCookies();
		if (c != null) {
			for (Cookie cf : c) {
				if (cf.getName().equals("id")) {
					response.sendRedirect("../mainPage.jsp");
				}
			}
		}
	%>
	
	<div id="title">
		<img src="../mainResource/logo.png" alt="로고 이미지 하나 넣을 거에요"/>
	</div>
	
	<br />
	<br />
	
	<div style="text-align: center;">
		<form action="../hwang/hwang_loginOk.jsp" method="post">
			<!-- <form action="#" name = "frm"> -->
			<div>
				아이디 &nbsp;&nbsp; <input type="text" placeholder="아이디를 입력하세요."
					name="id" id="id" style="height: 30px; margin-left: 30px;" />
			</div>
			<br>
			<div>
				비밀번호 &nbsp;&nbsp; <input type="password" placeholder="비밀번호를 입력하세요."
					name="pw" id="pw" style="height: 30px; margin-left: 15px;" />

			</div>
			<br>
			<br />
			<div>
				<input type="checkbox" name="loginChk" value="true">로그인 상태
				유지<br />
				<button type="submit" id="btn">로그인</button>
				&nbsp;&nbsp; <a href="../hwang/hwang_register.jsp"><button id="btn" type="button">회원가입</button>&nbsp;&nbsp;</a>

			</div>
			<br />
			<br />
			<div>
				<input id="btn" type="button" value="아이디찾기" onclick="popup()" /> <input
					id="btn" type="button" value="비밀번호찾기" onclick="popup1()" />
			</div>

		</form>


	</div>