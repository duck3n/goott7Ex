<%@page import="sun.security.util.Length"%>
<%@page import="VO.PropriceVO"%>
<%@page import="DAO.PropriceDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="DAO.ProductDAO"%>
<%@page import="VO.ProductVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

 <%
 	/* jsp page 우선순위 : jsp 먼저 읽고 다음 자바스크립트를 읽음 */	
 	
  	String no = request.getParameter("pno");		//상품번호 데이터를 받아온다.
 
 	ProductDAO dao = new ProductDAO();
 	
 	ProductVO vo = new ProductVO();
 	
 	int pno = 1;
 	ArrayList<ProductVO> slist = null;				//상품가격과 번호에 대한 테이블 리스트
 	
  	if(no != null) {
  		pno = Integer.parseInt(no);					//상품번호를 int형으로 변환
  		
	 	vo = dao.getData(pno);						//vo에 상품 정보를 pno로 통해서 전달.
	  	
	 	slist = dao.Datasame(pno);					//가격테이블에 pno와 같은 번호의 리스트만 출력
  	}
 		
  	/* System.out.println("slist : "+slist);
  	System.out.println("vo : "+vo.getPno());
 	*/
  	
  
 %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>productDetail.jsp</title>


<link rel="stylesheet" href="../css/mainNav.css" />

<style type="text/css">
	body {
		background-color: #eee8da;
	}
	
	/*=============================================================  */
	#proimg {					/* 상품 이미지 div  */
		margin: 0 auto;
		width: 687px;
	}
	
	#pic {						/* 상품 이미지 div  */
		margin: auto;
		float: left;
		padding: 10px;
	 	background-color: white;
	}
	
	
	#pImg {						/* 상품 이미지  */
		width: 320px;
		height: 550px;
		margin-right: 10px;
		margin-bottom: 20px;		/* 이미지 사이에 여백 주기  */
	}
	/*=============================================================  */
	
	#desc {						
		width: 400px;
		height : 900px;
		margin: 30px;
		float: left;
		background-color: #eee8da;
	}
	
	#brend { 				/*상품이름 css */
		font-size: 20px;
	}
	
	#wishBtns {				/*위시리스트 버튼 css */ 
		border-top: 1px solid gray;
	}
	
	#tab {
		width:300px;
	}									/*100%정품, 무이자할부 소개 css */ 
	
	#tr {
		background-color: lightgray;
	}		
	
	/*=============================================================  */
	
	#orderbox {				/*주문하기 form 형태 css */
		height: 93px;
		border: 1px solid black;
		margin-top: 10px;
		margin-bottom: 20px;
	}
	
	
	#allprice {font-size: 17px; float: right;}
	#price {font-weight: bold; float: right;} 		/* 가격div css */ 
	
	#cashback {font-size: 13px; float: right;} 		/* 환급율 div css */ 
	
	#order { 
		float: right;
		font-size: 15px;
		text-decoration:none;
	}
	
	#prodesc {
		margin-bottom: 20px;
	}
	
	#service {
		border-top: 1px solid black;
	}
	
	#center {
		float: left;
	}
	
	#call {
		float: right;
		font-size: 18px;
		margin-top: 0;
	}
	
	#down {
		margin: 10 auto;
		clear: both;
	}
	
	#detdown {
		background-color: #eee8da;
		padding-left: 250px;
		padding-right: 250px;
		font-size: 12px;
	}
	
	#downimg {
		border-bottom: 1px solid white;
	}
	
	#downimg1 {
		width:200px;
		height:40px;
	}
	
	#downp {
		width: 800px;
	}
	
	.pro{
		font-size: 15px;
	}
	
	#downp .p {
		float: left;
	}
	
	#tit {
		color: #666666;
	}
	
	#downtel {
		clear: both;
		border-top: 1px solid white;
	}
	
</style>


<style type="text/css">
 a:link { color: black; text-decoration: underline;}
 a:visited { color: black; text-decoration: none;}
 a:hover { color: blue; text-decoration: underline;}
 /* a태그에 대한 css  */
</style>


<style type="text/css">
	select { 
		width: 220px; /* 원하는 너비설정 */ 
		padding: .4em .8em; /* 여백으로 높이 설정 */ 
		font-family: inherit; /* 폰트 상속 */ 
		background: url(https://farm1.staticflickr.com/379/19928272501_4ef877c265_t.jpg) no-repeat 95% 50%; /* 네이티브 화살표 대체 */ 
		border: 1px solid gray; 
		border-radius: 0px; /* iOS 둥근모서리 제거 */ 
		-webkit-appearance: none; /* 네이티브 외형 감추기 */ 
		-moz-appearance: none; 
		appearance: none; 
	}

	select::-ms-expand { display: none; }
	/* 사이즈 select 박스 css */
</style>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
 	$(document).ready(function () {
		$("#cart").on('click', function() {
			//console.log("cart click");
			
			var pno = <%=vo.getPno() %>
			
			//consol.log("pno :"+ pno);
			
			//$("#no").val();
			
			$("#no").val(pno);
			
			document.frm.action = "../hwang/hwang_login.jsp";
			document.frm.submit(); 
			
		}); 
	});  
 	
	// 위시리스트 클릭시 페이지 이동.
	
	var check = $("input[type='checkbox']");
	check.click(function(){
		$("p").toggle();
	});
	
	// 사이즈 체크박스. 
	
</script>

</head>
<body>
   <div id="container">

		<jsp:include page="../before_mainNav.jsp"></jsp:include>


	</div>
   
   <form action="#" name="frm">
		<input type="hidden" name="no" id="no" value="<%=vo.getPno() %>" />
		<input type="hidden" name="no" id="no" />
	</form>
	
	<div>
	
		<div id="proimg">
			
			<div id="pic">
				<img src="<%=vo.getImgfile() %>" alt="<%=vo.getPname() %>" id="pImg" />
				<img src="<%=vo.getImgfile2() %>" alt="<%=vo.getPname() %>" id="pImg" />
				<img src="<%=vo.getImgfile3() %>" alt="<%=vo.getPname() %>" id="pImg" />
				<img src="<%=vo.getImgfile4() %>" alt="<%=vo.getPname() %>" id="pImg" />
			</div>
			
		</div>
		<!-- 상품이미지 end  -->
	
		<div id="desc">
			<p id="brend">
				<h3><%=vo.getPbrand() %></h3>	<!-- 상품브랜드이름  -->
			</p>
			
			<p id="name">
				<%=vo.getPname() %> 		<!-- 상품이름  -->
			</p>
				
			<p>최저가격 : <%=vo.getPprice() %>원</p>		<!-- 상품가격  -->
				
			<div id="wishBtns">
				<img src="../catchimg/wishlist.png" alt="위시리스트" id="cart" />
			</div>		<!-- 마이페이지로 넘겨서 데이터 전송해야함  -->
				
			<table id="tab">
	     		<Tr id="tr">
	          		<th>100% 정품</th><th>무이자 할부</th>
	     		</Tr>
	     	</table>
	     	
			<p>상품 번호(Product number) [<%=vo.getPno() %>]</p>
			
			<p>관부가세 + 배송비 포함금액</p> 
			
			<p><div></div></p>
			
			<select>
				<option selected>사이즈를 선택해 주세요.</option> 
				<option>ONE SIZE</option>
				<option>XXS</option>
				<option>XS</option> 
				<option>S</option> 
				<option>M</option>
				<option>L</option> 
				<option>XL</option>
				<option>XXL</option>
				<option>XXXL</option>  
			</select>
			
			<a href="sizechart.jsp">사이즈 차트</a>
			
	     	<%	
	  			
				// pno에 맞는 사이트와 가격 리스트만 출력
				for(ProductVO pvo : slist) {
	
			%>
			
			<div id="orderbox">
			
				<div id="header">
				
					<div id="logo">
						<img src="<%= pvo.getPlogo() %>" width="140" height="40" alt="사이트로고" />						
							<div id="allprice">
								<div id="price"><%=pvo.getPprice() %>원</div>
							</div>
					</div>
					
				</div>
				<!-- header end -->
				
				<div id="cashback">
					예상 캐시백 적립 : <%=pvo.getPprice()/pvo.getPback() %>원 
				</div>												
					
				<div id="footer">
				
					<div id="delivery">
					
						<div>
							2-4일 내 배송	
						</div>
						
						<div id="order">
							<div>
								<button><a href="../hwang/hwang_login.jsp" id="order">구매하기</a></button>
							</div>
						</div>
						
					</div>			
					
				</div>
				<!-- footer end  -->
			</div>
			
			<%
			}
			
			%>
				
			<div id="prodesc">
				<div>
					<div>
						<p>안내된 예상 현금캐시백은 순수 상품가 기준이며, 실제 지급 캐시백은 환율 및 환차손 적용에 따라 다를 수 있습니다.</p>
						<p>
							&상세 정보&
						</p>
						<div> <%=vo.getProdesc() %></div>
					</div>
				</div>
			
				<div id="service">
					<div id="center">
						고객센터
					</div>
					
					<a href="tel:010-4767-3704" id="call">
						<div>고객센터로 이동</div>
					</a>
				</div>	
			
			</div>
		</div>
		<!-- desc end  -->

		<div id="down">
			<div id="down1">
				<div style="background-color: #eee8da" id="">&nbsp;</div>
				
				<div id="detdown">
					<div>
					
						<div id="downimg">
							<img src="../catchimg/logo.png" alt="이미지" id="downimg1">
						</div>
						
						<div id="downp">
							<br />
							<p class="pro">© Goott Project</p> 
							<p>(주)구트아카데미</p>
							<p>
								<span id="tit">팀장</span> <span>서창학, (영문)</span> &nbsp;&nbsp;
								<span id="tit">사업자등록번호</span> <span>123-45-00700</span> &nbsp;&nbsp;
								<span id="tit">통신판매업신고번호</span> <span>제 2020-서울구로-77777호</span>
							</p>
							<p>
								<span id="tit">주소</span> <span>서울시 가산동 구트아카데미</span> &nbsp;&nbsp;
								<span id="tit">개인정보책임자</span>
								<span><a href="mailto:dan@catchfashion.com">김창주</a></span> &nbsp;&nbsp;
								<span id="tit">호스팅서비스</span> <span>Amazon Web Services</span>
							</p>
							<br />
						</div>
						
						<div id="downtel">
							<p>
								<span>고객센터</span>
								<span>
									<a href="tel:1899-1099">1234-5678, </a>
									<a href="mailto:customer@catchfashion.com">customer@goott.com</a>
								</span>
							</p>
						</div>

					</div>
				</div>

			</div>
		</div>
	
		
	</div>
	<!-- 페이지 end -->
	
</body>
</html>
