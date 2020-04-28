<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="../js/summer/summernote-lite.js"></script>
<script src="../js/summer/lang/summernote-ko-KR.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	// 서머노트 쓰기 활성화
	$('#summernote').summernote('enable');
	
	//여기 아래 부분
	$('#summernote').summernote({
		  height: 300,                 // 에디터 높이
		  minHeight: null,             // 최소 높이
		  maxHeight: null,             // 최대 높이
		  focus: true,                  // 에디터 로딩후 포커스를 맞출지 여부
		  lang: "ko-KR",					// 한글 설정
		  placeholder: '최대 2048자까지 쓸 수 있습니다'	//placeholder 설정

	});

});

function reset() {
	// 서머노트 리셋
	$('#summernote').summernote('reset');
}

function submit() {
	if(alert("이메일을 발송 하시겠습니까?")){
		$("#frm").submit();
	}
}

</script>
<link rel="stylesheet" href="../css/summer/summernote-lite.css">
<style type="text/css">

</style>
</head>
<body>
<form action="#" method="get" id="frm">
<div id="">
	<input type="text" name="tittle" id="tittle" />
</div>
<div id="">
	<textarea name="contents" id="summernote" cols="60" rows="40"></textarea>
</div>
<div id="">
	<input type="button" value="발송" onclick="submit()"/>
	<input type="button" value="리셋" onclick="reset()"/>
</div>
</form>
</body>
</html>
