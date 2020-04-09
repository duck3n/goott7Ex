$(function() {
// 	네비 부분 스크립트
	console.dir($('#body_container'));
	$('.navItem').hide();
	$('.nav').hover(nav_slide);

});

function nav_slide() {
	//.nav의 자식들(li)
	item = $(this).find('li');
	//슬라이드 토글(개별)
	$(item).stop().slideToggle(300);
}
