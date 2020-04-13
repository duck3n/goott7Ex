<%@page import="vo.ProductVO"%>
<%@page import="dao.ProductSearchDAO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<style type="text/css">

  table{
   width: 1000px;
   margin: 0 auto;
   }
   
   table, tr, th, td{
   border: 1px solid black;
   border-collapse: collapse;
   }
   
   th{
   padding: 2px;
   font-size: 20px;
    background: linear-gradient(135deg,  #9a1e2b 0%,#ca203c 32%,#ca203c 32%,#d82a4a 50%,#e87e93 100%); 
    filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#9a1e2b', endColorstr='#e87e93',GradientType=1 ); 
   }
   
   .col1{
   width: 15%;
   text-align: center;
   }
   
   .col2{
   width: 50%;
   text-align: center;
   }
   
   .col3{
   width: 15%;
   }
   
   .col4{
   width: 20%;
   }
   
   .btn{
   text-align: center;
   }
   
   #page{
   width: 10px;
   margin : 0;
   padding: 2px;
   border: 1px solid gray;
   }
   
   #pageList{
   }
   
   .red{
   color: red;
   font-size: 20px;
   height: 100px;
   }


</style>


<meta charset="UTF-8">
<title>검색</title>
</head>







<body>

<%

String pid = "";			// main에서 검색 버튼을 눌렀을때 Request.getParameter
String pname = "맥북프로";
String pcat = "";

ProductSearchDAO dao = new ProductSearchDAO();


%>
<table>
	<tr>
		<td>상품코드</td>
		<td>상품명</td>
		
		<td>상품가격</td>
	</tr>
	
	
<%
ArrayList<ProductVO> list = dao.selectAllProduct(pid, pname, pcat);

for(ProductVO vo : list){

%>	
	
<tr>
		<td><input type="text" name="pid" id="pid" /><%=vo.getPid() %></td>
		<td><input type="text" name="pname" id="pname" /><%=vo.getPname() %></td>
		<td><input type="text" name="price" id="price" /><%=vo.getPprice() %></td>
	
<%
}
%>
		
	
	</tr>


</table>

</body>
</html>