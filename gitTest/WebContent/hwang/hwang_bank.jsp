<%@page import="DAO.hwang_memberDao"%>
<%@page import="VO.hwang_memberVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$("#save").on('click', function() {
		document.frm.action = "hwang_banksave.jsp";
		document.frm.method = "get";
		document.frm.submit();
	});
});// document ready end

</script>
<style type="text/css">	
a{
text-decoration: none;
}
#custom {
	margin-left : 900px;
	margin-bottom : 200px;
}
#account {
	margin-left : 850px;
}
</style>

<body>
<%
	hwang_memberVo vo = new hwang_memberVo();
	hwang_memberDao dao = new hwang_memberDao();
	String id = (String) session.getAttribute("id"); // Object 타입이므로 다운캐스팅
	String pw = (String) session.getAttribute("pw"); // Object 타입이므로 다운캐스팅
%>
<header>
									<!-- 페이지 타이틀을 클릭하면 메인화면으로 이동 -->
	<p  style="text-align: center; "><a href='main2.jsp'> 
	<font color="black" id="HOME"> HOMEPAGE </font></a>
	<div style="text-align: right;">

	<jsp:include page="../hwang/hwang_menu2.jsp"/> <!-- 상세메뉴인 menu.jsp를 include해 사용 -->
	
	</div>
	<hr>
	<br>
	<br>
</header>
<section>
<a href="main2.jsp"><p>이전</p></a><span id="custom">계좌관리</span>
<br />

<br />
<hr />
<hr />


<form action="#" name = "frm">
</section>

<input type="text" name="account" id="account" placeholder = "계좌번호 입력 -제외" />
<select name="bank" id="bank">
				       <option value="농협">농협</option>
				       <option value="우리">우리</option>
				       <option value="ibk">기업</option>
				       <option value="신한">신한</option>
				       <option value="국민">국민</option>
				     

</select>
<input type="button" value="저장" id="save" />
</form>
<footer></footer>
</body>