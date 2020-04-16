<%@page import="java.net.URLEncoder"%>
<%@page import="DAO.hwang_memberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	// id, pw 정보를 얻어와서 db에 접근한 다음 현재 db에 회원이 있는지 여부를 체크

	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String loginChk = request.getParameter("loginChk");
	hwang_memberDao dao = new hwang_memberDao();

	boolean flag = dao.isExist(id, pw);

	//회원 이면 로그인 기능 --> 쿠키를 통해서 기능을 수행
	if (flag == true) {
		// 로그인 작업 -> 세션값 생성
		session.setAttribute("id", id);
		session.setAttribute("pw", pw);

		// 사용자의 로그인 유지 여부를 null 체크로 확인 
		if (loginChk != null) { // 체크한 경우
			Cookie c = new Cookie("id", id);
			c.setMaxAge(60 * 2);
			c.setPath("/");
			response.addCookie(c);
		}

%>
	<script>
		alert("인증되었습니다.");
		location.href = "../mainPage.jsp"; // 쿠키 정보도 같이 넘어감
	</script>
<%
	} else {
%>
	<script>
		alert("아이디나 비밀번호가 다릅니다.");
		location.href = "../hwang/hwang_login.jsp";
	</script>
<%
	}
%>

