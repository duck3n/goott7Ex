<%@page import="VO.BoardVO"%>
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
  .condiv{
    width: 100px;
    height: 100px;
    background-color: white;
    float: left;
    margin-left: 50px;
  }
</style>
</head>
<body>
<jsp:include page="topBar.jsp"></jsp:include>
	<div class="guide" id="body_container">
	<%-- 몸통 부분 --%>
		<%
			ArrayList<BoardVO> list = dao.getAllData(startNo, endNo);
			for(BoardVO vo : list){
				if(vo.getStatus()==0){
		%>

		<div class="condiv">
			<%= vo.getContents() %>
		</div>

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
	</div>
</body>
</html>
