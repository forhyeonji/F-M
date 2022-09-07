/**
 * 상품목록 JS
 */

//상품등록 버튼 클릭이벤트가 발생하면 상품등록 페이지로 이동
$(document).ready(function(){
	$("#btnAdd").click(function(){
		location.href="${path}/shopRegistration";
	})
})