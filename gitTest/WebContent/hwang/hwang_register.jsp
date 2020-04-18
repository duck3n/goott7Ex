<%@ page language="java" contentType="text/html; charset=UTF-8" 
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript" src="../js/httpRequest.js"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript">

$(document).ready(function(){
	$("#id").focus();
	//버튼 클릭후 중복 확인
	$("input[value='중복확인']").on('click', checkUp);
	//입력 중에 중복 확인
	//$("#id").on('keyup', checkUp);
	
	function checkUp() {
		// 사용자 입력을 받아서 parameter를 전달 - ajax 수행
		var txt = $("#id").val().trim();	 //trim() : 공백제거함수
		
		var params = "id="+encodeURIComponent(txt);
		
		sendRequest("../hwang/hwang_idcheck.jsp", params, callback, 'GET');

	
		
	}//checkup() end
	
	function callback() {
		if(xhr.readyState==4 & xhr.status==200) {
			var msg = xhr.responseText.trim();
			//console.log(msg);
			
			//응답이 true이면 아이디가 있다 출력
			//응답이 false이면 사용가능  출력
			if(msg=='true'){
				$("#msg").html('<h4>아이디가 존재함</h4>');
			}else {
				$("#msg").html('<h4>사용가능한 아이디임</h4>');
			}
		}
		
	}//callback end
//////////////////////////////////////////////////////////////////////
	$("#reg").on('click', function() {
		if($("#id").val()==""){
			alert("아이디 입력");
			$("#id").focus();
			return;
		}else if($("#pw").val()==""){
			alert("패스워드 입력");
			$("#pw").focus();
			return;
		}else if($("#recheck").val()==""){
			alert("다시 한번 입력");
			$("#recheck").focus();
			return;
		}else if($("#name").val()==""){
			alert("이름 입력");
			$("#name").focus();
			return;
		}else if($(':radio[name="gender"]:checked').length < 1){
			alert("성별 체크");
			return;
		}else if($("#email1").val()==""){
			alert("이메일 입력");
			$("#email").focus();
			return;
		}else if($("#txtMobile1").val()==""){
			alert("휴대폰 번호를 선택");
			return;
		}else if($("#txtMobile2").val()==""){
			alert("가운데 번호를 선택");
			return;
		}else if($("#txtMobile3").val()==""){
			alert("끝 번호를 선택");
			return;
		}else if($("#FirstSelectYear").val()==""){
			alert("년도 선택");
			return;
		}else if($("#FirstSelectMonth").val()==""){
			alert("월 선택");
			return;
		}else if($("#FirstSelectDay").val()==""){
			alert("일 선택");
			return;
		}else if($("#age").val()==""){
			alert("나이 입력");
			$("#age").focus();
			return;
		}else if($("#pw").val() != $("#recheck").val()){
			alert("같은패스워드가아님");
			$("#pw").focus();
			return;
		}
		document.frm.action = "../hwang/hwang_registerOk.jsp";
		document.frm.method = "get";
		document.frm.submit();
	});
});// document ready end
//////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////
   function CheckForm() {
        if (document.getElementById("txtMobile1").value == "") {
            window.alert("휴대폰 번호를 선택하시오.");
            return false;
        }
        else if (document.getElementById("txtMobile2").value.length != 4) {
            window.alert("가운데 번호는 4자리로 입력하세요");
        }
        else if (document.getElementById("txtMobile3").value.length != 4) {
            window.alert("끝 번호는 4자리로 입력하세요");
        }
        else {
        	window.alert("적용완료");
        }
    }
//////////////////////////////////////////////////////////////////////
function email_change() {
	  var s = document.getElementById("emaildomain");
	  var value = s.options[s.selectedIndex].value;
    if (value != "") {
        email2.disabled = true;
        email2.value = value;
    } else {
        email2.disabled = false;
    }

    email2.value = value;
    email2.focus();
    return;
}

</script>
 
<style type="text/css">
#msg, #h4 {
	
		display : inline;
		color : red;
	
}

th, td {
   vertical-align: middle;
}

body{
background-color: #ffd8d8;
color: #747474;
}
</style>

</head>
<body> 

   <div>
      <div></div>
      <div class="joinTitle">
         <!-- 회원가입 텍스트 -->
         <div>
            <h2 style="margin-left: 900px;">회원 가입</h2>
         </div>
      </div>
      <!-- 회원가입 텍스트 -->

      <!-- <h4 style="margin : 20px 0 10px 5px; margin-left: 230px;" >필수 입력 정보</h4> -->
      <p class="required" style="text-align: right;  margin-right: 160px;">
         <font size="1px;">필수입력사항</font><img src="../images/ico_required.gif" alt="required Field">
      </p>
      <div class="joinInputArea">
         <!-- 가입 영역 -->
         <!-- 비밀번호 힌트 추가 ? -->
         <table width="940" height="850" style="padding: 5px 0 5px 0;" align="center">
         <form action="#" name = "frm">  
            <tbody>
               <tr height="2" bgcolor="#FFC8C3">
                  <td colspan="3"></td> 
               </tr>
               <tr>
               
               <tr>
                  <th scope="row">아이디 <img src="../images/ico_required.gif"
                     alt="required Field">
                  </th>
                  
                  <td>
                  <input type="text" name="id" maxlength="16" id ="id" >
                   	<input type="button" value="중복확인" />
					<span id="msg"></span> 
                
               </tr>
        
               <tr>
              
                  <th scope="row">비밀번호 <img src="../images/ico_required.gif"
                     alt="required Field">
                  </th>
                  <td><input type="password" name="pw" id="pw" maxlength="16" >
                  
                  </td>
               </tr>
               
               <tr>
                  <th scope="row">비밀번호 확인 <img src="../images/ico_required.gif"
                     alt="required Field">
                  </th>
                  <td><input type="password" name="recheck" id="recheck" maxlength="16"
                    ></td>
               </tr>
				<tr>
                  <th scope="row">이름 <img src="../images/ico_required.gif"
                     alt="required Field">
                  </th>
                  <td><input type="text" name="name" id = "name" maxlength="16" >
                     <br></td>
               </tr>
               	<th scope="row">성별 <img src="../images/ico_required.gif"
                     alt="required Field">
                  </th>
                  <td><input type="radio" id= "gender" name="gender" value = "m" />남      
                  	  <input type="radio" id= "gender" name="gender" value = "f"  />여
                     <br></td>
               </tr>
               <th scope="row">이메일 <img src="../images/ico_required.gif"
                     alt="required Field">
                  </th>
                  <td>
                
				    <input type="text" name="email1" id="email1" value="" class="frm_input" > @
				    <input type="text" name="email2" id="email2" value="" class="frm_input"disabled >
				   <select name="emaildomain" id = "emaildomain" class="frm_input" onChange="email_change();">
						        <option value="">직접입력</option>
						        <option value="naver.com">naver.com</option>
						        <option value="gmail.com">gmail.com</option>
						        <option value="daum.net">daum.net</option>
						        <option value="hanmail.net">hanmail.net</option>
						        <option value="nate.com">nate.com</option>
   							 </select>
                     <br></td>
               </tr>
               <th scope="row">핸드폰 <img src="../images/ico_required.gif"
                     alt="required Field">
                    
                  </th>
                  
                  <td>
                 <select name = "txtMobile1" id="txtMobile1">
					    <option value="">::선택::</option>
					    <option value="011">011</option>
					    <option value="016">016</option>
					    <option value="017">017</option>
					    <option value="019">019</option>
					    <option value="010">010</option>
					</select>
					<input type="text" name = "txtMobile2" id="txtMobile2" value="" size="4" maxlength="4" />
					<input type="text" name = "txtMobile3" id="txtMobile3" value="" size="4" maxlength="4" />
                  <input type="button" value="검사" onclick="CheckForm();" /> 
                     <br></td>
               </tr>
               
            
               <th scope="row">로봇이 아닙니다 <img src="../images/ico_required.gif"
                     alt="required Field">
                  </th>
                  <td>
                  <input type="checkbox" name="grade"  id = "grade"value = "normal"  /> 필수체크
                    
                     <br></td>
               </tr>
               <th scope="row">생년월일 <img src="../images/ico_required.gif"
                     alt="required Field">
                  </th>
                  <td>
                  <select name="FirstSelectYear">
				       <option value="2013">2013년</option>
				       <option value="2012">2012년</option>
				       <option value="2011">2011년</option>
				       <option value="2010">2010년</option>
				       <option value="2009">2009년</option>
				       <option value="2008">2008년</option>	
				       <option value="2007">2007년</option>
				       <option value="2006">2006년</option>
				       <option value="2005">2005년</option>
				       <option value="2004">2004년</option>
				       <option value="2003">2003년</option>
				       <option value="2002">2002년</option>
				       <option value="2001">2001년</option>
				       <option value="2000">2000년</option>
       					</select>
                 <SELECT name="FirstSelectMonth">
        					<option value="1">1월</option>
        					<option value="2">2월</option>
        					<option value="3">3월</option>
        					<option value="4">4월</option>
        					<option value="5">5월</option>
        					<option value="6">6월</option>
        					<option value="7">7월</option>
        					<option value="8">8월</option>
        					<option value="9">9월</option>
        					<option value="10">10월</option>
        					<option value="11">11월</option>
        					<option value="12">12월</option>

				</SELECT>
				<SELECT name="FirstSelectDay">
						<option value="1">1일</option>
						<option value="2">2일</option>
						<option value="3">3일</option>
						<option value="4">4일</option>
						<option value="5">5일</option>
						<option value="6">6일</option>
						<option value="7">7일</option>
						<option value="8">8일</option>
						<option value="9">9일</option>
						<option value="10">10일</option>
						<option value="11">11일</option>
						<option value="12">12일</option>
						<option value="13">13일</option>
						<option value="14">14일</option>
						<option value="15">15일</option>
						<option value="16">16일</option>
						<option value="17">17일</option>
						<option value="18">18일</option>
						<option value="19">19일</option>
						<option value="20">20일</option>
						<option value="21">21일</option>
						<option value="22">22일</option>
						<option value="23">23일</option>
						<option value="24">24일</option>
						<option value="25">25일</option>
						<option value="26">26일</option>
						<option value="27">27일</option>
						<option value="28">28일</option>
						<option value="29">29일</option>
						<option value="30">30일</option>
						<option value="31">31일</option>
						
				       
					</SELECT>
					
                     <br></td>
               </tr>
               <th scope="row">나이 <img src="../images/ico_required.gif"
                     alt="required Field">
                  </th>
                  <td> <input type="text" name="age" id="age" maxlength="2" placeholder="나이 입력" size="4" >
                     <br></td>
               </tr>
   
   				
               <tr height="2" bgcolor="#FFC8C3">
                  <td colspan="2"></td>
               </tr>
               <tr>
      
                  <td colspan="2" align="center"><br> <input type="submit"
                     value="가입완료" id = "reg"> <a href="../mainPage.jsp"><input type="button" name="cancel"
                     value="취소"></a> </td>
               </tr>

               </tbody>
         </table>
      </div>
   </div>
</form>
</body>

</html>




      
   
