
function join_check() {
	
 
var user_email = document.getElementById("user_email");
var user_id = document.getElementById("user_id");
var user_pw = document.getElementById("user_pw");
var user_repw = document.getElementById("user_repw");
var user_name = document.getElementById("user_name");
var user_nick = document.getElementById("user_nick");
var user_zip = document.getElementById("user_zip");
var user_addr1 = document.getElementById("user_addr1");
var user_addr2 = document.getElementById("user_addr2");
var user_male = document.getElementById("user_male");
var user_female = document.getElementById("user_female");
var user_none = document.getElementById("user_none");
var user_phone = document.getElementById("user_phone");
var user_term_1 = document.getElementById("user_term_1");
var user_term_2 = document.getElementById("user_term_2");
var user_term_3 = document.getElementById("user_term_3");


	if (user_email.value == "") {
	    alert("이메일 주소를 입력하세요.");
	    user_email.focus();
	    return false;
	};
	
	var emailCheck = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
		
	if (!emailCheck.test(user_email.value)){
		alert("이메일 양식을 확인해주세요.");
		user_email.focus();
		return false;
	};
	
	if (user_id.value == "") { 
	   alert("아이디를 입력하세요.");
	    user_id.focus(); 
	    return false; 
	};
	
	var idCheck = /^[a-z]+[a-z0-9]{6,15}$/g;
	
	if (!idCheck.test(user_id.value)){
		alert("아이디는 영문자로 시작하는 영문자 또는 숫자의 6~15자리만 가능합니다."); 
		user_id.focus();
		return false;
	};

	if (user_pw.value == "") {
	    alert("비밀번호를 입력하세요.");
	    user_pw.focus();
	    return false;
	};

	var pwCheck = /^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,20}$/;

	if (!pwCheck.test(user_pw.value)) {
	    alert("비밀번호는 영문자+숫자+특수문자 조합의 8~20자리만 가능합니다.");
	    user_pw.focus();
	    return false;
	};

	if (user_repw.value !== user_pw.value) {
	    alert("비밀번호가 일치하지 않습니다..");
	    user_repw.focus();
	    return false;
	};

	if (user_name.value == "") {
	    alert("이름을 입력하세요.");
	    user_name.focus();
	    return false;
	};
	
	if (user_nick.value == "") {
	    alert("별명을 입력하세요.");
	    user_nick.focus();
	    return false;
	};
	
	if (user_zip.value == "" && user_addr1.value == "") {
	    alert("주소를 찾아주세요.");
	    user_zip.focus();
	    return false;
	};
	
	if (user_addr2.value == "") {
	    alert("세부주소를 입력하세요.");
	    user_addr2.focus();
	    return false;
	};

	if (!user_male.checked && !user_female.checked && !user_none.checked) {
	    alert("성별을 선택해 주세요.");
	    user_none.focus();
	    return false;
	};

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


  //document.insert_form.submit();
}

/*
function id_check() {
  //window.open("팝업될 문서 경로", "팝업될 문서 이름", "옵션");
  window.open("", "", "width=600, height=200, left=200, top=100");
  
}*/

