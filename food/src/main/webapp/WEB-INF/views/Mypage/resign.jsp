<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>resign</title>
<link rel="stylesheet" href="../../../resources/CSS/mypage.css">
</head>
<body>
<div id="container">
	<header>
		<h1>food</h1>
		<p>다른 메뉴는 메인페이지 따라갈게요</p>
	</header>
	
	<div id="main">
		<div id="side_left" >
			<div><label id="page_title">회원 탈퇴</label></div>
			<div id="profile">
				<div><img src="../../../resources/image/profile/profile01.jpeg"></div>
				<div><span id="id">회원id 님</span><br>
				<a href="http://localhost:8080/mypage/profile_edit">
					<input type="button" value="회원정보 수정"></a></div>
			</div>
			<div id="notice">
				<div><a href="http://localhost:8080/notice">▷ 공지사항</a></div>
				<div><a href="http://localhost:8080/QnA">▷ 자주하는 질문</a></div>
				<div><a href="http://localhost:8080/directQue">▷ 1:1 문의</a></div>
			</div>
		</div><!-- side_left -->

		<div id="center">
			<p><input readonly type="text" value="회원id">님~</p>
			<div>정말로 탈퇴하실건가요???<br>
				탈퇴하는 당신을 붙잡고 있어요<br>
				어쩌구 저쩌구,,,<br>
				탈퇴한 회원의 정보는 <br>
				개인정보보호법에 의거<br>
				어쩌구 저쩌구<br>
				구질구질하게 매달리는 중</div>
				<a href="http://localhost:8080/mypage">
				<button>마이페이지로</button></a>
				<input type="submit" value="회원 탈퇴">
		</div><!-- center -->
		<div></div>
	</div><!-- main -->	
	<footer>
		<p>회사소개</p>
	</footer>
</div><!-- container -->
</body>
</html>