<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>notice_write.jsp</title>
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
	#container{
		width: 800px;
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
	<%
		// 관리자만 쓸 수 있음.
		//로긴한사람이라면, userID라는 변수에 해당 아이디가 담기고 그렇지 않으면 null값
/*
		String adminId = null;
		if (session.getAttribute("adminId") != null) { 
			adminId = (String) session.getAttribute("adminId");
		}
		*/
	%>
	<!-- form은 name을 통해 데이터를 보낼 수 있음 : request.getParameter("이름") -->
	<form action="notice_writeOk.jsp" name="frm">
		<div id="container">
			<div id="top">
				<p>
				<h3>공지사항 / 이벤트</h3>
				</p>
			</div>
<!-- 			<div id="writer"> 관리자모드. id 안써도 됨.
				<p>
					<span>WRITER : </span> <input type="text" name="wr" id="wr" />
				</p> 
			</div> -->
			<div id="title">
				<p>
					<span>TITLE : </span> <input type="text" name="ti" id="ti" />
				</p>
			</div>
			<div id="category">
				<p>
					<span>카테고리: </span>
					<select name="ctg">
						<option value="공지">공지</option>
						<option value="이벤트">이벤트</option>
					</select>
				</p>
			</div>
			<div id="contents">
				<p>
					<textarea name="ct" id="ct" cols="35" rows="20"></textarea>
				</p>
			</div>
			<div id="button">
				<a href="notice_list.jsp"><input id="btn" type="button" value="목록보기" /></a> <input id="btn" type="submit"
					value="작성하기" />
			</div>
		</div>
	</form>
</body>
</html>