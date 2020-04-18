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

body{
background-color: #ffcab3;	
}
	#btn{
		border: 1px solid #747474;
		background-color: rgba(0,0,0,0);
		color: #747474;
		border-radius: 5px;
	}


</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
		$(document).ready(function(){
		$('#delConfirm').on('click',function(){ 
			var flag = confirm("삭제하시겠습니까?");
			var bno = <%=vo.getBno() %>;
			
			if(flag){
				document.frm.submit();
				location.href = "board_deleteOk.jsp?bno=<%=vo.getBno()%>";
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
		<tr>
			<td colspan="1"><h3>[<%=vo.getCategory()%>]</h3></td>
			<td colspan="3"><!-- 제목 --></td>
			<td><h3><%=vo.getTitle() %></h3> <!-- <input type="button" value="관리" id="status" /> --></td>
			<td><h3><%=vo.getMemid() %></h3></td>
			<td id="t1"><!-- 작성자 --></td>
			<%-- <td id="t2">답변유무</td>
			<td><%=vo.getStatus()%></td> --%>
			<!-- <td id="t3">작성일</td> -->
			<td><h3><%=vo.getDates()%></h3></td>
		</tr>
		<tr id="contents">
			<!-- <th>내용</th> -->
			<td colspan="6">
				<%=vo.getContents() %>
			</td>
		</tr>
		<tr>
			<td colspan="6" class="btns" align="left">
				<a href="board_list.jsp"><input type="button" value="목록" /></a>
				<%
					String id=null;
					if(session.getAttribute("id")!=null){
						id=(String)session.getAttribute("id");
						if(id.equalsIgnoreCase(vo.getMemid()) || id.equalsIgnoreCase("admin")){
				%>
				<a href="board_modify.jsp?bno=<%=vo.getBno() %>"><input id="btn" type="button" value="수정" /></a>
				<input id="btn" type="button" value="삭제" class="delConfirm" />
				<%
						}
					}
				%>
			</td>
		</tr>
	</table>
	<br /><br />
	<!-- 댓글 작성 from 만들기 관리자만! 댓글달기. -->
	<form action="board_replyOk.jsp">
		<table>
			<%
				if(session.getAttribute("id")!=null){
					id=(String)session.getAttribute("id");
					if(id.equalsIgnoreCase("admin")){
			%>
				<td><input type="text" name="comm" id="" size="30" /> 
				<input type="hidden" name="bno" value=<%=vo.getBno()%> />
				<input id="btn type="submit" value="작성" /></td>
			<%
					}
				}
			%>
<!-- 			<tr>
				<th>댓글 작성</th>
			</tr> -->
			<%
				ArrayList<reqnaVO> list = rdao.getAllComm();
				
				for(reqnaVO revo : list){
					if(bno==revo.getRef()){
			%>
			<tr>
				<td colspan="2"><%=revo.getId() %></td>
				<td><%=revo.getComments().trim()%></td>
			</tr>
			<%
					} // if end
				} // for end
			%>
		</table>
	</form> 

</body>
</html>