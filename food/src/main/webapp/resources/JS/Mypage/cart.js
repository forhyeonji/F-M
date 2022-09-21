/**
 * 장바구니 출력
 */

$(document).ready(function(){
	//장바구니 페이지 열자마자
	//1번, id가져오기
	var userid = $("input[name='user']").val();
	
	//2번, cart 함수 호출
	cartlist(userid);
	
//cart 함수 선언
function cartlist(userid){
	alert("장바구니 오픈!!!");
	$.getJSON("/mypage/cart/"+userid+".json", function(data){
		console.log(data);
	})
}
	
	
	
	
	
	
	
	
	
})//docu닫음