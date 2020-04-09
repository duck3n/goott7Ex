<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>write.jsp</title>
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
				<input type="button" value="목록보기" /> <input type="submit"
					value="작성하기" /> <input type="reset" value="초기화" />
			</div>
		</div>
	</form>
</body>
</html>