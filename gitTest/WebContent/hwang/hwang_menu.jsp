<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<script>
var loadMenu = function(u, callback){
	$.ajax({
		url: u,
		method: 'GET',
		success: function(data){
			callback(data);
		}
	});
};

var loadLogin = function(data){ // section 영역을 비우고 그 자리에 Login 페이지를 넣는다.
	$("section").empty();
	$("section").html(data);
};
/* var loadJoin = function(data){ 
	$("section").empty();
	$("section").html(data);
};
 */

$(function(){
	var $menuArr = $("#coreTopMenu>span>a"); // 메뉴(Login, Join) 페이지를 찾아 배열형태로 변수에 저장.
	$menuArr.click(function(event){		
		var url = $(this).attr('href');
		switch(url){
		case '../hwang/hwang_login.jsp':
			loadMenu(url, loadLogin);
			break;
		/* case 'register.jsp':
			loadMenu(url, loadJoin);
			break; */
		};
	return false;  //이벤트전달 중지
	});
});
</script>    

<div>
<ul  id="coreTopMenu">
<span><a href='../hwang/hwang_login.jsp'><font color="black"> 로그인 </font></a></span>&nbsp;&nbsp;
<!-- <span><a href='register.jsp'><font color="black"> 회원가입 </font></a></span>&nbsp;&nbsp; -->
</ul>
</div>
