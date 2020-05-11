<%@page import="VO.won_boardVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="DAO.BoardSearchDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">
body{
background-color: #ffcab3;	
}
</style>
</head>

<body>




<%
	String searchBString = request.getParameter("searchBString");
String select = request.getParameter("category");

	if(request.getParameter(searchBString) != null){
		searchBString = request.getParameter("searchBString");
		request.getSession().setAttribute("searchBString", searchBString);
	}
	else if(request.getSession().getAttribute("searchBString") != null){
		searchBString = (String)request.getSession().getAttribute("searchBString");
	}

System.out.println("검색어 : " + searchBString);	
	
BoardSearchDAO dao = new BoardSearchDAO();
%>


<table>
	<tr>
		<td>번호</td>
		<td>카테고리</td>
		<td>제목</td>
		<td>작성자</td>
		<td>날짜</td>
		<td>답변유무</td>
	</tr>


<%
	ArrayList<won_boardVO> list = new ArrayList<won_boardVO>();
	
	if(select.equals("title")){
		list = dao.searchTitle(searchBString);
	}
	
	else if(select.equals("contents")){
		list = dao.searchContents(searchBString);
	}
	
	else if(select.equals("titlecontents")){
		list = dao.searchConTitle(searchBString);
	}
	else if(select.equals("id")){
		list = dao.searchMemid(searchBString);
	}

for(won_boardVO vo : list) {
%>

<tr>
	
	<td><%=vo.getBno() %></td>
	<td><%=vo.getCategory() %></td>
	<td><a href="../gitTest/won/board_detail.jsp?bno=<%=vo.getBno() %>"><%=vo.getTitle() %></a></td>
	<td><%=vo.getMemid() %></td>
	<td><%=vo.getDates() %></td>
	<td><%=vo.getStatus() %></td>




<%
}
%>

</tr>

</table>

<a href="../gitTest/won/board_list.jsp"><input type="button" value="목록" /></a>

</body>







</html>