/**
 * 주문관련 js 파일
 */

$(document).ready(function(){
	//order 진행하면
	//로그인된 아이디가져옴.
	var userid = $("input[name='user']").val();
	
	//전체 주문 클릭하면
	$("#my_cart").on("click", "#my_cartAll", function(){
		alert("호잇호잇");
//		var cnoArr = new Array();
//		var cntArr = new Array();
//		var sumArr = new Array();
//
//		$("input:checkbox[name='my_onecheck']:checked").each(function(){			
//			//상품번호
//			var c_no = $(this).val()
//			cnoArr.push(c_no);
//			//상품수량
//			var c_cnt = $("#my_cntnow"+$(this).val()).val()
//			cntArr.push(c_cnt);
//			//상품별 합계
//			var c_sum = $("#my_sum"+$(this).val()).data("c_sum");
//			sumArr.push(c_sum);
//		})
//		console.log(cnoArr);
//		console.log(cntArr);
//		console.log(sumArr);
//		cartorder({cnoArr:cnoArr, cntArr:cntArr, sumArr:sumArr, userid:userid});
//	
//	for(var i=0; i<cnoArr.length; i++){
//		$.ajax({
//			type:"post",
//			url:"/mypage/cart/order/"+cnoArr[i],
//			success:function(result){
//				if(result=="success"){
//					alert("성공햇냐?")
//				}
//			}
//			
//		});	
//	}
	
	
	
	})
	
//전체 주문 클릭 함수 선언
function cartorder(cartOrderArr, userid){
		console.log(cartOrderArr);


}//cartorder 닫음	


	
	
	
	
	
	
})//docu닫음