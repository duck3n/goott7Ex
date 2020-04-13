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
<style type="text/css">
	.blist{
		/* 테이블 가운데로 옮기기 */
		margin: auto;
		width: 100%;
		padding: 10px
	}
	.col{
		text-align: center;
	}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
 	$(document).ready(function() {
		$("tr:first").css("background-color", "pink");
		$("tr:last").css("background-color", "pink");
		$("tr:odd").css("background-color", "#DAD9FF");
	});
</script>
</head>
<body> 
	<div class="blist">
		<h3>문의사항</h3>
		<table>
			<tr class="col">
				<th class="col1">글번호</th>
				<th class="col2">카테고리</th>
				<th class="col3">제목</th>
				<th class="col4">작성자</th>
				<th class="col5">날짜</th>
				<th class="col6">답변유무</th>
			</tr>
			<%
				ArrayList<boardVO> list = dao.getAllData(startNo, endNo);
				for(boardVO vo : list){
					if(vo.getStatus()==0 || vo.getStatus()==2){
			%>
			<tr class="col">
				<td class="col1"><%=vo.getBno() %></td>
				<td class="col2"><%=vo.getCategory() %></td>
				<td class="col3"><a href="board_detail.jsp?bno=<%=vo.getBno() %>"><%=vo.getTitle() %></a></td>
				<td class="col4"><%=vo.getMemid() %></td>
				<td class="col5"><%=vo.getDates() %></td>
				<td class="col6"><% if(vo.getStatus()==2){
					%>
					<p>답변완료</p> <% }else if(vo.getStatus()==0){
						%>
						<p>대기중</p><% } %></td>
			</tr>
			<%
					}
				}
			%>
			<tr>
				<td colspan="6" id="page">
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
				<td colspan="6" class="btn" align="right"><a href="board_write.jsp"><input type="button" value="등록하기" /></a></td>
			</tr>
		</table>
	</div>
</body>
</html>