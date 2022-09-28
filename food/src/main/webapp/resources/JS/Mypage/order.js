/**
 * 주문관련 js 파일
 */
$(document).ready(function(){
	location.reload;
	//order 진행하면
	//로그인된 아이디가져옴.
	var userid = $("input[name='user']").val();

	//전체 주문 클릭하면
	$("#my_cart").on("click", "#my_cartAll", function(){
		var allorder = confirm("장바구니 내 상품을 모두 주문하시겠습니까?");
		//확인누르면 전체 주문 order
		if(allorder){			
			$.getJSON("/mypage/cart/"+userid+".json", function(data){
				console.log(data);
				var c_no;
				var c_prodnum;
				var c_cnt;
				var c_sumprod;
				
				$(data).each(function(i){					
					c_no = data[i].c_no;
					c_prodnum = data[i].c_prodnum;
					c_cnt = data[i].c_cnt;
					c_sumprod = data[i].c_sumprod;
					//전체주문 함수 호출
					order({c_no:c_no, c_prodnum:c_prodnum, c_cnt:c_cnt, c_sumprod:c_sumprod, userid:userid});

				})//each문닫음
			});	//getJSON닫음		
		}	//취소누르면 페이지 새로고침
		else{
			location.reload();
		}	
	})
	
	//개별 주문하기 버튼 클릭하면
	$("#my_cart").on("click", ".my_cartOne", function(){
		var cartOne = confirm("해당 상품만 주문하시겠습니까?");
		if(cartOne){
			var c_no = $(this).data("c_no");
			var c_prodnum = $(this).data("prodnum");
			var c_cnt = $("#my_cntnow"+c_no).val();
			var c_sumprod = $("#my_sum"+c_no).data("c_sum");
			
			//주문 함수 호출
			order({c_no:c_no, c_prodnum:c_prodnum, c_cnt:c_cnt, c_sumprod:c_sumprod, userid:userid});
			location.href="/mypage/orderlist";
		}else{
			location.reload();
		}

	})
	
	
	
	
//전체 주문 함수 선언
function order(od){
		console.log(od);
		console.log(od.c_no);
		$.ajax({
			type:"post",
			url:"/mypage/cart/order",
			data:JSON.stringify(od), 
			contentType:"application/json; charset=utf-8",	//입력되는 데이터의 형식
			success:function(result){
				//주문 후 장바구니에서 삭제 함수 호출
				orderDel(od.c_no);	
			},
			error:function(e){
				alert("주문 실패 👽👽");
			}
		})//ajax닫음		
		location.href="/mypage/orderlist";
}//order 닫음	
	
//주문완료 후 장바구니 속 상품 삭제하는 함수 선언
function orderDel(c_no){
	console.log(c_no);
	$.ajax({
		type:"delete",
		url: "/mypage/cart/delete/"+c_no,
		success: function(result){
			console.log("주문완료!")
		}	
	})	
}//orderDel 닫음	
	
	
	
	
})//docu닫음