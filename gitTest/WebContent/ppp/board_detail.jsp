<%@page import="VO.reqnaVO"%>
<%@page import="DAO.reqnaDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="VO.BoardVO"%>
<%@page import="DAO.boardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String no = request.getParameter("bno");
	// 게시글 table
	boardDAO dao = new boardDAO();
	BoardVO vo = new BoardVO();
	
	// 댓글 table
	reqnaDAO rdao = new reqnaDAO(); 
	reqnaVO rvo = new reqnaVO();
	
	int bno = 0;
	
	if(no!=null){
		bno = Integer.parseInt(no);
		/* dao.raiseHits(bno); */
		vo = dao.getData(bno);
	}else{
		response.sendRedirect("board_list.jsp");
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>board_detail.jsp -> 문의 게시판 게시글 내용</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$('#delConfirm').on('click',function(){ 
			var flag = confirm("삭제하시겠습니까?");
			var bno = <%=vo.getBno() %>
			
			if(flag){
				document.frm.submit();
				location.href = "board_deleteOk.jsp?bno=<%=vo.getBno()%>";
			}
		});
		$('#status').on('click',function(){
			var flag0 = confirm("블라인드 처리하시겠습니까?");
			var bno = <%=vo.getBno()%>
			
			if(flag0){
				location.href="board_blindOk.jsp?bno=<%=vo.getBno()%>";
			}
		});
	});
</script>
</head>
<body>
	<form action="#" name="frm">
		<input type="hidden" name="no" id="no" />
	</form>
	<table>
		<tr id="top">
			<th id="t1">작성자</th>
			<td><%=vo.getMemid() %></td>
			<th id="t2">답변유무</th>
			<td><%=vo.getStatus()%></td>
			<th id="t3">작성일</th>
			<td><%=vo.getDates()%></td>
		</tr>
		<tr id="title">
			<th>카테고리</th>
			<td><%=vo.getCategory()%></td>
			<th>제목</th>
			<td><%=vo.getTitle() %> <input type="button" value="관리" id="status" /></td>
		</tr>
		<tr id="contents">
			<th>내용</th>
			<td colspan="5">
				<textarea disabled="disabled" name="" id="" cols="50" rows="20"><%=vo.getContents() %></textarea>
				<!-- disable하기 위에  -->
			</td>
		</tr>
		<tr>
			<th></th>
			<td colspan="6">
				<a href="board_list.jsp"><input type="button" value="목록" /></a>
				<a href="board_modify.jsp?bno=<%=vo.getBno() %>"><input type="button" value="수정" /></a>
				<input type="button" value="삭제" id="delConfirm" />
			</td>
		</tr>
	</table>
	<br /><br />
	<!-- 댓글 작성 from 만들기 -->
	<form action="board_replyOk.jsp">
		<table>
			<tr>
				<th>댓글 작성</th>
				<td><input type="text" name="comm" id="" size="30" /> 
				<input type="hidden" name="bno" value=<%=vo.getBno()%> />
				<input type="submit" value="작성" /></td>
			</tr>
			<%
				ArrayList<reqnaVO> list = rdao.getAllComm();
				
				for(reqnaVO revo : list){
					if(bno==revo.getRef()){
			%>
			<tr>
				<td colspan="2"><%=revo.getId() %>
				<textarea disabled="disabled" name="" id="" cols="30" rows="2">
				<%=revo.getComments().trim()%></textarea></td>
			</tr>
			<%
					} // if end
				} // for end
			%>
		</table>
	</form>

</body>
</html>