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
</head>
<jsp:include page="../Header/Header.jsp"></jsp:include>
<body>
<div id="my_con">
	<div id="my_main">
	
		<div id="my_side_left" >
			<div><label id="my_title">회원 탈퇴</label></div>
				<div id="my_profile">
					<div><img src="../../../resources/image/profile/profile01.jpeg"></div>
					<div><span id="my_id">회원id 님</span><br>
					<a href="http://localhost:8080/mypage/profile_edit">
						<input type="button" value="회원정보 수정"></a></div>
				</div>
				<div id="my_notice">
					<div><a href="http://localhost:8080/notice">공지사항</a></div>
					<div><a href="http://localhost:8080/QnA">자주하는 질문</a></div>
					<div><a href="http://localhost:8080/directQue">1:1 문의</a></div>
				</div>
		</div><!-- side_left -->

		<div id="my_center">
			<div id="my_resign">
				<div id="my_resign_txt">
				<p><input readonly type="text" value="회원id">님~</p>
					정말로 탈퇴하실건가요???<br>
					탈퇴하는 당신을 붙잡고 있어요<br>
					어쩌구 저쩌구,,,<br>
					탈퇴한 회원의 정보는 <br>
					개인정보보호법에 의거<br>
					어쩌구 저쩌구<br>
					구질구질하게 매달리는 중</div>
				<div id="my_resign_go">
					<button>회원 탈퇴</button>
				</div>	
			</div><!-- my_resign -->	
		</div><!-- my_center -->
		
		<div id="my_side_right"></div>
		
	</div><!-- my_main -->	
</div><!-- my_con -->
</body>
<jsp:include page="../Footer/footer.jsp"></jsp:include>
</html>