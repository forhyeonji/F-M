<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">

	h2 {
	text-align : center;
	}
	
	container{
	display:flex; 
	justify-content:center;
	text-align : center;
	}
	
	footer{
	display:flex; justify-content:center;
	}
	
	td{
	text-align : center;
	}
	
	.login_login{
	width : 400px;
	height : 40px;
	border : 1px solid #dddddd;
	text-align : center;
	padding : 0;
	border-radius : 5px;
	}
	
	.login_button{
	width : 402px;
	height : 42px;
	color : white;
	border : none;
	background-color : salmon;
	box-sizing : content-box;
	padding : 0px;
	border-radius : 5px;
	}

</style>
</head>
<body>
<form method ="get">

	<header>
	<h2>로그인</h2>
	</header>

	<container>
	<div>
		<div>
		<h4>아이디</h4>
		<input type="text" id="" class="login_login">
		</div>
		
		<div>
		<h4>비밀번호</h4>
		<input type="text" id="" class="login_login">
		</div><br><br>
		
		<div>
		<input type="button" value="로그인" id="" class="login_button">
		</div><br>
		
		<div>
		<input type="button" value="회원가입" id="login_to_insert" class="login_button">
		</div>
	</div>
	</container>
	
	<footer>
	<div>푸터자리</div>
	</footer>

</form>
</body>
</html>