/**
 * 장바구니 출력
 */

$(document).ready(function(){
	//장바구니 페이지 열자마자
	//1번, id가져오기
	var userid = $("input[name='user']").val();
	
	//2번, cartlist 함수 호출
	cartlist(userid);
	
	//3qjs, cartpay 함수 호출
	var multi = $("#multi").val();
	cartpay(userid);
	
	//삭제하기 버튼 클릭하면
	$("#my_cart").on("click",".cartdelete",function(){
		//장바구니 속 상품 삭제 cartdelete 함수 호출
		var c_no = $(this).data("c_no");
		cartdelete(c_no);
	})

//상품 삭제 cartdelete 함수 선언
function cartdelete(c_no){
	console.log(c_no);
	$.ajax({
		type:"delete",
		url: "/mypage/cart/delete/"+c_no,
		success: function(result){
			if(result == "success"){
				alert("상품 삭제 성공 'ㅅ'");
				location.reload();	
			}
		},
		error:function(e){
			alert("상품 삭제 실패 👽👽");
		}		
	})

}//cartdelete 닫음
	
	
//cartlist 함수 선언
function cartlist(userid){
	alert("장바구니 오픈!!!");
	$.getJSON("/mypage/cart/"+userid+".json", function(data){
		console.log(data);
		var str="";

	//장바구니 담긴 상품이 있으면
	if(data.length != 0){
		str+="<h3>🛒🛒🛒장바구니에 담긴 상품들을 확인하세요!</h3><br>"
		str+="<div class='my_check'><input type='checkbox' checked> 전체 선택"
		str+="<input type='button' value='선택 삭제'></div>"
		str+="<table id='my_cartlist'><tr id='my_tableHead'>"
		str+="<td colspan='3'>상품</td><td>수량</td>"
		str+="<td>상품별 합계</td><td></td></tr>"					
		for(var i=0; i<data.length; i++){
			str+="<tr><td><input type='checkbox' checked></td>"
			str+="<td>사진</td>"
			str+="<td>"+data[i].s_name+"<br>"
			str+="<span id='my_cartCon'>"+data[i].s_content+"</span></td>"
			str+="<td>"+data[i].c_cnt+"</td>"
			//상품별 합계를 어떻게 표현할 것인가
			str+="<td><span id='multi'>"+data[i].c_cnt*data[i].s_price+"</span>원</td>"
			str+="<td><input type='button' value='주문하기'><br>"
			str+="<input class='cartdelete' type='button' value='삭제하기' data-c_no="+data[i].c_no+"></td></tr>"
		}
		str+="<tr><th colspan='6'>"
		str+="<input id='my_cartAll' type='submit' value='👉전체주문👈'>"
		str+="</th></tr></table>"	
	}	
	//장바구니에 담긴 상품이 없으면
	else{
		str+="<h3>장바구니에 담긴 상품이 없습니다 😢😢</h3>"
			
	}
	//해당 위치에 str 전부 출력
	$("#my_cart").html(str);	
	})
}//cartlist 닫음
	

function cartpay(userid){
	$.getJSON("/mypage/cart/"+userid+".json", function(data){
		console.log(data);
		
	//장바구니 담긴 상품이 있으면
	if(data.length != 0){
		var str="";
		str+="<tr><th>합계</th><td>??원</td></tr>"
		str+="<tr><th>할인금액</th><td>얼마???원</td></tr>"
		str+="<tr><th>배송비</th><td>얼마???원</td></tr>"
		str+="<tr><th>결제 예정 금액</th><td>얼마???원"
		str+="<br>(=합계 - 할인금액 + 배송비)</td></tr>"	
			
		for(var i=0; i<data.length; i++){
			var sum = parseInt(data[i].s_price);
			sum += sum;
		}
		str+="<tr><td colspan='2'>합계 도대체 얼마냐고"+sum+"</td></tr>"
		str+="<tr><td colspan='2'>이거 아니자나...어휴..</td></tr>"	
	}	
	//장바구니 담긴 상품 없으면
	else{
		
	}
	//해당 위치에 str 전부 출력
	$("#my_cartpay_Tb").html(str)
	})	
}
	
	
	
	
	
	
	
	
})//docu닫음