<%@page import="VO.won_noticeVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="DAO.won_noticeDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


<link rel="stylesheet" href="../gitTest/css/BoardSearchIndex.css" />

<%

won_noticeDAO dao = new won_noticeDAO();


%>



</head>
<body>



<div id="logoContainer">

<a href="../gitTest/mainPage.jsp">
<img src="../gitTest/mainResource/logo.png" alt="" id="logoIMG"/>	
</a>
</div>

<div id="searchLogoContainer">


<img src="../gitTest/mainResource/searchBoardLogo.png" alt="" />


</div>


<div id="board">
	

	<form action="BoardSearch.jsp">
	
	<!-- 검색 옵션 --> 
	
	 <div id="searchBItem">
      <select name="category" id="category">
	      <option value="title">제목</option>
	      <option value="contents">내용</option>
	      <option value="titlecontents">제목+내용</option>
	      <option value="id">아이디</option>
      </select>
      
      <!-- 검색 상자 -->
	
		  <input type="text" name="searchBString" id="searchBString" placeholder="무엇을 도와드릴까요?"/>
		  <input type="submit" value="검색" id="searchBButton"/>
		 <hr width="100%" color="black">  
	</div>
	
   </form>
   
</div>
	

<div id="notice">

	<h1>이벤트 / 공지사항</h1>



      
	
<%

ArrayList<won_noticeVO> list = dao.getAllData(0, 9);


	for(won_noticeVO vo : list) {
		
%>	
	
     
    <div id="boardData">
    	<div id="boardDataMain">
	    	 <%=vo.getBno() %>
	      	<a href="../gitTest/won/notice_detail.jsp?bno=<%=vo.getBno()%>"><%=vo.getTitle()%></a>
      	 </div>
      </div> 	 



<%
}
%>	


     <!--둘째줄 왼쪽 끝 테이블-->
     

</div>
<br />
<br />

</body>
</html>