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
	//String name = request.getParameter("name");
	String id = request.getParameter("id");
	String name = request.getParameter("name");
	//out.println(name + " " + email);
	 hwang_memberDao dao = new hwang_memberDao();
		String pw = dao.searchPw(id, name);
		
		out.println(id);
		out.println(name);
		
		/* out.println(name);
		out.println(email); */
		
	%>
	<%if(pw==null){ %>
<script type="text/javascript">
alert("아이디가 존재하지 않습니다.");
history.go(-1);
</script>
<%}else{%>
<script type="text/javascript">
alert("찾으시는 비밀번호는 <%=pw%>입니다.");
window.close();
</script>
<%}%>
</body>
</html>