
<%@page import="DAO.hwang_memberDao"%>
<%@page import="VO.hwang_memberVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$("#modi").on('click', function() {
		document.frm.action = "../hwang/hwang_modify.jsp";
		document.frm.method = "get";
		document.frm.submit();
	});
});// document ready end
function email_change() {
	  var s = document.getElementById("emaildomain");
	  var value = s.options[s.selectedIndex].value;
  if (value != "") {
      email2.disabled = true;
      email2.value = value;
  } else {
      email2.disabled = false;
  }

  email2.value = value;
  email2.focus();
  return;
}
</script>
<style type="text/css">	
a{
text-decoration: none;
}
#custom {
	margin-left : 900px;
	margin-bottom : 200px;
}
#modify{
	margin-left : 865px;
}
#tel1 {
	margin-left : 50px;
}
#id1 {
	margin-left : 60px;
}
#pw1 {
	margin-left : 55px;
}
#modi {
	margin-left : 65px;
}
#email {
	margin-left : 70px;
}
#email1, #email2, #emaildomain {
	margin-left : 10px;
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
	<p  style="text-align: center; "><a href='../hwang_main2.jsp'> 
	<font color="black" id="HOME"> HOMEPAGE </font></a>
	<div style="text-align: right;">

	<jsp:include page="../hwang/hwang_menu2.jsp"/> <!-- 상세메뉴인 menu.jsp를 include해 사용 -->
	
	</div>
	<hr>
	<br>
	<br>
</header>
<section>
<a href="../hwang/hwang_mypage.jsp"><p>이전</p></a><span id="custom">회원정보수정</span>
<br />
<hr />
<hr />
<div id = "modify">
<form action="#" name = "frm">  
	<p id="id1">아이디</p>
	<input type="text" name="id" id="id" value ="<%=id%>" />
	<p id="pw1">비밀번호</p>
	<input type="text" name="pw" id="pw"  />
	<p id="tel1">핸드폰번호</p>
	  <select name = "txtMobile1" id="txtMobile1">
		 <option value="">::선택::</option>
		 <option value="011">011</option>
		 <option value="016">016</option>
		 <option value="017">017</option>
		 <option value="019">019</option>
		 <option value="010">010</option>
	</select>
	<input type="text" name = "txtMobile2" id="txtMobile2" value="" size="4" maxlength="4" />
	<input type="text" name = "txtMobile3" id="txtMobile3" value="" size="4" maxlength="4" />
	<br />
	<br />
	<p id="email">이메일</p>
	 <input type="text" name="email1" id="email1" value="" class="frm_input" > @
				    <input type="text" name="email2" id="email2" value="" class="frm_input"disabled >
				   <select name="emaildomain" id = "emaildomain" class="frm_input" onChange="email_change();">
						        <option value="">직접입력</option>
						        <option value="naver.com">naver.com</option>
						        <option value="gmail.com">gmail.com</option>
						        <option value="daum.net">daum.net</option>
						        <option value="hanmail.net">hanmail.net</option>
						        <option value="nate.com">nate.com</option>
   							 </select>
	<br />
	<br />
	<input type="button" value="수정" id="modi"/>
	</form>
</div>

</section>
<footer></footer>
</body>