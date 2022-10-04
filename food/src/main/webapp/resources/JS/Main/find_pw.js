/**
 * 
 */

$(function(){
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