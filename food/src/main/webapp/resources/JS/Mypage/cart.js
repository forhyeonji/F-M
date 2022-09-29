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
	cartpay(userid);
	
	//상품 사진 클릭하면
	$("#my_cart").on("click", ".my_orderImg", function(){
		var c_no = $(this).attr('alt');
		location.href="/shopDetail?prodnum="+c_no;
	})
	
	//수량 수정 버튼 클릭하면
	$("#my_cart").on("click",".my_cntmodify",function(){
		var c_no = $(this).data("c_no");
		console.log(c_no);
		var c_cnt = $("#my_cntnow"+c_no).val();
		console.log(c_cnt);
		//수량 수정 하기 위한 함수 호출
		cartmodify({c_no:c_no, c_cnt:c_cnt});
	})
	
//수량 수정 함수 선언
function cartmodify(c_cnt){
	console.log(c_cnt);
	$.ajax({
		type: "put",
		url: "/mypage/cart/modify",
		data: JSON.stringify(c_cnt),
		contentType: "application/json; charset=utf-8",
		success:function(result){
			alert("수량을 수정했습니다");
			location.reload();
		},
		error:function(e){
			alert("수량 수정 실패 👽👽");
		}		
	})
}//cartmodify 닫음	
	
	
	
	//"전체" 체크박스를 클릭하면
	$("#my_allck").on("click", function(){	
		var allcheck = $("#my_allck").prop("checked");
		//전부 checked하게 해라
		if(allcheck){
			$(".my_oneck").prop("checked", true);
		//전부 체크 풀어라
		}else{
			$(".my_oneck").prop("checked", false);
		}			
	})


	//"개별" 체크박스를 클릭하면
	$("#my_cart").on("click", ".my_oneck", function(){
		//"전체" 체크박스 체크를 풀어라
		$("#my_allck").prop("checked",false);			
	})

	
	//선택 삭제 버튼을 클릭하면 (다중 선택 삭제)
	$("#my_selectdelBtn").on("click",function(){
		var selectdelBtn = confirm("정말 삭제하시겠습니까?");
		
		//장바구니 속 상품번호 저장해둘 배열 선언
		var selectdelArr = new Array();
		//confirm창 확인하면,
		if(selectdelBtn){
			//체크박스 체크된 상품번호만 배열에 저장 
			$("input:checkbox[name='my_onecheck']:checked").each(function(){				
				selectdelArr.push($(this).val());				
			});
		}//if닫음
		console.log(selectdelArr);
		//배열로 삭제 진행
		for(var i=0; i<selectdelArr.length; i++){
			$.ajax({
				type:"delete",
				url: "/mypage/cart/delete/"+selectdelArr[i],
				success: function(result){
				},
				error:function(e){
					alert("다중 선택 상품 삭제 실패 👽👽");
				}		
			})//ajax 닫음
		}
		location.reload();
	})
	
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
			alert("상품 삭제 성공 'ㅅ'");
			location.reload();
		},
		error:function(e){
			alert("상품 삭제 실패 👽👽");
		}
		
	})
	
}//cartdelete 닫음
	
	
//cartlist 함수 선언
function cartlist(userid){
	$.getJSON("/mypage/cart/"+userid+".json", function(data){
		console.log(data);
		var str="";
	//장바구니 담긴 상품이 있으면
	if(data.length != 0){
		str+="<table id='my_cartlist'><tr id='my_tableHead'>"
		str+="<td colspan='3'>상품</td><td>수량</td><td>상품별 합계</td><td></td></tr>"				
		for(var i=0; i<data.length; i++){
			str+="<tr><td><input type='checkbox' checked name='my_onecheck' class='my_oneck' value="+data[i].c_no+"></td>"
			str+="<td><img class='my_orderImg' alt='"+data[i].c_no+"' src=''></td>"
			str+="<td>"+data[i].s_name+"<br>"
			str+="<span id='my_cartCon'>"+data[i].s_content+"</span></td>"
			str+="<td>"
			str+="<input type='text' id='my_cntnow"+data[i].c_no+"' class='my_cnt' value='"+data[i].c_cnt+"'>"
			str+="<input type='button' class='my_cntmodify' value='수정' data-c_no="+data[i].c_no+" data-c_cnt="+data[i].c_cnt+"></td>"
			str+="<td><span id='my_sum"+data[i].c_no+"' data-c_sum="+data[i].c_sumprod+">"+addComma(data[i].c_sumprod)+" 원</td>"
			str+="<td><input class='my_cartOne' type='button' value='주문하기' data-c_no="+data[i].c_no+" data-prodnum="+data[i].c_prodnum+"><br>"
			str+="<input class='cartdelete' type='button' value='삭제하기' data-c_no="+data[i].c_no+"></td></tr>"
		}
		str+="<tr><th colspan='6'>"
		str+="<input id='my_cartAll' type='submit' value='👉전체주문👈'>"
		str+="</th></tr></table>"
	}	
	//장바구니에 담긴 상품이 없으면
	else{
		str+="<h3>장바구니에 담긴 상품이 없습니다 😢😢</h3>"
		$("#my_cartIn").hide();
	}
	//해당 위치에 str 전부 출력
	$("#my_cartIn2").html(str);
	})
}//cartlist 닫음
	

function cartpay(userid){
	$.getJSON("/mypage/cart/"+userid+".json", function(data){
		console.log(data);
		
	//장바구니 담긴 상품이 있으면
	if(data.length != 0){
		var str="";

		var sum = 0;	//결제예정금액
		var cnt = 0;	//선택한 상품 수
		for(var i=0; i<data.length; i++){
			//상품수 카운트
			sum += parseInt(data[i].c_sumprod);				
			//결제 예정금액
			cnt += parseInt(data[i].c_cnt);
		}
		str+="<tr><th>장바구니 상품수</th><td>"+cnt+"</td></tr>"
		str+="<tr><th>장바구니 상품 합계</th><td>"+addComma(sum)+"원</td></tr>"
		//합계가 3만원 이상이면 무료배송
		if(sum>=30000){
			str+="<tr><th>배송비</th><th>무료 배송</th></tr>"
			str+="<tr><th>결제 예정 금액</th><td>"+addComma(sum)+"원</td></tr>"	
		}else{
			sum += 3000;
			str+="<tr><th>배송비</th><th>3,000 원</th></tr>"
			str+="<tr><th>결제 예정 금액</th><td>"+addComma(sum)+"원</td></tr>"
		}
	}	
	//장바구니 담긴 상품 없으면
	else{		
	}
	//해당 위치에 str 전부 출력
	$("#my_cartpay_Tb").html(str)
	})	
}
	
//천단위 콤마 함수 선언
function addComma(won){
	return won.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
}
	
	
	
	
})//docu닫음