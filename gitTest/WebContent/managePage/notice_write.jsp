<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>write.jsp</title>
<script type="text/javascript">
	function goList() {
		location.href="notice.do?cmd=list";
	}
</script>
</head>
<body>
	<!-- form은 name을 통해 데이터를 보낼 수 있음 : request.getParameter("이름") -->
	<form action="notice.do" name="frm" >
	<input type="hidden" name="cmd" value="writeOk" />
	<input type="hidden" name="memid" value="${member.memid}" />
		<div id="container">
			<div id="top">
				<p>
				<h3>공지사항 / 이벤트</h3>
				</p>
			</div>
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
				<input type="button" onclick="goList()" value="목록보기" /> 
				<input type="submit" value="작성하기" /> 
				<input type="reset" value="초기화" />
			</div>
		</div>
	</form>
</body>
</html>