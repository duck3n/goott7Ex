<%@page import="VO.PropriceVO"%>
<%@page import="DAO.PropriceDAO"%>
<%@page import="VO.ProductVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="DAO.ProductDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>productList.jsp</title>
<style type="text/css">
	* {
		margin: 0px;
		padding: 0;
	}
	
	body {
		background-color: #eee8da;
	}
	
	#container {
		width: 1000px;
		margin: auto;
	}
	
	img {
		width : 320px;
		height: 350px;
		margin-top: 10px;
		margin-right: 10px;
		margin-left: 5px;
	}
	
	.wrap{
		margin-top: 20px;
		width: 330px;
		float : left;
		border: 1px solid white;
	}
	
	.lowprice {
		font-size: 12px;
	}
	
	.price {
		font-size: 13px;
	}
	
	.brand {
		font-size: 14px;
		font-weight: bold;
	}
	
	p {
		text-align: center;
	}
	
	input {
		background-color: lightgrey;
		margin-left: 60px;
	}
	
</style>

</head>
<body>
     
     
     
     <!-- 네비 -->
     
	<div id="container">
	
	<jsp:include page="../mainNav.jsp"></jsp:include>

	<%
/* 	new jlist 
	(우선 sql에서 상품아이디를 오름차순으로 정령하고 가져와야함)
		: 그러면 리스트의 첫번째거는 가장 낮은 상품 아이디
		
	counter = list.get(0).get아이디;

	for(vo : list){
		오부젝 min = 리스트.첫번째거;
		
		for(vo : list){
			보.겟아이디(상품 넘버)
			if(counter == 보.아이디){
				if(min.가격 > 보.가격){
					min = 보;
				}
			}
		}
		
		jlist.add(min);
		//( 또는 )
		<div>
			min.get아이디.. 상품 정보..
		</div>
		//
		counter++;
	}



	}	 */
	ProductDAO dao = new ProductDAO();
	
	String pbrand = request.getParameter("pbrand");			//카테고리 값 받기

	ArrayList<ProductVO> list = null;
	ArrayList<ProductVO> jlist = dao.datamin();		//최저가격값만 가져오기
	
	if(pbrand != null){							//받아오는 브랜드 값이 null이 아니면~
		list = dao.getDateByPbrand(pbrand);		//카테고리 값으로 리스트 출력	
		
	} else {
		
		list = dao.getAllDate();	//전체 리스트 출력
	}		//IF ~ END
		
		for(ProductVO jvo : jlist) {	//pno와 min(최저가격)테이블 리스트		<-- 요게 제일 큼
			for(ProductVO vo : list){	//상품에대한 정보 리스트				<--상대적으로 작음
				if(jvo.getPno()==vo.getPno()){		//번호가 일치 할 경우, 실행 
	%>
		
		<div class="wrap">
			<a href="productDetail2.jsp?pno=<%=vo.getPno() %>">
				<img src="<%=vo.getImgfile() %>" alt="<%=vo.getPname() %>" />
			</a>		<!-- 페이지 이동을 위해서 a태그!!! -->
			
			<p class="brand"><%=vo.getPbrand() %></p>
			<p class="lowprice">최저가 비교</p>
			<p class="price"><%=jvo.getPprice()%>원</p> 
			
		</div>
		
	<%
					}//주옥같은 if문 끝
				
				}//안쪽 for문 끝
			
			}//바깥FOR문 END	
	%>
	
	</div>
</body>
</html>