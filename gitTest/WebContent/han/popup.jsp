<%@page import="VO.ProductVO"%>
<%@page import="DAO.ProductDAO"%>
<%@page import="VO.PropriceVO"%>
<%@page import="DAO.PropriceDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>popup.jsp</title>

<style type="text/css">
	html, body{width:100%;height:100%;
	
		background-color: #eee8da;
	}
	#message{
		width:500px;
		height:200px;
		position: absolute;
		left:50%;
		top:50%;
		margin:-180px 100px 0 -220px;  
		text-align: center;
	}

	
</style>

</head>
<body>
	
	<%
		String no = request.getParameter("pno");

 		ProductDAO dao = new ProductDAO();
 	
 		ProductVO vo = new ProductVO(); 	
	
	  	if(no != null) {
	 		
	 		int pno = Integer.parseInt(no);
	 		
	 		vo = dao.getData(pno);
	 	} 
	
	%>
	
	<div id="message">
	
<%-- 		<img src="<%=vo.getPlogo() %>" alt="사이트로고" />
		<p><h2><%=vo.getPsite() %></h2></p> --%>
		
		<h2>구매를 위해 제휴사이트로 이동중입니다.</h2>
		<h2>캐시백 적립을 위해 반드시</h2>
		<h2>캐치패션을 경유해 쇼핑하세요!</h2>
		<h2>캐치패션에 노출되지 않은 할인코드 사용 시</h2>
		<h2>캐시백이 적립되지 않습니다.</h2>
		<p><h2><a href="../mainPage.jsp"><button class="trigger">사이트 이동하기</button></a></h2></p>
					<!-- 마이페이지로 이동해서 적립금 데이터 넘기기  -->
	</div>
	
	<!-- 구매하기 팝업 될 레이어 --> 
    <!-- <div class="modal"> 
         <div class="modal-content"> 
             <span class="close-button">&times;</span> 
            	<h1 class="title">경유 사이트로 이동</h1> 
             
             <form action="#post.php" method="POST"> 
             	<label></label> 
             	<label>제휴사이트로 이동중입니다.</label> 
              	<label></label> 
               	<input type="button" id="cancel" value="취소"> 
               	<input type="button" id="submit" value="이동하기" onclick="location.href='productList.jsp'">
             </form> 
             
         </div> 
     </div> -->
     
  <!--  <script type="text/javascript"> 
   
   var modal = document.querySelector(".modal"); 
   var trigger = document.querySelector(".trigger"); 
   var closeButton = document.querySelector(".close-button"); 
   var cancelButton = document.querySelector("#cancel");
   //console.log(modal);

   function toggleModal() { 
	   modal.classList.toggle("show-modal"); 
   }
   
   function windowOnClick(event) { 
	   if (event.target === modal) { 
		   toggleModal(); 
		   } 
	   }
   
   trigger.addEventListener("click", toggleModal); 
   closeButton.addEventListener("click", toggleModal); 
   cancel.addEventListener("click", toggleModal); 
   window.addEventListener("click", windowOnClick); 
   
   </script> -->
	
	
</body>
</html>