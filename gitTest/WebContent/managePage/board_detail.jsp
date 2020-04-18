<%@page import="VO.reqnaVO"%>
<%@page import="DAO.reqnaDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="VO.boardVO"%>
<%@page import="DAO.boardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String no = request.getParameter("bno");
	// 게시글 table
	boardDAO dao = new boardDAO();
	boardVO vo = new boardVO();

	// 댓글 table
	reqnaDAO rdao = new reqnaDAO();
	reqnaVO rvo = new reqnaVO();

	int bno = 0;

	if(no!=null){
		bno = Integer.parseInt(no);
		vo = dao.getData(bno);
	}else{
		response.sendRedirect("mian.jsp");
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>board_detail.jsp -> 문의 게시판 게시글 내용</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
$(function(){
	$('#status').on('click',function(){
		var flag = confirm("블라인드 처리하시겠습니까?");
		var bno = <%=vo.getBno()%>

		if(flag)
			location.href= "board_blindOk.jsp?bno=<%=vo.getBno()%>";
	});
});
</script>
<style type="text/css">
table{
	margin: auto;
	width: 50%;
	border-spacing: 0;
}
#title{
	font-size: 16px; 
	/* background-color: pink; */
	border-bottom: 1px solid gray;
}
#getTitle{
	text-align: center;
}
t1{text-align: right;}
table, td, th{
	outline: 2px soiid gray;
}
reId{text-align: center;}
reComm{}
</style>
</head>
<body>
<div id="container">
	<form action="#" name="frm">
		<input type="hidden" name="no" id="no" />
	</form>
	<table>
		<tr id="title">
			<th>카테고리 :</th>
			<td colspan="1"><h3>[<%=vo.getCategory()%>]</h3></td>
			<th id="getTitle" colspan="2"><h3><%=vo.getTitle() %></h3></th>
			<td>
				<input type="button" value="관리" id="status" class="ctl_btn"/>
				<a href="mian.jsp">
					<input type="button" class="ctl_btn" value="목록"/>
				</a>
				
			</td> 
		</tr>
		<tr id="top">
			<td></td>
			<th id="t1" colspan="3">작성자 : <%=vo.getMemid() %></th>
			<td><%=vo.getDates()%></td>
		</tr>
		<tr id="contents">
<!-- 			<th>내용</th> -->
			<td colspan="6">
				<%=vo.getContents() %>
				<!-- disable하기 위에  -->
			</td>
		</tr>
		<tr>
			<th></th>
			<td colspan="6">
				
				<%-- <input type="button" value="삭제" id="delConfirm" /> --%>
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
				<td class="reId"><%=revo.getId() %> </td>
				<td classs="reComm"><%=revo.getComments().trim()%></td>
			</tr>
			<%
					} // if end
				} // for end
			%>
		</table>
	</form>
</body>
</html>
