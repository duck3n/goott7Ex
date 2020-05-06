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
	}else {
		response.sendRedirect("notice_list.jsp");
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
		$('.delConfirm').on('click',function(){ 
			var flag = confirm("삭제하시겠습니까?");
			var bno = <%=vo.getBno() %>
			
			if(flag){
				document.frm.submit();
				location.href = "notice_deleteOk.jsp?bno=<%=vo.getBno()%>";
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
	<form action="notice_fileWrite.jsp" name="frm">
		<input type="hidden" name="no" id="no" />
	<div id="cont">
		<table>
			<tr id="title">
				<!-- <th>제목</th> -->
				<td colspan="5"><h3><%=vo.getTitle() %></h3>
					<!-- <input type="button" value="관리" id="status" /> only 관리자모드 -->
				</td>
			</tr>
			<tr id="contents">
				<!-- <th>내용</th> -->
				<td colspan="5">
					<%=vo.getContents()%>
				</td>
			</tr>
			<tr>
				<td colspan="5">
				<br />
					<a href="notice_list.jsp"><input id="btn" type="button" value="목록" /></a>
				<%
					String id=null;
					if(session.getAttribute("id")!=null){
						id = (String)session.getAttribute("id");	//ex) 관리자 아이디는 admin이라면, 
						if(id.equalsIgnoreCase("admin")){			// id가  admin이면 등록 버튼 보이게 하기,
				%>
					<a href="notice_modify.jsp?bno=<%=vo.getBno() %>"><input id="btn" type="button" value="수정" /></a>
					<input id="btn" type="button" value="삭제" class="delConfirm" />
				<%
						}
					}
				%>
				
				</td>
			</tr>
		</table>
	</div>
	</form>
</body>
</html>