<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>resign</title>
<link rel="stylesheet" href="../../../resources/CSS/mypage.css">
<link rel="stylesheet" href="../../../resources/CSS/header.css">
<link rel="stylesheet" href="../../../resources/CSS/footer.css">

<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="../../../resources/JS/Mypage/messege.js" charset="utf-8"></script>

</head>
<jsp:include page="../Header/Header.jsp"></jsp:include>
<body>
<div id="my_con">
	<div id="my_main">
	
		<div id="my_side_left" >
			<div id="my_title">
				<img id="my_titleim" alt="탈퇴" src="../../../resources/image/mypage/resign.png">
				<p id="my_titlep">회원 탈퇴</p></div>

				<div id="my_menu">
					<div><a href="http://localhost:8080/mypage">마이페이지</a></div>
					<div><a href="http://localhost:8080/notice">공지사항</a></div>
					<div><a href="http://localhost:8080/QnA">자주하는 질문</a></div>
					<div><a href="http://localhost:8080/directQue">1:1 문의</a></div>
				</div>
		</div><!-- side_left -->

		<div id="my_center">
			<div id="my_resign">			
				<div id="my_resign_txt">
				<p>${resign.user_name }님 😉😉</p>
					정말로 탈퇴하실건가요???<br>
					탈퇴하는 당신을 붙잡고 있어요////어쩌구 저쩌구,,,<br>
					탈퇴한 회원의 정보는 ///개인정보보호법에 의거<br>
					어쩌구 저쩌구////구질구질하게 매달리는 중<br>
					정말로 가실거예요????😢😢😢</div>
			<form action="/mypage/resign" method="post">		
				<div id="my_resign_go">
					<button id="my_bye">회원 탈퇴</button>
				</div>
			</form>		
			</div><!-- my_resign -->	
		</div><!-- my_center -->
		
		<div id="my_side_right"></div>
		
	</div><!-- my_main -->	
</div><!-- my_con -->
</body>
<jsp:include page="../Footer/footer.jsp"></jsp:include>
</html>