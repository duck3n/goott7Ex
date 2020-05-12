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
	$('.status').on('click',function(){
		var flag = confirm("블라인드 처리하시겠습니까?");
		var bno = <%=vo.getBno()%>

		if(flag)
			{location.href= "board_blindOk.jsp?bno=<%=vo.getBno()%>";}
			
		
	});
});
</script>
<style type="text/css">
table{
	margin: auto;
	width: 50%;
	border-spacing: 0;
	outline: 2px soiid gray;
}
#title{
	font-size: 16px; 
	/* background-color: pink; */
	border-bottom: 1px solid gray;
}
#getTitle{
	text-align: center;
}
reId{text-align: center;}

#btn{
	border: 1px solid #747474;
	background-color: rgba(0,0,0,0);
	color: #747474;
	border-radius: 5px;
}
#recol12{
	padding-left: 150px;
}
.col1{width: 15%;}
.col2{}
.col3{}
</style>
</head>
<body>
<div id="container">
	<form action="#" name="frm">
		<input type="hidden" name="no" id="no" />
	</form>
	<table>
		<tr id="title">
			<td class="col1"><h3>[<%=vo.getCategory()%>]</h3></td>
			<td colspan="2" class="col2"><h3><%=vo.getTitle() %></h3></td>
			<td id="t1" class="col3"><%=vo.getMemid() %></td>
		</tr>
		<tr id="top">
			<td></td>
			<th id="t1" colspan="3"><%=vo.getDates()%></th>
		</tr>
		<tr id="contents">
			<!-- <th>내용</th> -->
			<td colspan="6">
				<%=vo.getContents() %>
			</td>
		</tr>
		<tr>
			<td>
				<input type="button" value="관리" id="btn" class="status"/>
				<a href="/notice.do?cmd=list">
					<input type="button" class="ctl_btn" id="btn" value="목록"/>
				</a>
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
				<td colspan="2" id="recol12"><input type="text" name="comm" size="30" />
				<input type="hidden" name="bno" value=<%=vo.getBno()%> />
				<input type="submit" id="btn" value="작성" /></td>
			</tr>
			<%
				ArrayList<reqnaVO> list = rdao.getAllComm();

				for(reqnaVO revo : list){
					if(bno==revo.getRef()){
			%>
			<tr>
				<td class="reId"><%=revo.getId()%> </td>
				<td class="reComm"><%=revo.getComments().trim()%></td>
			</tr>
			<%
					} // if end
				} // for end
			%>
		</table>
	</form>
</body>
</html>
