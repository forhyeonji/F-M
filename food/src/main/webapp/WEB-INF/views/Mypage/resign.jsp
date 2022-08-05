<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>resign</title>
<style type="text/css">
container{display:inline-flex; }
div{margin:5px; }
</style>
</head>
<body>
<header>
<h1 align="center">food</h1>
<p align="center">다른 메뉴는 메인페이지 따라갈게요</p>
</header>

<container>
<div id="side_left" >
	<table border="1">
		<tr>
			<td >회원 탈퇴</td>
		</tr>
		<tr>
			<td >
				<ul>
					<li>공지사항</li>
					<li>자주하는 질문</li>
					<li>1:1 문의</li>
				</ul>
			</td>
		</tr>
	
	</table>
</div>
<div id="resign" >
	<table border="1" style="width:500px;">
		<tr>
			<td rowspan="2">프로필 사진</td>
			<td><input readonly type="text" value="회원id">님~</td>
		</tr>
		<tr>
			<td>정말로 탈퇴하실건가요???<br>
				탈퇴하는 당신을 붙잡고 있어요<br>
				어쩌구 저쩌구,,,<br>
				탈퇴한 회원의 정보는 <br>
				개인정보보호법에 의거<br>
				어쩌구 저쩌구<br>
				구질구질하게 매달리는 중
			</td>
		</tr>
		<tr>
			<td colspan="2"><input type="submit" value="회원 탈퇴"></td>
		</tr>
	</table>
</div>

</container>

<footer>
	<p>회사소개</p>
</footer>
</body>
</html>