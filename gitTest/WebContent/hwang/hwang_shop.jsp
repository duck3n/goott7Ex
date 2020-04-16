<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 



<% request.setCharacterEncoding("UTF-8"); //한글처리
%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
"http://www.w3.org/TR/html4/loose.dtd"> 
<html> 
<head> 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <title>setProduct</title>
  </head> 
  <body> 
  <% 
  if (request.getParameter("id") == null){ //checkOut.jsp에서 넘어오면 id가 null값이 된다
	  session.setAttribute("id", session.getValue("id"));//getValue를 사용해서 값을 불러옴 
	  }else{ 
		  session.setAttribute("id", request.getParameter("id")); 
	} 
%> 
  <h2 align="center">상품 선택</h2> 
  <hr> 
  <p align="center">
	
  <hr>
   <form action="../hwang/hwang_add.jsp"> 
   <table align="center"> 
   		<tr> 
   			<td>
   				<select name="product"> 
			   <option value="사과">사과</option>
			   <option value="오렌지">오렌지</option> 
			   <option value="바나나">바나나</option>
			   <option value="파인애플">파인애플</option>
			   <option value="수박">수박</option> 
     		 </select>
      </td> 
      <td>
      <input type="submit" value="추가" /></td> 
      </tr> 
      <tr> 
      <td align="center">
     <a href="../hwang/hwang_checkout.jsp">계산</a>
      </td>
      </tr> 
      </table>
       </form>
        <form action="../hwang/hwang_login.jsp">
         <table align="center"> 
         <tr> 
         <td>
         <a href="../before_mainPage.jsp"><input type="submit" value="로그아웃"></a>
         </td> </tr> </table> 
         </form>
</body> 
</html>

