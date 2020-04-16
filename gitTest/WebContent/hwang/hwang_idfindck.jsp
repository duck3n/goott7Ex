
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
	String email1 = request.getParameter("email1");
	String email2 = request.getParameter("emaildomain");
	String email = email1 + "@" + email2;
	
	//out.println(name + " " + email);
	 hwang_memberDao dao = new hwang_memberDao();
		String id = dao.searchId(email);
		
		
		/* out.println(name);
		out.println(email); */
		
	%>
	<%if(id==null){ %>
<script type="text/javascript">
alert("존재하지 않은 계정입니다");
history.go(-1);
</script>
<%}else{%>
<script type="text/javascript">
alert("찾으시는 계정은 <%=id%>입니다.");
window.close();
</script>
<%}%>
</body>
</html>