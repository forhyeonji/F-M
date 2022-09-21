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


// 카카오 초기화
Kakao.init('642bccc500d885a8010989c4bc0c8eff');

function kakaoLogin() {
    window.Kakao.Auth.login({
        scope: 'profile_nickname, account_email, gender', //동의항목 페이지에 있는 개인정보 보호 테이블의 활성화된 ID값을 넣습니다.
        success: function(response) {
            console.log(response) // 로그인 성공하면 받아오는 데이터
            window.Kakao.API.request({ // 사용자 정보 가져오기 
                url: '/v2/user/me',
                success: (res) => {
                    const kakao_account = res.kakao_account;
                    console.log(kakao_account)
                }
            });
            // window.location.href='/ex/kakao_login.html' //리다이렉트 되는 코드
        },
        fail: function(error) {
            console.log(error);
        }
    });
}



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