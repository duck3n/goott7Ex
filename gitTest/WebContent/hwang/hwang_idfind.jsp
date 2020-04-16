<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript" src="../JS/httpRequest.js"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$("#find").on('click', function() {
		
		
		document.frm.action = "../hwang/hwang_idfindck.jsp";
		document.frm.method = "get";
		document.frm.submit();
	});
});// document ready end
function email_change(form) {
    var value = form.emaildomain[form.emaildomain.selectedIndex].value;
    if (value != "") {
        form.email2.disabled = true;
        form.email2.value = value;
    } else {
        form.email2.disabled = false;
    }

    form.email2.value = value;
   
}
</script>
	
</head>
<body>
<form action="#" name = "frm">  
	<!-- <div>
    	이름 &nbsp;&nbsp; 
    	<input type="text" placeholder="이름을 입력하세요."  name="name" id="name" 
    	style="height: 30px; margin-left: 16px;"/>
    </div> -->
    <br>
    <div>
    	이메일 &nbsp;&nbsp;
    	<input type="text" name="email1" id="email1" value="" class="frm_input"> @
		<input type="text" name="email2" id="email2" value="" class="frm_input" disabled >
		<select name="emaildomain" id = ""class="frm_input" onChange="email_change(this.form);">
		<option value="">선택하세요</option>
		<option value="">직접입력</option>
		<option value="naver.com" > naver.com</option>
		<option value="gmail.com" >gmail.com</option>
	</select>
    
    </div>
    <div>
    	<input type="button" value="찾기" id ="find" style="width : 200px; margin-left : 140px; margin-top : 10px"/>
    
    </div>
	
	
	

	</form>
</body>
</html>