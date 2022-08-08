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

</style>
</head>
<body>
<form method ="post">

	<header>
	<h2>로그인</h2>
	</header>

	<container>
	<table>
		<tr>
		<td>아이디</td></tr>
		<tr><td><input type="text"></td></tr>
		<tr><td>비밀번호</td></tr>
		<tr><td><input type="text"></td></tr>
		<tr><td><input type="submit" value="로그인"></td></tr>
		<tr><td><input type="submit" value="아직 회원이 아니신가요?"></td></tr>
	</table>
	</container>
	
	<footer>
	푸터 자리에 뭐 넣지
	</footer>


</form>
</body>
</html>