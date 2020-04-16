
<%@page import="VO.hwang_memberVo"%>
<%@page import="DAO.hwang_memberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	
	String id = request.getParameter("id");

	String pw = request.getParameter("pw");
	
	String name = request.getParameter("name");
	
	String gender = request.getParameter("gender");
	
	String email1 = request.getParameter("email1");
	String email2 = request.getParameter("emaildomain");
	String email = email1 + "@" + email2;
	
	String txtMobile1 = request.getParameter("txtMobile1");
	String txtMobile2 = request.getParameter("txtMobile2");
	String txtMobile3 = request.getParameter("txtMobile3");
	String phone = txtMobile1 + "-" + txtMobile2 + "-" + txtMobile3;
	
	String grade = request.getParameter("grade");
	
	
	
	String FirstSelectYear = request.getParameter("FirstSelectYear");
	String FirstSelectMonth = request.getParameter("FirstSelectMonth");
	String FirstSelectDay = request.getParameter("FirstSelectDay");
	String birth = FirstSelectYear + "년" + FirstSelectMonth + "월" + FirstSelectDay +"일";
	
	int age = Integer.parseInt(request.getParameter("age")); 
     
	  out.println(id + " " + pw + " " + name + " " + gender + " " +
	email + " " + phone + " " + " " + grade + " " + birth + " " + age); 
	
	

	 
	// 회원가입 수행 => 데이터 베이스 입력
    hwang_memberDao dao = new hwang_memberDao();
    hwang_memberVo vo = new hwang_memberVo(id, pw, name, gender, email, phone,
			grade, birth, age);
	dao.addData(vo);
	out.println("<script>alert('계정이 등록 되었습니다'); location.href='../mainPage.jsp';</script>");  
 
	
%>
<%-- <%=id %>
<%=pw %>
<%=name %>
<%=gender %>
<%=email %>
<%=phone %>
<%=favorite %>
<%=grade %>
<%=birth %>
<%=age %> --%>

</body>
</html>