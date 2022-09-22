/**
 * 
 */

/*
$(document).ready(function(){
	$("#login_now").click(function(){
	var user_id = $("#user_id").val()
	var user_pw = $("#user_pw").val()

	if(user_id == "" || user_pw == ""){
		$(".login_idNone").css("display","block");
		$(".login_pwNone").css("display", "block");
	}else{
		$(".login_idNone").css("display","none");
		$(".login_pwNone").css("display", "none");
	}
	
	});
	
});
*/


/*
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
		
		alert("확인1!");
		
		if(login_idCheck && login_pwCheck){
			$("#login_form").attr("action", "/login");
			alert("확인2!");
			$("#login_form").submit();
			alert("확인3!");
		}
		
		alert("확인4!");
		return false;
		alert("확인5!");
		
		
	});
	
});
*/
  
  
 Kakao.init('a893fba0f1dbeb743744a8ca5b185822');
       // console.log( Kakao.isInitialized() ); // 초기화 판단여부



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