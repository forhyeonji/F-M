/**
 * $(function(){
		$("#findBtn").click(function(){
			$.ajax({
				url : "/member/findpw",
				type : "POST",
				data : {
					id : $("#user_id").val(),
					email : $("#user_email").val()
				},
				success : function(result) {
					alert(result);
				},
			})
		});
	})
	
	
	
// 임시 비밀번호 발송 
$(".find_pw_btn").click(function(){
	
	var user_email = $("#user_email").val();		// 입력한 이메일
	var email_checkBox = $("#insert_emailNumber");        // 인증번호 입력란
    var boxWrap = $("#insert_emailNumber_box");    // 인증번호 입력란 박스
	
	$.ajax({
		
		type:"GET",
		url:"findpwCheck?user_pw=" + user_pw,
		success:function(data){
			
			//console.log("data : " + data);
			email_checkBox.attr("disabled",false);
			boxWrap.attr("id", "email_check_input_box_true");
			code = data;         
        }
					
	});	
});
 */


function closethewindow(){
			self.close();
		}

