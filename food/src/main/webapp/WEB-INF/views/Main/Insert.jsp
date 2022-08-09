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
}

.insert_inputext{
	width : 400px;
	height : 40px;
	border : 1px solid #dddddd;
	text-align : center;
}

.insert_inputext_b{
	margin : 0 10px 0 0;
	width : 290px;
	height : 40px;
	border : 1px solid #dddddd;
	text-align : center;
}

#insert_add{
	width : 400px;
	height : 40px;
	color : white;
	border : none;
	background-color : salmon;
}

#insert_mailcf{
	margin : 0;
	width : 100px;
	height : 40px;
	color : white;
	border : none;
	background-color : salmon;
}

#insert_idcf{
	margin : 0;
	width : 100px;
	height : 40px;
	color : white;
	border : none;
	background-color : salmon;
}

#insert_term{
	vertical-align : center;
	text-align : left;
	width : 400px;
}

#insert_insert{
	width : 400px;
	height : 40px;
	color : white;
	border : none;
	background-color : salmon;
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
		<h4>전화번호</h4>
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
		<input type="date" id="" class="">
		</div><br>
		
		<div>
		<h4>휴대폰 번호</h4>
		<input type="text" id="" class="insert_inputext"><br><br>
		<input type="button" id="" class="" value="인증번호 받기">
		</div><br>
		
		<div id=insert_term>
		<h4>이용 동의사항</h4>
			<div>
			<label><input type ="checkbox">전체 동의</label><br>
			<label><input type ="checkbox">(필수)본인은 만 14세 이상입니다.</label><br>
			<label><input type ="checkbox">(필수)이용 약관에 동의합니다.<input type="button" value="확인"></label><br>
			<label><input type ="checkbox">(필수)개인정보 수집 및 이용에 동의합니다.<input type="button" value="확인"></label><br>
			<label><input type ="checkbox">(선택)개인정보 수집 및 이용에 동의합니다.<input type="button" value="확인"></label><br>
			<label><input type ="checkbox">(선택)SMS로 혜택 및 정보를 수신하겠습니다.<input type="button" value="확인"></label><br>
			<label><input type ="checkbox">(선택)휴대폰으로 혜택 및 정보를 수신하겠습니다.<input type="button" value="확인"></label><br><br>
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