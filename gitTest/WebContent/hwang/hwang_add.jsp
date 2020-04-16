<%@page import="java.util.ArrayList"%>
 <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
 <% request.setCharacterEncoding("UTF-8"); //한글처리 %>
  <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
  <html>
   <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>add</title>
     </head>
      <body>
       <%!ArrayList<String> list;%>
        <% String productName = request.getParameter("product"); 
        //조건
        if (session.getAttribute("productlist") == null) { 
        	//아무런 데이터가 없으면 : Arraylist 할당
        	list = new ArrayList<String>();
        } else { //저장된 데이터가 있으면
        	list = (ArrayList<String>) session.getAttribute("productlist"); 
        }
        list.add(productName); //리스트에 내용
        session.setAttribute("productlist", list); //ArrayList를 session에 저장]
        out.println("<script>alert('상품이 추가되었습니다'); location.href='hwang_main2.jsp';</script>");
        %>


      
 




        
       



