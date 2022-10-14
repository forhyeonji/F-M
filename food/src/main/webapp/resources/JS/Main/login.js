/**
 * 
 */


var login_idCheck = false;
var login_pwCheck = false;

$(document).ready(function(){
	
	$("#login_login").click(function(){
		
		var login_id = $("#login_id").val();
		var login_pw = $("#login_pw").val();
		
		if(login_id == ""){
			$(".login_idNone").css("display","block");
		}else{
			$(".login_idNone").css("display","none");
			login_idCheck = true;
		}
		
		if(login_pw == ""){
			$(".login_pwNone").css("display", "block");
		}else{
			$(".login_pwNone").css("display","none");
			login_pwCheck = false;
		}
		
		
		if(login_idCheck && login_pwCheck){
		
		$("#login_form").attr("action", "/login");
		$("#login_form").submit();
		
		
		}
	})
})