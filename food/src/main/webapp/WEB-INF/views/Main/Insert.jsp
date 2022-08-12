<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">

*{
margin : 5px;
}

h2{
	text-align:center;
}

container{
	display:flex; justify-content:center;
	text-align : center;
	font-family : sans-serif;
	}

hr{
	width : 1050px;
	vertical-align:center;
	size : 20px;
	}
	
#insert_cont{
	vertical-align : center;
	border : 1px solid #dddddd;
	margin : 20px;
	padding : 20px;
	width : 600px;
	border-radius : 5px;
}

.insert_inputext{
	width : 400px;
	height : 40px;
	border : 1px solid #dddddd;
	text-align : center;
	padding : 0;
	border-radius : 5px;
}

.insert_inputext_b{
	margin : 0 10px 0 0;
	width : 290px;
	height : 40px;
	border : 1px solid #dddddd;
	text-align : center;
	padding : 0;
	border-radius : 5px;
}

#insert_add{
	width : 400px;
	height : 40px;
	color : white;
	border : none;
	background-color : salmon;
	border-radius : 5px;
}

#insert_mailcf{
	margin : 0;
	width : 100px;
	height : 40px;
	color : white;
	border : none;
	background-color : salmon;
	box-sizing : content-box;
	padding : 0px;
	border-radius : 5px;
}

#insert_idcf{
	margin : 0;
	width : 100px;
	height : 40px;
	color : white;
	border : none;
	background-color : salmon;
	box-sizing : content-box;
	padding : 0px;
	border-radius : 5px;
}

#insert_term{
	margin-left : 50px;
	margin-right : 50px;
	text-align : center;
	border-radius : 5px;
}

#insert_insert{
	width : 100px;
	height : 40px;
	color : white;
	border : none;
	background-color : salmon;
	border-radius : 5px;
}

#insert_cellph{
	box-sizing : content-box;
	width : 400px;
	height : 40px;
	border : 1px solid #dddddd;
	text-align : center;
	color : white;
	background-color : salmon;
	padding : 0px;
	border-radius : 5px;
}


	
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- 테마 컬러 변경 가능, 임시로 파란색으로 지정-->

<form method ="post">


	<header>
	<h2>회원가입</h2>
	</header>

	<container>
	<form method ="post">
	
	<div id="insert_cont">

		<div>
		<h4>이메일</h4>
		<input type="text" id="" class="insert_inputext_b">
		<input type="button" value="이메일 확인" id="insert_mailcf">
		</div><br>
		
		<div>
		<h4>아이디</h4>
		<input type="text" id="" class="insert_inputext_b">
		<input type="button" value="중복 확인" id="insert_idcf">
		</div><br>
		
		<div>
		<h4>비밀번호</h4>
		<input type="text" id="" class="insert_inputext" >
		</div><br>
		
		<div>
		<h4>비밀번호 재확인</h4>
		<input type="text" id="" class="insert_inputext">
		</div><br>
		
		<div>
		<h4>이름</h4>
		<input type="text" id="" class="insert_inputext">
		</div><br>
		
        <div>
		<h4>주소</h4>
		<input type="button" id="insert_add" class="" value="주소 검색">
		</div><br>
		
		<div>
		<h4>성별</h4>
		<input type = "radio" name="gender">남자
		<input type = "radio" name="gender">여자
		<input type = "radio" name="gender">선택안함
		</div><br>
		
		<div>
			<h4>생년월일</h4>	
			<input type="text" id="insert_birth" class="insert_inputext" placeholder="생년월일을 숫자만 입력해주세요. 예)19801205">
		</div><br>
		
		<div>
		<h4>휴대폰 번호</h4>
		<input type="text" id="" class="insert_inputext" placeholder=" '-' 없이 숫자만 입력해주세요. 예)01012345678"><br>
		<input type="button" id="insert_cellph" class="" value="인증번호 받기">
		</div><br>
		
		<div id=insert_term>
		<h4>이용 동의사항</h4>
			<div>
			<label><input type ="checkbox">전체 동의</label><br>
			<label><input type ="checkbox">(필수)본인은 만 14세 이상입니다.</label><br>
			<label><input type ="checkbox">(필수)이용 약관에 동의합니다.<a href="">약관 보기</a></label><br>
			<label><input type ="checkbox">(필수)개인정보 수집 및 이용에 동의합니다.<a href="">약관 보기</a></label><br>
			<label><input type ="checkbox">(선택)개인정보 수집 및 이용에 동의합니다.<a href="">약관 보기</a></label><br>
			<label><input type ="checkbox">(선택)SMS로 혜택 및 정보를 수신하겠습니다.<a href="">약관 보기</a></label><br>
			<label><input type ="checkbox">(선택)휴대폰으로 혜택 및 정보를 수신하겠습니다.<a href="">약관 보기</a></label><br><br>
			</div>
		</div>
		
		<div>
		<input type="submit" id = "insert_insert" formaction="메인페이지" value="가입하기">
		</div>

	</div>		
	</form>
	</container>
	
	<footer>
	<div>
	푸터 자리
	여기 똑똑히 있음
	</div>
	</footer>
	

</form>
</body>
</html>