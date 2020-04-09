<%@page import="VO.boardVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="DAO.boardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//현재 페이지(current Page) 얻어오기
	String cp = request.getParameter("cp");

	int currentPage = 0; // null 처리와 함께 숫자처리 (초기화,?)

	if (cp != null) {
		currentPage = Integer.parseInt(cp);
	} else {
		currentPage = 1;
	}

	boardDAO dao = new boardDAO();

	// 총 게시글 수
	int totalCount = dao.getTotalCount();

	// 한 페이지당 레코드 수 : 10개
	int recordByPage = 10;

	// 총 페이지 수
	int totalPage = // (totalCount%recordByPage==0) -> 10단위로 나눠지면. 삼항 연산자
			(totalCount % recordByPage == 0) ? totalCount / recordByPage : totalCount / recordByPage + 1;

	// 현재 페이지 - 레코드 시작번호
	int startNo = (currentPage - 1) * recordByPage + 1;

	// 현재 페이지 - 레코드 끝번호
	int endNo = currentPage * recordByPage;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>문의사항 게시판</title>
<link rel="stylesheet" href="../css/topBar.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript" src="../js/topBar.js"></script>
<script type="text/javascript">
 	$(document).ready(function() {

		$("tr:first").css("background-color", "pink");
		$("tr:last").css("background-color", "pink");
		$("tr:odd").css("background-color", "#DAD9FF");
	});
</script>
<style media="screen">
  table {
    width: 90%;
    margin: 0 auto;
  }
  th, td {
    width: 10%;
    text-align: center;
  }
  .col3{
    width: 30%;
  }
  .col5{
    width: 30%;
  }
</style>
</head>
<body>
<jsp:include page="topBar.jsp"></jsp:include>
	<div class="guide" id="body_container">
	<%-- 몸통 부분 --%>
	<table>
		<tr>
			<th class="col1">글번호</th>
			<th class="col2">카테고리</th>
			<th class="col3">제목</th>
			<th class="col4">작성자</th>
			<th class="col5">날짜</th>
			<th class="col6">답변 유무</th>
		</tr>
		<%
			ArrayList<boardVO> list = dao.getAllData(startNo, endNo);
			for(boardVO vo : list){
				if(vo.getStatus()==0||vo.getStatus()==2){
		%>
		<tr>
			<td class="col1"><%=vo.getBno() %></td>
			<td class="col2"><%=vo.getCategory() %></td>
			<td class="col3"><a href="board_detail.jsp?bno=<%=vo.getBno() %>"><%=vo.getTitle() %></a></td>
			<td class="col4"><%=vo.getMemid() %></td>
			<td class="col5"><%=vo.getDates() %></td>
			<% String checkre = "미응답";
			if(vo.getStatus()==2)
				checkre = "답변완료";
			%>
			<td class="col6"><%=checkre %></td> 
		</tr>
		<%
				}
			}
		%>
		<tr>
			<td colspan="4" id="page">
				<%
					for(int i=currentPage-3; i<totalPage+3; i++){
						if(i<=0){
							continue;
						}else if(i>totalPage){
							break;
						}else {
				%> <a href="board_list.jsp?cp=<%=i %>"><span id="page"><%=i %></span></a>
				<%
						}
					}
				%>
			</td>
		</tr>

		<tr>
			<td colspan="4" class="btn"><a href="board_write.jsp"><input type="button" value="등록하기" /></a></td>
		</tr>
	</table>
	</div>
</body>
</html>
