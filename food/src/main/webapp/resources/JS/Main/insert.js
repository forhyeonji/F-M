//joinform_check 함수로 유효성 검사
function join_check() {
	
  //변수에 담아주기
var user_email = document.getElementById("user_email");
var user_id = document.getElementById("user_id");
var user_pw = document.getElementById("user_pw");
var user_repw = document.getElementById("user_repw");
var user_name = document.getElementById("user_name");
var user_nick = document.getElementById("user_nick");
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
	}

	if (user_id.value == "") { //해당 입력값이 없을 경우 같은말: if(!user_id.value)
	    console.log("아이디를 입력하세요.");
	    user_id.focus(); //focus(): 커서가 깜빡이는 현상, blur(): 커서가 사라지는 현상
	    return false; //return: 반환하다 return false:  아무것도 반환하지 말아라 아래 코드부터 아무것도 진행하지 말것
	};
	
	var idCheck = /^[a-z]+[a-z0-9]{6,15}$/g;
	
	if (!idCheck.test(user_id.value)){
		alert("아이디는 영문자로 시작하는 영문자 또는 숫자의 6~15자리만 가능합니다."); 
		user_id.focus();
		return false;
	}

	if (user_pw.value == "") {
	    alert("비밀번호를 입력하세요.");
	    user_pw.focus();
	    return false;
	};

	//비밀번호 영문자+숫자+특수조합(8~20자리 입력) 정규식
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
	
	if (user_addr2.value == "") {
	    alert("세부주소를 입력하세요.");
	    user_addr2.focus();
	    return false;
	};

	if (!user_male.checked && !user_female.checked && !user_none.checked) {
	    alert("성별을 선택해 주세요.");
	    user_none.focus();
	    return false;
	}

  var user_reg = /^[0-9]+/g; //숫자만 입력하는 정규식

  if (!user_reg.test(user_phone.value)) {
    alert("전화번호는 숫자만 입력할 수 있습니다.");
    user_phone.focus();
    return false;
  }

  

  if (!user_term_1.checked || !user_term_2 || !user_term_3) { //체크박스 미체크시
    alert("이용 동의사항을 확인하세요.");
    user_term_1.focus();
    return false;
  }

  //입력 값 전송
  document.insert_form.submit(); //유효성 검사의 포인트   
}

//아이디 중복체크 팝업창(현재 공백문서)
function id_check() {
  //window.open("팝업될 문서 경로", "팝업될 문서 이름", "옵션");
  window.open("", "", "width=600, height=200, left=200, top=100");
}

