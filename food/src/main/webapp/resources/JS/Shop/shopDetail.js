/**
 * 
 */
//문의등록 버튼 클릭이벤트가 발생하면 상품 페이지로 이동
$(document).ready(function() {
	$(".sh_signup").click(function() {
		location.href = "${path}/shopDetail";
	})
	
	
	$(".que").click(function(e) {
		e.preventDefault();
		  $(this).next(".anw").stop().slideToggle(300);
		  $(this).toggleClass('on').siblings().removeClass('on');
		  $(this).next(".anw").siblings(".anw").slideUp(300); // 1개씩 펼치기
	});

	//답변등록 버튼을 누르면 답변페이지로 이동
	
	$(".answerbtn").click(function(){
		location.href = "/shopEnswer";
	})
	
})