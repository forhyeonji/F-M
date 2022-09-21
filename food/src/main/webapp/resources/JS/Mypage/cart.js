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
		var str="";
		str+="<tr id='my_tableHead'>"
		str+="<td colspan='3'>상품</td><td>수량</td>"
		str+="<td>상품별 합계</td><td></td></tr>"					
		for(var i=0; i<data.length; i++){
			str+="<tr><td><input type='checkbox' checked></td>"
			str+="<td>사진</td>"
			str+="<td>"+data[i].s_name+"<br>"
			str+="<span id='my_cartCon'>"+data[i].s_content+"</span></td>"
			str+="<td>"+data[i].c_cnt+"</td>"
			str+="<td>"+data[i].c_cnt*data[i].s_price+"원</td>"
			str+="<td><input type='button' value='주문하기'><br>"
			str+="<input type='button' value='삭제하기'></td></tr>"
		}
		$("#my_cartlist").html(str);
	})
}
	
	
	
	
	
	
	
	
	
})//docu닫음