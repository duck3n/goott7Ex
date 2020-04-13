<%@page import="VO.boardVO"%>
<%@page import="DAO.boardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String no = request.getParameter("bno");
	boardDAO dao = new boardDAO();
	boardVO vo = new boardVO();
	
	if(no!=null){
		int bno = Integer.parseInt(no);
		vo = dao.getData(bno);
	}else {
		response.sendRedirect("board_list.jsp");
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>board_modify.jsp -> 문의게시판 수정</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$('#delConfirm').on('click',function(){ 
			var flag = confirm("삭제하시겠습니까?");
			var bno = <%=vo.getBno() %>
			
			if(flag){
				document.frm.submit();
				location.href = "notice_deleteOk.jsp?bno=<%=vo.getBno()%>";
			}
		});
		$('#status').on('click',function(){
			var flag0 = confirm("블라인드 처리하시겠습니까?");
			var bno = <%=vo.getBno()%>
			
			if(flag0){
				location.href="notice_blindOk.jsp?bno=<%=vo.getBno()%>";
			}
		});
	});
</script>
</head>
<body>
	<form action="board_modifyOk.jsp">
		<input type="hidden" name="bno" value="<%=vo.getBno() %>" />
		<table>
			<tr id="top">
				<th id="t1">글쓴이</th>
				<td><%=vo.getMemid() %></td>
				<th id="t2">답변유무</th>
				<td><%=vo.getStatus() %></td>
				<th id="t3">작성일</th>
				<td><%=vo.getDates() %></td>
			</tr>
			<tr id="title">
				<th id="t1">카테고리</th>
				<td><select name="ctg" id="">
					<option value="">카테고리</option>
					<option value="배송">배송</option>
					<option value="입금">입금</option>
					<option value="교환">교환</option> 
					<option value="환불">환불</option>
				</select></td>
				<th id="t2">제목</th>
				<td colspan="4"><input type="text" name="title" id="" value="<%=vo.getTitle() %>" /></td>
			</tr>
			<tr id="contents">
				<th>내용</th>
				<td colspan="5">
					<textarea name="contents" id="ct" cols="50" rows="20"><%=vo.getContents() %></textarea>
				</td>
			</tr>
			<tr>
				<th></th>
				<td colspan="6">
					<a href="board_list.jsp"><input type="button" value="목록" /></a>
					<input type="submit" value="수정" />
					<input type="button" value="삭제" />
					<input type="button" value="관리" id="status" />
				</td>
			</tr>
		</table>
	</form>
</body>
</html>