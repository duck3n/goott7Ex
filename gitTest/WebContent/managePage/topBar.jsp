<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
$(function() {
	$(function() {
	// 	네비 부분 스크립트
		console.dir($('#body_container'));
		$('.navItem').hide();
		$('.nav').hover(nav_slide);

	});
});
//개별 슬라이드 토글
function nav_slide() {
	//.nav의 자식들(li)
	var item = $(this).find('li');
	//슬라이드 토글(개별)
	$(item).stop().slideToggle(300);
}
//이메일 전송
function input_Mail() {
	window.open("../managePage/input_mail.jsp", "", "width=370, height=360, resizable=no, scrollbars=no, status=no");
}
</script>
<style media="screen">
/* 네비바 CSS */
#nav_container {
	height: 60px;
	width: 100%;
	background-color: #c4c79d;

	position: fixed;
	margin-top: 0;
}
#nav_local{
	width: 600px;
	margin: 0 auto;
	margin-top: 30px;
}
nav li{
	float: left;
	height: 30px;
	width: 150px;
	list-style-type: none;
	text-align: center;
	padding-top: 5px;
}
nav ul{
	padding: 0;
	margin-top: 10px;
}
li a{
	text-decoration: none;
	color: #403732;
}

#mail_button{
	padding: 0;
}
</style>
<div class="guide" id="nav_container">
	<div class="guide" id="nav_local">
		<nav>
			<li class="nav"><a href="mian.jsp">문의게시판</a>
				<ul>
					<li class="navItem"><a href='mian.jsp'>전체 목록</a></li>
					<li class="navItem"><a href="mian.jsp?fno=board_list&flag=true">답변</a></li>
				</ul></li>
			<li class="nav"><a href="mian.jsp?fno=notice_list">공지사항</a>
				<ul>
					<li class="navItem"><a href="mian.jsp?fno=notice_list">목록</a>
					<li class="navItem"><a href="mian.jsp?fno=notice_write">등록</a>
				</ul></li>
			<li class="nav"><a href="javascript:input_Mail();">광고 발송</a>
				<ul>
				</ul></li>
			<li class="nav"><a href="#">트래픽</a>
			<ul>
			</ul></li>
		</nav>
	</div>
</div>
<!-- 네비 컨테이너 끝 -->
