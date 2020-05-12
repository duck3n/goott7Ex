<%@page import="VO.noticeVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="DAO.noticeDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 / 이벤트</title>
<style type="text/css">
	#body_container {
		/* 테이블 가운데로 옮기기 */
		margin: auto;
		width: 50%;
		padding: 10px;
	}
	table {
    width: 90%;
    text-align: center;
    margin: 0 auto;
  }
  th, td {
    width: 10%;
    text-align: center;
    /* 알맞게 수정 */
  }
  td a{
    text-decoration: none;
    color: black;
  }
  .col2{
      width: 50%;
  }
  .col3{
      width: 20%;
  }
  .col4{
      width: 30%;
  }
  
  #title{
      border-bottom: 1px solid gray;
  }
  #btn{
      border: 1px solid #747474;
      background-color: rgba(0,0,0,0);
      color: #747474;
      border-radius: 5px;
  }
</style>
</head>
<body>
	<jsp:include page="topBar.jsp"></jsp:include>
  	<div class="guide" id="body_container">
  	<%-- 몸통 부분 --%>
		<div id="search"> <!-- 여기에 검색기능 붙이기 --> </div>
		<div id="title">
			<h3>공지사항 / 이벤트</h3>
		</div>
		<table>
			<tr>
				<!-- <th class="col1">글번호</th> 글번호 지움 -> 캐치패션이랑 최대한 비슷하게 할려고요. -->
				<th class="col2">제목</th>
				<th colspan="3" class="col3"><!-- 작성자 --></th>
				<th class="col4">날짜</th>
				<!-- <th class="col5">조회수</th> 조회수도요 -->
			</tr>
			<!-- 사용자가 작성한 게시글을 전부 출력 -->
		<c:forEach items="${noticeList}" var="vo">
			<tr>
				<%-- <td class="col1"><%=vo.getBno()%></td> --%>
				<td class="col2"><a
					href="notice.do?cmd=detail&bno=${vo.bno}"><c:out value="${vo.title}"/></a>
				</td>
				<td colspan="3" class="col3"><%-- <%=vo.getWriter()%> --%></td>
				<td class="col4"><c:out value="${vo.regdate}"/></td>
				<%-- <td class="col5"><%=vo.getHits()%></td> --%>

			</tr>
		</c:forEach>
			<tr>
				<td colspan="4" id="page" align="center">
<!-- 						for (int i = currentPage - 3; i < totalPage + 3; i++) {
 							if (i <= 0) {
 								continue;
 							} else if (i > totalPage) {
 								break;
 							} else { -->
					 <a href="notice.do?cmd=list&cp=1"><span id="page">1</span></a>
<!-- 						} // if end
 						} // for end -->
				</td>
			</tr>

			<tr>
				<!-- 등록 버튼은 admin만 보일 수 있게 하기 -->
				<td colspan="5" align="right">
					<a href="notice.do?cmd=write">
						<input id="btn" type="button" class="btn" value="등록" />
				</a></td>
			</tr>

		</table>
  	</div>
</body>
</html>