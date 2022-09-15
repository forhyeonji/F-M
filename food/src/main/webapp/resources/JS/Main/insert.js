
// 유효성 검사 체크용
var emailCheck = false;			// 이메일 체크
var emailckCheck = false;		// 이메일 중복 체크
var idCheck = false;			// 아이디
var idckCheck = false;			// 아이디 중복 검사
var pwCheck = false;			// 비번
var repwCheck = false;			// 비번 확인
var repwchCheck = false;		// 비번 확인 일치 확인
var nameCheck = false;			// 이름
var addrzipCheck = false; 		// 우편번호
var addr1Check = false;			// 도로명주소
var addr2Check = false;			// 세부주소
var phoneCheck = false; 		// 휴대폰
var genderCheck = false;		// 성별
var birthCheck = false; 		// 생일
var agreeCheck = false; 		// 약관동의



 
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
			$(".insert_emailY").css("display", "block");
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
			$(".insert_pwN").css("display","block");
			pwCheck = false;
		}else{
			$(".insert_pwN").css("display", "none");
			pwCheck = true;
		}
		
		/* 비밀번호 확인 유효성 검사 */
		if(user_repw == ""){
			$(".insert_repwN").css("display","block");
			repwCheck = false;
			
		}else{
			$(".insert_repwN").css("display", "none");
			repwCheck = true;
		}
		
		/* 이름 유효성 검사 */
		if(user_name == ""){
			$(".insert_nameN").css("display","block");
			nameCheck = false;
		}else{
			$(".insert_nameN").css("display", "none");
			nameCheck = true;
		}
		
		/* 주소 유효성 검사 */
		if(user_addr1 == ""){
			$(".insert_addrN").css("display","block");
			addr1Check = false;
		}else{
			$(".insert_addrN").css("display", "none");
			addr1Check = true;
		}
		
		if(user_addr2 == ""){
			$(".insert_addrN").css("display","block");
			addr2Check = false;
		}else{
			$(".insert_addrN").css("display", "none");
			addr2Check = true;
		}
		
		if(user_phone == ""){
			$(".insert_phoneN").css("display","block");
			phoneCheck = false;
		}else{
			$(".insert_phoneN").css("display", "none");
			phoneCheck = true;
		}
		
		if($("input[name=insert_agree]:checkbox:checked").length < 3){
			$(".insert_agreeN").css("display","block");
			agreeCheck = false;
		}else{
			$(".insert_agreeN").css("display", "none");
			agreeCheck = true;
		}
		
		/* 최종 유효성 검사 */
		if(emailCheck && idCheck && idckCheck && pwCheck && repwCheck && nameCheck && addr1Check && addr2Check && phoneCheck && agreeCheck ){
			$("#insert_form").attr("action", "/insert");
			$("#insert_form").submit();		
			
		}
		
		/*
		if (!user_male.checked && !user_female.checked && !user_none.checked) {
		    alert("성별을 선택해 주세요.");
		    user_none.focus();
		    return false;
		}
		
		var user_phone_reg = /^[0-9]+/g; //숫자만 입력하는 정규식

		if (!user_phone_reg.test(user_phone.value)) {
		    alert("전화번호는 숫자만 입력할 수 있습니다.");
		    user_phone.focus();
		    return false;
		};

		if (!user_term_1.checked && !user_term_2 && !user_term_3) { //체크박스 미체크시
		    alert("이용 동의사항을 확인하세요.");
		    user_term_1.focus();
		    return false;
		};
		*/
		
		return false;
	});
		
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
				$(".insert_idY").css("display","inline-block");
				$(".insert_idNone").css("display","none");
				$(".insert_idHave").css("display","none");
				$(".insert_idMs").css("display","none");
				idckCheck = true;
			// 중복되지 않으나 아이디 형식이 틀렸을 때
			}else if(result != "fail" && !idFormCheck(user_id)){
				$(".insert_idY").css("display","none");
				$(".insert_idNone").css("display","none");
				$(".insert_idHave").css("display","none");
				$(".insert_idMs").css("display","inline-block");
				idckCheck = false;
			// 아이디 형식은 맞으나 중복될 때		
			}else if(result == "fail" && idFormCheck(user_id)){
				$(".insert_idY").css("display","none");
				$(".insert_idNone").css("display","none");
				$(".insert_idHave").css("display","inline-block");
				$(".insert_idMs").css("display","none");
				idckCheck = false;
			// 둘 다 틀렸을 때	
			}else{
				$(".insert_idY").css("display","none");
				$(".insert_idNone").css("display","none");
				$(".insert_idHave").css("display","inline-block");
				$(".insert_idMs").css("display","inline-block");
				idckCheck = false;
			}
		}
	}); // ajax 종료
	
});


$("#user_email").on("blur", function(){

	var user_email = $("#user_email").val();			
	var data = {user_email : user_email}			
	var warnMsg = $(".emailMs");    
	
	$.ajax({
		type : "post",
		url : "/insertemailChk",
		data : data,
		success : function(result){
			// 중복되지 않고 아이디 형식도 맞을 때
			if(result != "fail" && emailFormCheck(user_email)){
				$(".insert_emailY").css("display","inline-block");
				$(".insert_emailNone").css("display","none");
				$(".insert_emailHave").css("display","none");
				$(".insert_emailMs").css("display","none");
				idckCheck = true;
			// 중복되지 않으나 아이디 형식이 틀렸을 때
			}else if(result != "fail" && !emailFormCheck(user_email)){
				$(".insert_emailY").css("display","none");
				$(".insert_emailNone").css("display","none");
				$(".insert_emailHave").css("display","none");
				$(".insert_emailMs").css("display","inline-block");
				idckCheck = false;
			// 아이디 형식은 맞으나 중복될 때		
			}else if(result == "fail" && emailFormCheck(user_email)){
				$(".insert_emailY").css("display","none");
				$(".insert_emailNone").css("display","none");
				$(".insert_emailHave").css("display","inline-block");
				$(".insert_emailMs").css("display","none");
				idckCheck = false;
			// 둘 다 틀렸을 때	
			}else{
				$(".insert_emailY").css("display","none");
				$(".insert_emailNone").css("display","none");
				$(".insert_emailHave").css("display","inline-block");
				$(".insert_emailMs").css("display","inline-block");
				idckCheck = false;
			}
		}
	}); // ajax 종료
	
});


function idFormCheck(user_id){
	
	var idForm =  /^(?=.*\d)(?=.*[a-zA-Z])[0-9a-zA-Z]{8,16}$/;
	
	return idForm.test(user_id);
}


function emailFormCheck(user_email){
	
	var emailForm = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
	
	return emailForm.test(user_email);
}