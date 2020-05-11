<%@page import="Mail.MailSend"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>send_mail</title>
<%
	request.setCharacterEncoding("UTF-8");
	String subject = request.getParameter("tittle");
	String contents = request.getParameter("contents");

	if(subject != null && contents != null){
		MailSend ms = new MailSend();
		ms.MailSend(subject, contents);
	}

	out.println(subject);
	out.println(contents);
%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<!-- <script type="text/javascript">
 $(function(){
 	var ftext = "잠시만 기다려 주세요";
 	var wp = $("#waitPlz");
 	var counter = 1;
 	console.dir(wp);

 	setInterval(function(){
 		if(counter >= 4){
 			wp.val = "잠시만 기다려 주세요";
 			counter = 1;
 		}else{
			wp.append(".");
 			counter++;
 		}
 	}, 800);

 });
</script> -->
</head>
<body>

	<h3 id="">메세지를 전송합니다.</h3>
	<br />
	<br />
	&nbsp&nbsp&nbsp
	<div id="waitPlz">
		잠시만 기다려 주세요
	</div>
</body>
</html>
