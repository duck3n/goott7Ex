<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">
#board{
margin-top: 215px;
}

</style>
</head>
<body>

<div id="container">

	<jsp:include page="mainNav.jsp"></jsp:include>

		


<div id="board">
	<form action="BoardSearch.jsp">
      <select name="category" id="category">
	      <option value="title">제목</option>
	      <option value="contents">내용</option>
	      <option value="titlecontents">제목+내용</option>
	      <option value="id">아이디</option>
      </select>
      
      <input type="text" name="searchBString" id="searchBString" placeholder="무엇을 도와드릴까요?"/>
   	<input type="submit" value="검색" />
   
   </form>
</div>
	<h1>이벤트 / 공지사항</h1>
	<table>
		<tr>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
		</tr>
	</table>
</div>
</body>
</html>