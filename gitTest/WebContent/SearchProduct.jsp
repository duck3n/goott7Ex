<%@page import="VO.ProductVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="DAO.ProductSearchDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" href="../gitTest/css/ProductResult.css" />
    
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


System.out.println("product : " + searchString);

ProductSearchDAO dao = new ProductSearchDAO();





%>
<h1>상품</h1>

<div id="ProductResult">

	
<%
ArrayList<ProductVO> list = dao.searchProduct(searchString);

for(ProductVO vo : list){

%>	
	
	
<div id="ProductWrap">
<%=vo.getPno1() %>
	<a href="">	<!-- 상품을 클릭하면 해당 상품으로 이 -->
	<img src="<%=vo.getImgfile() %>" alt="<%=vo.getPname() %>" />
	</a>
	<p><%=vo.getPname() %></p>
	<p><%=vo.getPprice() %></p>
</div>	
		
<%
}
%>
		
	


</div>
</div>