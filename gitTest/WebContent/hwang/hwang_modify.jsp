
<%@page import="VO.hwang_memberVo"%>
<%@page import="DAO.hwang_memberDao"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	
	String id = request.getParameter("id");

	String pw = request.getParameter("pw");
	
	String txtMobile1 = request.getParameter("txtMobile1");
	String txtMobile2 = request.getParameter("txtMobile2");
	String txtMobile3 = request.getParameter("txtMobile3");
	String phone = txtMobile1 + "-" + txtMobile2 + "-" + txtMobile3;
	
	String email1 = request.getParameter("email1");
	String email2 = request.getParameter("emaildomain");
	String email = email1 + "@" + email2;
	
	
	/*out.println(id + " " + pw + " " + phone + " " + email); */
	

	 
	// 변경 수행 => 데이터 베이스 입력
	
   hwang_memberDao dao = new hwang_memberDao();
    hwang_memberVo vo = new hwang_memberVo(id, pw, phone, email);
	dao.updateData(id,pw,phone,email);
	out.println("<script>alert('정보 수정되었습니다.'); location.href='../mainPage.jsp';</script>"); 
	
	
	
%>
</body>
</html>