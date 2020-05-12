<%@page import="VO.noticeVO"%>
<%@page import="DAO.noticeDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
			var bno = ${vo.bno}
			
			if(flag){
				document.frm.submit();
				location.href = "notice_deleteOk.jsp?bno="+${vo.bno};
			}
		});
// 		블라인드 처리
		$('.status').on('click',function(){
			var flag0 = confirm("블라인드 처리하시겠습니까?");
			var bno = ${vo.bno}
			
			if(flag0){
				location.href="notice_blindOk.jsp?bno="+${vo.bno};
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
	<jsp:include page="topBar.jsp"/>
	<form action="notice.do" name="frm">
		<input type="hidden" name="cmd" id="modify" />
		<input type="hidden" name="bno" id="bno" />
	<div id="cont">
		<table>
			<tr id="title">
				<!-- <th>제목</th> -->
				<td colspan="5"><h3>${vo.title}</h3>
					<!-- <input type="button" value="관리" id="status" /> only 관리자모드 -->
				</td>
			</tr>
			<tr id="info">
				<!-- <th id="t1">글쓴이</th> -->
				 <td>${vo.writer}</td>
 				<th id="t3" colspan="5"><!-- 작성일 --></th>
				<td>${vo.regdate}</td>
			</tr>
			<tr></tr>
			<tr id="contents">
				<!-- <th>내용</th> -->
				<td colspan="5">
					${vo.contents}
				</td>
			</tr>    
			<tr>
				<td colspan="5">
				<br />
					<a href="notice.do?cmd=list"><input type="button" id="btn" value="목록" /></a>
					<a href="notice.do?cmd=modify&bno=${vo.bno}"><input type="button" id="btn" value="수정" /></a>
				</td>
			</tr>
		</table>
	</div>
	</form>
</body>
</html>