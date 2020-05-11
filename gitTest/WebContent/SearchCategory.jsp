<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="VO.ProductVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="DAO.ProductSearchDAO"%>

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


System.out.println("category : " + searchString);

ProductSearchDAO dao = new ProductSearchDAO();





%>
<h1>카테고리</h1>

<div id="ProductResult">
	
	
<%
ArrayList<ProductVO> list = dao.searchCategory(searchString);


for(ProductVO vo : list){

%>	

<div id="ProductWrap">
	<p><%=vo.getPbrand() %></p>
	<a href="../gitTest/han/productDetail.jsp?pno=<%=vo.getPno() %>"><%=vo.getPname() %></a>
	<img src="<%=vo.getImgfile() %>" alt="<%=vo.getPname() %>" />
	</a>
	<p><%=vo.getPprice() %></p>	
</div>
<%
}
%>
		
	


</div>

</div>