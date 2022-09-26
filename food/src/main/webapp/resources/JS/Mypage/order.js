/**
 * 주문관련 js 파일
 */

$(document).ready(function(){
	//order 진행하면
	//로그인된 아이디가져옴.
	var userid = $("input[name='user']").val();
	
	//전체 주문 클릭하면
	$("#my_cart").on("click", "#my_cartAll", function(){
		
		var cartOrderArr = new Array();
		var c_no = $(".my_oneck").val();

		$("input:checkbox[name='my_onecheck']:checked").each(function(){			
			//상품번호
			cartOrderArr.push($(this).val());
			//상품수량
			var cntnow = $("#my_cntnow"+c_no).val();
			cartOrderArr.push(cntnow);
			//상품별 합계
			var c_sum = $("#my_sum"+c_no).data("c_sum");
			cartOrderArr.push(c_sum);
		})
		console.log(cartOrderArr);
	})
	
//전체 주문 클릭 함수 선언
function cartorder(data){

	$.ajax({
		type:"post",
		url:"/mypage/cart/order",
		data:JSON.stringify(data),
		contentType: "application/json; charset=utf-8",
		success:function(result){
			if(result=="success"){
				alert("성공햇냐?")
			}
		}
		
	});	

}//cartorder 닫음	


	
	
	
	
	
	
})//docu닫음