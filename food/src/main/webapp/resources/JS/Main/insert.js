
// 유효성 검사 체크용
var emailCheck = false;			// 이메일 체크
var emailckCheck = false;		// 이메일 중복 체크
var idCheck = false;			// 아이디
var idckCheck = false;			// 아이디 중복 검사
var pwCheck = false;			// 비번
var repwCheck = false;			// 비번 확인
var repwckCheck = false;		// 비번 확인 일치 확인
var nameCheck = false;			// 이름
var addrzipCheck = false; 		// 우편번호
var addr1Check = false;			// 도로명주소
var addr2Check = false;			// 세부주소
var phoneCheck = false; 		// 휴대폰
var genderCheck = false;		// 성별
var birthCheck = false; 		// 생일
var agreeCheck = false; 		// 약관동의

//정규식 모음
//이메일
function emailFormCheck(user_email){
	var emailForm = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
	return emailForm.test(user_email);
}
//아이디
function idFormCheck(user_id){
	var idForm =  /^(?=.*\d)(?=.*[a-zA-Z])[0-9a-zA-Z]{8,16}$/;
	return idForm.test(user_id);
}
//비밀번호
function pwFormCheck(user_pw){
	var pwForm = /^[A-Za-z0-9`\-=\\\[\];',\./~!@#\$%\^&\*\(\)_\+|\{\}:"<>\?]{8,16}$/;
	return pwForm.test(user_pw);		
}
//이름
function nameFormCheck(user_name){
	var nameForm = /^[가-힣a-zA-Z0-9]/gi;
	return nameForm.test(user_name);
}
//전화번호
//function phoneFormCheck(user_phone){
//	var phoneForm = /^\d{3}-\d{3,4}-\d{4}$/;
//	return phoneForm.test(user_phone);
//}

//생년월일
function birthFormCheck(user_birth){
	var birthForm = /^(19[0-9][0-9]|20\d{2})(0[0-9]|1[0-2])(0[1-9]|[1-2][0-9]|3[0-1])$/;
	return birthForm.test(user_birth);
}



 
$(document).ready(function(){
	
	//회원가입 버튼
	$("#insert_insert").click(function(){
		
		var user_email = $("#user_email").val();
		var user_id = $("#user_id").val(); 			
		var user_pw = $("#user_pw").val();				
		var user_repw = $("#user_repw").val();			
		var user_name = $("#user_name").val();			
		var user_zip = $("#user_zip").val();		
		var user_addr1 = $("#user_addr1").val();
		var user_addr2 = $("#user_addr2").val();
		var user_male = $("#user_male").val();
		var user_female = $("#user_female").val();
		var user_none = $("#user_none").val();
		var user_phone = $("#user_phone").val();
		var user_term_1 = $("#user_term_1").val();
		var user_term_2 = $("#user_term_2").val();
		var user_term_3 = $("#user_term_3").val();
		
		
		/* 이메일 유효성 검사 */
		if(user_email == ""){
			$(".insert_emailNone").css("display","block");
			emailCheck = false;
		}else{
			$(".insert_emailTrue").css("display", "block");
			emailCheck = true;
		}
		
		
		/* 아이디 유효성검사 */
		if(user_id == ""){
			$(".insert_idNone").css("display","block");
			idCheck = false;
		}else{
			idCheck = true;
		}
		
		/* 비밀번호 유효성 검사 */
		if(user_pw == ""){
			$(".insert_pwNone").css("display","block");
			pwCheck = false;
		}else{
			$(".insert_pwNone").css("display", "none");
			pwCheck = true;
		}
		
		/* 비밀번호 확인 유효성 검사 */
		if(user_repw == ""){
			$(".insert_repwNone").css("display","block");
			repwCheck = false;
			
		}else{
			$(".insert_repwNone").css("display", "none");
			repwCheck = true;
		}
		
		/* 이름 유효성 검사 */
		if(user_name == ""){
			$(".insert_nameNone").css("display","block");
			nameCheck = false;
		}else{
			$(".insert_nameNone").css("display", "none");
			nameCheck = true;
		}
		
		/* 주소 유효성 검사 */
		if(user_addr1 == ""){
			$(".insert_addrNone").css("display","block");
			addr1Check = false;
		}else{
			$(".insert_addrNone").css("display", "none");
			addr1Check = true;
		}
		
		if(user_addr2 == ""){
			$(".insert_addrNone").css("display","block");
			addr2Check = false;
		}else{
			$(".insert_addrNone").css("display", "none");
			addr2Check = true;
		}
		
		if(user_phone == ""){
			$(".insert_phoneNone").css("display","block");
			phoneCheck = false;
		}else{
			$(".insert_phoneNone").css("display", "none");
			phoneCheck = true;
		}
		
		if($("input[name=insert_agree]:checkbox:checked").length < 3){
			$(".insert_agreeNone").css("display","block");
			agreeCheck = false;
		}else{
			$(".insert_agreeNone").css("display", "none");
			agreeCheck = true;
		}
		
		/* 최종 유효성 검사 */
		if(emailCheck && emailckCheck && idCheck && idckCheck && pwCheck && repwCheck && repwckCheck && nameCheck && addr1Check && addr2Check && birthCheck && agreeCheck ){
			$("#insert_form").attr("action", "/insert");
			$("#insert_form").submit();		
			
		}
		

		return false;
	});
		
});


// 형식 검사
$("#user_email").on("blur", function(){

	var user_email = $("#user_email").val();			
	var data = {user_email : user_email}			
	var warnMsg = $(".emailMs");    
	
	$.ajax({
		type : "post",
		url : "/insertemailChk",
		data : data,
		success : function(result){
			// 중복되지 않고 이메일 형식도 맞을 때
			if(result != "fail" && emailFormCheck(user_email)){
				$(".insert_emailTrue").css("display","inline-block");
				$(".insert_emailNone").css("display","none");
				$(".insert_emailHave").css("display","none");
				$(".insert_emailFalse").css("display","none");
				emailckCheck = true;
			// 중복되지 않으나 이메일 형식이 틀렸을 때
			}else if(result != "fail" && !emailFormCheck(user_email)){
				$(".insert_emailTrue").css("display","none");
				$(".insert_emailNone").css("display","none");
				$(".insert_emailHave").css("display","none");
				$(".insert_emailFalse").css("display","inline-block");
				emailckCheck = false;
			// 이메일 형식은 맞으나 중복될 때		
			}else if(result == "fail" && emailFormCheck(user_email)){
				$(".insert_emailTrue").css("display","none");
				$(".insert_emailNone").css("display","none");
				$(".insert_emailHave").css("display","inline-block");
				$(".insert_emailFalse").css("display","none");
				emailckCheck = false;
			// 둘 다 틀렸을 때	
			}else{
				$(".insert_emailTrue").css("display","none");
				$(".insert_emailNone").css("display","none");
				$(".insert_emailHave").css("display","inline-block");
				$(".insert_emailFalse").css("display","inline-block");
				emailckCheck = false;
			}
		}
	}); // ajax 종료
	
});

$("#user_id").on("blur", function(){

	var user_id = $("#user_id").val();			// .id_input에 입력되는 값
	var data = {user_id : user_id}				// "컨트롤에 넘길 데이터 이름" : "데이터(.id_input에 입력되는 값)"
	var idwarnMsg = $(".insert_idMs");

	$.ajax({
		type : "post",
		url : "/insertIdChk",
		data : data,
		success : function(result){
			// 중복되지 않고 아이디 형식도 맞을 때
			if(result != "fail" && idFormCheck(user_id)){
				$(".insert_idTrue").css("display","inline-block");
				$(".insert_idNone").css("display","none");
				$(".insert_idHave").css("display","none");
				$(".insert_idFalse").css("display","none");
				idckCheck = true;
			// 중복되지 않으나 아이디 형식이 틀렸을 때
			}else if(result != "fail" && !idFormCheck(user_id)){
				$(".insert_idTrue").css("display","none");
				$(".insert_idNone").css("display","none");
				$(".insert_idHave").css("display","none");
				$(".insert_idFalse").css("display","inline-block");
				idckCheck = false;
			// 아이디 형식은 맞으나 중복될 때		
			}else if(result == "fail" && idFormCheck(user_id)){
				$(".insert_idTrue").css("display","none");
				$(".insert_idNone").css("display","none");
				$(".insert_idHave").css("display","inline-block");
				$(".insert_idFalse").css("display","none");
				idckCheck = false;
			// 둘 다 틀렸을 때	
			}else{
				$(".insert_idTrue").css("display","none");
				$(".insert_idNone").css("display","none");
				$(".insert_idHave").css("display","inline-block");
				$(".insert_idFalse").css("display","inline-block");
				idckCheck = false;
			}
		}
	}); // ajax 종료
	
});


//비밀번호 일치 및 형식 검사
$("#user_pw").on("blur", function(){
	
	var user_pw = $("#user_pw").val();
	var user_repw = $("#user_repw").val();
	
	// 비밀번호 형식이 맞고 일치할 때 
	if(user_pw == user_repw && pwFormCheck(user_pw) ){
		$('.insert_pwNone').css('display', 'none');
		$('.insert_pwFalse').css('display', 'none');
		$('.insert_pwTrue').css('display','block');
		$('.insert_repwNone').css('display','none');
		$('.insert_repwFalse').css('display','none');
		repwckCheck = true;
		
	// 비밀번호 형식이 틀렸을 때 (일치하든 안되든 틀리면 무조건 입력되면 안됨)
	}else if(user_pw == user_repw && !pwFormCheck(user_pw)){
		$('.insert_pwNone').css('display', 'none');
		$('.insert_pwFalse').css('display', 'block');
		$('.insert_pwTrue').css('display','none');
		$('.insert_repwNone').css('display','none');
		$('.insert_repwFalse').css('display','none');
		repwckCheck = false;
	
	// 비밀번호가 일치하지 않을 때 (형식은 맞음)
	}else if(user_pw != user_repw && pwFormCheck(user_pw)){
		$('.insert_pwNone').css('display', 'none');
		$('.insert_pwFalse').css('display', 'none');
		$('.insert_pwTrue').css('display','none');
		$('.insert_repwNone').css('display','none');
		$('.insert_repwFalse').css('display','block');
		repwckCheck = false;
	
	// 틀렸는데 일치도 안함
	}else{
		$('.insert_pwNone').css('display', 'none');
		$('.insert_pwFalse').css('display', 'block');
		$('.insert_pwTrue').css('display','none');
		$('.insert_repwNone').css('display','none');
		$('.insert_repwFalse').css('display','block');
		repwckCheck = false;
	}
});


$("#user_name").on("blur", function(){
	
	var user_name = $("#user_name").val();
	
	if(nameFormCheck(user_name)){
		$('.insert_nameTrue').css('display','block');
		$('.insert_nameNone').css('display','none');
		$('.insert_nameFalse').css('display','none');
		nameCheck = true;
	}else{
		$('.insert_nameTrue').css('display','none');
		$('.insert_nameNone').css('display','none');
		$('.insert_nameFalse').css('display','block');
		nameCheck = false;
	}
});

$("#user_phone").on("blur", function(){
	
	var user_phone = $("#user_phone").val();
	
	if(phoneFormCheck(user_phone)){
		$('.insert_phoneTrue').css('display','block');
		$('.insert_phoneNone').css('display','none');
		$('.insert_phoneFalse').css('display','none');
		phoneCheck = true;
	}else{
		$('.insert_phoneTrue').css('display','none');
		$('.insert_phoneNone').css('display','none');
		$('.insert_phoneFalse').css('display','block');
		phoneCheck = false;
	}
});

$("#user_birth").on("blur", function(){
	
	var user_birth = $("#user_birth").val();
	
	if(birthFormCheck(user_birth)){
		$('.insert_birthTrue').css('display','block');
		$('.insert_birthNone').css('display','none');
		$('.insert_birthFalse').css('display','none');
		birthCheck = true;
	}else{
		$('.insert_birthTrue').css('display','none');
		$('.insert_birthNone').css('display','none');
		$('.insert_birthFalse').css('display','block');
		birthCheck = false;
	}
});






