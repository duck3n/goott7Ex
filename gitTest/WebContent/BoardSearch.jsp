<%@page import="VO.boardVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="DAO.BoardSearchDAO"%>
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
		<td>작성일</td>
	</tr>


<%
	ArrayList<boardVO> list = new ArrayList<boardVO>();
	
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

for(boardVO vo : list) {
%>

<tr>
	
	<td><%=vo.getBno() %></td>
	<td><%=vo.getCategory() %></td>
	<td><%=vo.getTitle() %></td>
	<td><%=vo.getMemid() %></td>
	<td><%=vo.getDates() %></td>




<%
}
%>

</tr>

</table>

</body>







</html>