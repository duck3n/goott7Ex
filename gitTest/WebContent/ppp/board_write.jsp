<%@page import="VO.BoardVO"%>
<%@page import="DAO.boardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>board_write.jsp</title>
</head>
<body>
	<%
		boardDAO dao = new boardDAO();
			BoardVO vo = new BoardVO();
			
			String id = "본인ID"; // 임시
		/* 	String userId=null;
			if(session.getAttribute("userId")!=null){
		userId=(String)session.getAttribute("userId");
			}
		 */
	%>
	<form action="board_writeOk.jsp" name="frm">
		<div id="container">
			<div id="top">
				<p><h3>문의사항</h3></p>
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
				<input type="reset" value="초기화" />
			</div>
		</div>
	</form>
	
</body>
</html>