<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="vo.ProductVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.ProductSearchDAO"%>


<link rel="stylesheet" href="../css/ProductSearchLayout.css" />
   
<div id = "searchContents">



<%


String searchString = "";

if(request.getParameter("searchString") != null){
	searchString = request.getParameter("searchString");
	request.getSession().setAttribute("searchString", searchString);
}
else if(request.getSession().getAttribute("searchString") != null){
	searchString = (String)request.getSession().getAttribute("searchString");
}


System.out.println("brand : " + searchString);

ProductSearchDAO dao = new ProductSearchDAO();





%>
<h1>브랜드</h1>
<table>
	<tr>
		<td>상품코드</td>
		<td>상품명</td>	
		<td>상품가격</td>
	</tr>
	
	
<%
ArrayList<ProductVO> list = dao.searchBrand(searchString);

for(ProductVO vo : list){

%>	
	
<tr>
		<td><%=vo.getPno1() %></td>
		<td><%=vo.getPname() %></td>
		<td><%=vo.getPprice() %></td>
	
<%
}
%>
		
	
	</tr>


</table>




</div>