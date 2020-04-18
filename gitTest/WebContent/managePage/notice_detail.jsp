<%@page import="VO.noticeVO"%>
<%@page import="DAO.noticeDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/* 게시글 번호로 불러와서 가져오기 */
	String no = request.getParameter("bno");
	noticeDAO dao = new noticeDAO();
	noticeVO vo = new noticeVO();
	
	int bno=0;
	
	if(no!=null){
		bno = Integer.parseInt(no);
		dao.raiseHits(bno);
		vo = dao.getData(bno);
	}else{
		response.sendRedirect("mian.jsp?fno=notice_list");
	}
%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>notice_detail.jsp -> 공지사항 게시글 내용</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
// 		삭제 기능
		$('.delConfirm').on('click',function(){ 
			var flag = confirm("삭제하시겠습니까?");
			var bno = <%=vo.getBno() %>
			
			if(flag){
				document.frm.submit();
				location.href = "notice_deleteOk.jsp?bno=<%=vo.getBno()%>";
			}
		});
// 		블라인드 처리
		$('.status').on('click',function(){
			var flag0 = confirm("블라인드 처리하시겠습니까?");
			var bno = <%=vo.getBno()%>
			
			if(flag0){
				location.href="notice_blindOk.jsp?bno=<%=vo.getBno()%>";
			}
		});
	});
</script>
<style type="text/css">
	table{
		margin: auto;
		width: 50%;
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
	<form action="mian.jsp?fno=notice_Write" name="frm">
		<input type="hidden" name="no" id="no" />
	<div id="cont">
		<table>
			<tr id="title">
				<!-- <th>제목</th> -->
				<td colspan="5"><h3><%=vo.getTitle() %></h3>
					<!-- <input type="button" value="관리" id="status" /> only 관리자모드 -->
				</td>
			</tr>
			<tr id="info">
				<!-- <th id="t1">글쓴이</th> -->
				 <td><%=vo.getWriter() %></td>
 				<th id="t3" colspan="5"><!-- 작성일 --></th>
				<td><%=vo.getRegdate() %></td>
			</tr>
			<tr></tr>
			<tr id="contents">
				<!-- <th>내용</th> -->
				<td colspan="5">
					<%=vo.getContents()%>
				</td>
			</tr>
			<tr>
				<td colspan="5">
				<br />
					<a href="mian.jsp?fno=notice_list"><input type="button" id="btn" value="목록" /></a>
					<a href="mian.jsp?fno=notice_modify&bno=<%=vo.getBno() %>"><input type="button" id="btn" value="수정" /></a>
				</td>
			</tr>
		</table>
	</div>
	</form>
</body>
</html>