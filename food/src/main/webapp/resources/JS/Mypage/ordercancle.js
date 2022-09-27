/**
 * 취소 관련 js
 */

$(document).ready(function(){
	
	
	//취소 신청 버튼을 클릭하면
	$("#my_cancleBtn").on("click", function(){
		var o_no = $("input[name=o_no]").val();
		console.log(o_no);
		var o_opt = $("select[name=o_opt] option:selected").val();
		console.log(o_opt);
		var o_canclewhy = $("#canclewhy").val();
		console.log(o_canclewhy);
		
		//취소 진행하기 위한 함수 호출
		ordercancle({o_no:o_no, o_opt:o_opt, o_canclewhy:o_canclewhy});
	})

	
function ordercancle(cancle){
		console.log(cancle);
		$.ajax({
			type: "put",
			url: "/mypage/ordercancle",
			data: JSON.stringify(cancle),
			contentType: "application/json; charset=utf-8",
			success: function(result){
				alert("주문을 취소했습니다.");
				location.href="/mypage/canclelist";
			},
			error:function(e){
				alert("주문 취소를 실패했습니다 👽👽👽");
			}
		})
}//ordercancle닫음
	
	
	
})//docu닫음