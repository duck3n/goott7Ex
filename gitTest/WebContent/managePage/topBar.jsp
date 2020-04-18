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
function send_Mail() {
	window.open("../managePage/test_mail.jsp", "", "width=370, height=360, resizable=no, scrollbars=no, status=no");
}
</script>
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
			<li class="nav"><a href="javascript:send_Mail();">광고 발송</a>
				<ul>
				</ul></li>
		</nav>
	</div>
</div>
<!-- 네비 컨테이너 끝 -->
