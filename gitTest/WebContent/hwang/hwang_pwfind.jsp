<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript" src="../JS/httpRequest.js"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$("#find").on('click', function() {
		
		
		document.frm.action = "../hwang/hwang_pwfindck.jsp";
		document.frm.method = "get";
		document.frm.submit();
	});
});// document ready end

</script>
</head>
<body>
<form action="#" name = "frm">  
 <div>
    	���̵� &nbsp;&nbsp; 
    	<input type="text" placeholder="���̵� �Է��ϼ���."  name="id" id="id" 
    	style="height: 30px; margin-left: 13px;"/>
    </div>
    
<br />
<div>
    �̸� &nbsp;&nbsp; 
   <input type="text" placeholder="�̸��� �Է��ϼ���."  name="name" id="name" 
   style="height: 30px; margin-left: 28px;"/>
    </div>
    <div>
    	<input type="button" value="ã��" id ="find" style="width : 200px; margin-left : 140px; margin-top : 10px"/>
    
    </div>
    </form>
</body>
</html>