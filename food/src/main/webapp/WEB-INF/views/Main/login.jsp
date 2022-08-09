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
	display:flex; justify-content:center;
	}
	
	footer{
	display:flex; justify-content:center;
	}
	
	td{
	text-align : center;
	}
	
	table{
	border-spacing : 20px;
	}
	
	.login_login{
	width : 200px;
	height : 30px;
	}
	
	.login_button{
	width : 200px;
	height : 30px;
	background-color : salmon;
	border : 0;
	outline : 0;
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
	<table>
		<tr>
		<td>아이디</td>
		</tr>
		<tr>
		<td><input type="text" class="login_login"></td>
		</tr>
		<tr>
		<td>비밀번호</td></tr>
		<tr>
		<td><input type="text" class="login_login"></td>
		</tr>
		<tr>
		<td><input type="submit" value="로그인" formaction="메인페이지" class="login_button"></td>
		</tr>
		<tr>
		<td><input type="submit" value="아직 회원이 아니신가요?" formaction="insert" class="login_button"></td>
		</tr>
	</table>
	</div>
	</container>
	
	<footer>
	<div>푸터자리</div>
	</footer>


</form>
</body>
</html>