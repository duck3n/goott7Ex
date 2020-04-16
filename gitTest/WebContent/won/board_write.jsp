<%@page import="VO.boardVO"%>
<%@page import="DAO.boardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>board_write.jsp</title>
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
 integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
 crossorigin="anonymous"></script>
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.16/dist/summernote-lite.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.16/dist/summernote-lite.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$('#ct').summernote({
			tabsize : 2,
			height : 300, // 에디터 높이
			minHeight : null, // 최소 높이
			maxHeight : null, // 최대 높이
			focus : true, // 에디터 로딩후 포커스를 맞출지 여부
			lang : "ko-KR", // 한글 설정
			placeholder : '최대 2048자까지 쓸 수 있습니다' //placeholder 설정

		});
	});
</script>
<style type="text/css">
body{
background-color: #ffcab3;	
}

	#container{
		width: 800px;
	}
	#id {
		block: inline;
	}
</style>
</head>
<body>
	<%
		
		boardDAO dao = new boardDAO();
		boardVO vo = new boardVO(); 
		
	 	String id=null;
		if(session.getAttribute("id")!=null){
			id=(String)session.getAttribute("id");
		}
	 	
	%>
	<form action="board_writeOk.jsp" name="frm">
		<input type="hidden" name="wr" value="<%=id %>" />
		<div id="container">
			<div id="top">
				<p><h3>문의사항</h3><p>
			</div>
			<div id="writer">
				<p>
					<span>작성자: </span> <%=id %>
				</p>
			</div>
			<div id="category">
				<p>
					<span>카테고리: </span>
					<select name="ctg">
						<option value="">카테고리</option>
						<option value="배송">배송</option> 
						<option value="입금">입금</option>
						<option value="교환">교환</option>
						<option value="환불">환불</option>
					</select>
				</p>
			</div>
			<div id="title">
				<p>
					<span>제목: </span> <input type="text" name="ti" id="ti" />
				</p>
			</div>
			<div id="contents">
				<p>
					<textarea name="ct" id="ct" cols="35" rows="20"></textarea>
				</p>
			</div>
			<div id="button">
				<a href="board_list.jsp"><input type="button" value="목록보기" /></a> <input type="submit" value="작성하기" />
			</div>
		</div>
	</form>
	
</body>
</html>