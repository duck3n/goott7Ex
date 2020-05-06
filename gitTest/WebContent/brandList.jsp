<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!--자바 class 를 호출해준다   -->
<%@page import="project.mostBrand"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>brandList</title>
<!--  <link rel="stylesheet" href="../css/brandList.css"> -->
<style type="text/css">


html {
	margin: 0;
	padding: 0;
	background-image: url("../gitTest/mainResource/brandList/secondPage.png");
}

#brandListContainer {
	
	margin: 0;
	padding: 0px;
	/*   width: 100%;
	  width:1100px; */
}

#title {
	margin-top: 100px;
	margin-left: 888px;
	margin-right: 888px;
	margin-bottom: 40px;
}
/* 알파벳 라인 좌우 위아래 컨트롤  */
#alpha_Text_Container {
	/* border: 2px solid green; */
	/* 	position: absolute;  */
	margin-left: 386px;
	margin-top: 68px;
	/* background-color: #F8F4EA; */
	/* opacity: 0; */
}
/*  알파벳 라인 간격 조정 */
.alpha {
	/* border: 1px solid blue; */
	float: left;
	margin-left: 24px;
	opacity: 1;
}

#brandBG-outline {
	/* width: 1200px;
		height: 660px;  */
	/* margin-top: 50px; */
	
}

#brandBG {
	/* border: 1px solid orange;
		
			 width: 1200px;
			height: 660px; 
			margin-left: 350px;
			margin-right: 350px; */
	/* margin-top: 50px; */
	
}

/*  most TEXT start */
#most {
	/* border: 1px solid black;  */
	position: absolute;
	left: 445px;
	top: 298px;
	/*  most TEXT end */
}
/*  브랜드 로고 전체 컨트롤 */
#textContainer {
	border: 3px solid pink;
	width: 1100px;
	height: 600px;
	/* position: absolute; */
	margin-left: 400px;
	margin-top: 242px;
	/* background-color: #F6F1E6; */
}

#mostPopular{
	float:left;
	margin-left:60px;
	margin-top: 37px;
	
}
#alphaBet{

	float:left;
	width:200px;
	margin-left: 60px;
	margin-top: 140px;
	
	
}



/*  brandLogo 이미지 end*/




</style>
</head>
<body>



<%



Cookie[] c = request.getCookies();
if (c != null) {
	for (Cookie cf : c) {
		if (cf.getName().equals("id")){
			String ids = cf.getValue();
			session.setAttribute("id", ids);
		}
	}
}

// 세션값 가져오기
String id = (String) session.getAttribute("id"); // Object 타입이므로 다운캐스팅
 

%>

	<%
	if(id == null){
	
	%>


		<jsp:include page="before_mainNav.jsp"></jsp:include>

	<%
	}
	else{
		
	
	%>
	<jsp:include page="mainNav.jsp"></jsp:include>
	
	<%
	}
	%>

	<!-- 타이틀 div -->
	<div id="brandListContainer">
		<div id="title">
			<img src="../gitTest/mainResource/brandList/barndPageText.png" id="title-img"
				alt="타이틀이미지" />
		</div>
		<!-- 타이틀 div끝 -->
<%
			String fno = request.getParameter("fno");

			if (fno == null) { /* a tag 를 누르지 않아서 페이지가 null 이면  */
				fno = "shap"; /*allway mostPopular 페이지를 노출 시켜 준다    */
			} 
%>

		<!-- 알파벳이미지 아웃라인 -->
		<div id="alpha_Text_Container">
			<div class="alpha">

<%
			String alist[] = {"shap&shap", "a&a","b&b", "c&c", "d&d",
									   "e&e","f&f", "g&g","h&h","i&i",
									    "j&j","k&k","l&l", "m&m","n&n",
									    "o&o", "p&p","q&q","r&r", "s&s",  
									    "t&t","u&u", "v&v","w&w","x&x",
									   "y&y","z&z"
			                         }; 	                           
            for(String str: alist) { 
	              String[] alphaList = str.split("&");
            	/*  System.out.println(alphaList[0]);
	                 System.out.println(alphaList[1]); */								                           
					   
%>

				<a href="brandList.jsp?fno=<%=alphaList[1]%>" class="alpha"> <img
					src="../gitTest/mainResource/brandList/<%=alphaList[0]%>.png" alt="" />
				</a>

<%
}
%>
			</div>
		</div>
		<!--mostBrand 전체 container  -->
		<div id="textContainer">

			<!-- mostPopular Text div -->
			<div id="most">
			<%
			String ename = fno;
         if(ename.equals("shap")){ename="most";}	 		
%>
				<img src="../gitTest/mainResource/brandList/<%=ename%>Text.png" alt="" />
			</div>
<%
		String[]  logo  =  null;
            //most Popular 관련 이미지 
		     mostBrand  mostPage = new mostBrand();
            
		   //aBrand  관련 이미지
		     mostBrand  aPage = new mostBrand();
		     if(fno.equals("shap")) { 
		    	  logo = mostPage.getPopular(); 
		        }else if (fno.equals("a")) { /* a tag 를 누르면  페이지가 이동 하겠금   */
		        	logo = aPage.getaBrand();
				} else if (fno.equals("d")) {
					fno = "b";
				} else if (fno.equals("c")) {
					fno = "c";
				} else if (fno.equals("d")) {
					fno = "b";
				} else if (fno.equals("e")) {
					fno = "e";
				} else if (fno.equals("f")) {
					fno = "f";
				} else if (fno.equals("g")) {
					fno = "g";
				} else if (fno.equals("f")) {
					fno = "f";
				} else if (fno.equals("h")) {
					fno = "h";
				} else if (fno.equals("i")) {
					fno = "i";
				} else if (fno.equals("j")) {
					fno = "j";
				} else if (fno.equals("k")) {
					fno = "k";
				} else if (fno.equals("l")) {
					fno = "l";
				} else if (fno.equals("m")) {
					fno = "m";
				} else if (fno.equals("n")) {
					fno = "n";
				} else if (fno.equals("o")) {
					fno = "o";
				} else if (fno.equals("p")) {
					fno = "p";
				} else if (fno.equals("q")) {
					fno = "q";
				} else if (fno.equals("r")) {
					fno = "r";
				} else if (fno.equals("s")) {
					fno = "s";
				} else if (fno.equals("t")) {
					fno = "t";
				} else if (fno.equals("u")) {
					fno = "u";
				} else if (fno.equals("v")) {
					fno = "v";
				} else if (fno.equals("w")) {
					fno = "w";
				} else if (fno.equals("x")) {
					fno = "x";
				} else if (fno.equals("y")) {
					fno = "y";
				} else if (fno.equals("z")) {
					fno = "z";
				}
	
		     
		    	 
%>

			  <!--  shap 일때  -->
<%
			
			if(fno.equals("shap")){        //shap이면 포문을 실행 
			     for(String str: logo){
			    		 String[] bList = str.split("&");
%>
      		 <!--mostPopular div 안에 배열을 실행   -->
				<div id="mostPopular">
					<a href="../gitTest/han/productList.jsp?pbrand=<%=bList[0] %>"> 
					<img src="../gitTest/mainResource/brandList/<%=bList[0] %>.png" alt=""/>
					</a>
				</div>
<%
				 }     
	         // shap 일때  end
	         
	         
	        //alphaBet 일때 
	        //shap 아니면 알파벳 이미지 배열을 실행 
			}else {
%>
	         
<%
	         	//alphaBet div 안에 배열을 실행  
			     for(String str: logo){
			    		 String[] bList = str.split("&");
%>
				<div id="alphaBet">
					<a href="productList?pbrand=<%=bList[0] %>"> 
					<img src="../gitTest/mainResource/brandList/<%=bList[0] %>.png" alt=""/>
					</a>
				</div>
<%
			 	}     
			}
%>
	          <!--  alphaBet 일때 end -->
			</div>

			<!--mostPopular TEXT start  -->

		</div>
	
</body>
</html>