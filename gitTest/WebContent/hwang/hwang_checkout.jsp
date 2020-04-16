<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 <% request.setCharacterEncoding("UTF-8"); //한글처리
 %> 
 <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> 
 <html> 
 <head> 
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>CheckOut</title>
   </head> 
   <body>
    <form>
     <h2 align="center">계산</h2> 
     <p align="center">선택한 상품 목록</p> 
     <hr> 
     <% if (session.getAttribute("productlist") == null) { //추가한 물품(추가)를 하지 않은 경우 %> 
     <p align="center">추가된 상품 없을무</p> 
     <% 
     } 
     else
     { 
     %> 
     <p align="center"><%=session.getAttribute("productlist").toString()%></p> 
     <% 
     } 
     %> 
     <a href="../gitTest/hwang/hwang_shop.jsp" align="center">뒤로가기</a> 
     </form> 
     <form action="../gitTest/hwang/hwang_login.jsp"> 
     <table align="center"> 
     <tr> 
     <td><input type="submit" value="로그아웃"></td>
      </tr> 
      </table> 
      </form>
</body>
 </html>
