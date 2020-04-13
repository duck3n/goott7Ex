<%@page import="VO.noticeVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="DAO.noticeDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/* 페이징 처리 */

	// 현재 페이지(current Page) 얻어오기
	String cp = request.getParameter("cp");

	int currentPage = 0; // null 처리와 함께 숫자처리 (초기화,?) 

	if (cp != null) {
		currentPage = Integer.parseInt(cp);
	} else {
		currentPage = 1;
	}

	noticeDAO dao = new noticeDAO();
 
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
<title>공지사항 / 이벤트</title>
<style type="text/css">
	#container {
		/* 테이블 가운데로 옮기기 */
		margin: auto;
		width: 50%;
		padding: 10px;
		
	}
	.btn{
		text-align: right;
	}
	#title{
		border-bottom: 1px solid gray;
	}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
 	$(document).ready(function() {
		
		/* $("tr:first").css("background-color", "pink");
		$("tr:last").css("background-color", "#DAD9FF"); */
	});
</script>
</head>
<body>
	<div id="container">
		<div id="title">
			<h3>공지사항 / 이벤트</h3>
		</div>
		<table>
			<tr>
				<!-- <th class="col1">글번호</th> 글번호 지움 -> 캐치패션이랑 최대한 비슷하게 할려고요. -->
				<th class="col2">제목</th>
				<th colspan="2" class="col3"><!-- 작성자 --></th>
				<th class="col4">날짜</th>
				<!-- <th class="col5">조회수</th> 조회수도요 -->
			</tr>
			<!-- 사용자가 작성한 게시글을 전부 출력해보세요 -->
			<%
				ArrayList<noticeVO> list = dao.getAllData(startNo, endNo);

				for (noticeVO vo : list) {
					if (vo.getStatus() == 0 || vo.getStatus() == 2) {
			%>

			<tr>
				<%-- <td class="col1"><%=vo.getBno()%></td> --%>
				<td class="col2"><a
					href="notice_detail.jsp?bno=<%=vo.getBno()%>"><%=vo.getTitle()%></a>
				</td>
				<td colspan="2" class="col3"><%-- <%=vo.getWriter()%> --%></td>
				<td class="col4"><%=vo.getRegdate()%></td>
				<%-- <td class="col5"><%=vo.getHits()%></td> --%>

			</tr>
			<%
				}
				}
			%>
			<tr>
				<td colspan="4" id="page">
					<%
						for (int i = currentPage - 3; i < totalPage + 3; i++) {
							if (i <= 0) {
								continue;
							} else if (i > totalPage) {
								break;
							} else {
					%> <a href="notice_list.jsp?cp=<%=i%>"><span id="page"><%=i%></span></a>
					<%
						} // if end
						} // for end
					%>
				</td>
			</tr>

			<tr>
				<!-- 등록 버튼은 admin만 보일 수 있게 하기 -->
				<td colspan="4" class="btn"><a href="notice_write.jsp"><input
						type="button" value="등록" /></a></td>
			</tr>

		</table>
	</div>
</body>
</html>