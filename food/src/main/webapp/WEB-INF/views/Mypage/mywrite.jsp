<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>mywrite</title>
<link rel="stylesheet" href="../../../resources/CSS/mypage.css">
</head>
<body>
<div id="container">
	<header>
		<h1>food</h1>
		<p>다른 메뉴는 메인페이지 따라갈게요</p>
	</header>
	
	<div id="main">
		<div id="side_left">
			<div><label id="page_title">📝내가 올린 글</label></div>
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
			<div>
				<a href="http://localhost:8080/mypage/myreply"><button>💬내 댓글</button></a>
				<a href="http://localhost:8080/mypage/mylike"><button>❤내가 좋아요 누른 글</button></a>
			</div>
				<table id="mywrite" border="1" style="width:500px;">
					<tr>
						<th>📝</th><th>제목</th><th>작성일자</th>
					</tr>
					<tr>
						<td style="height:80px">📝글 썸네일</td><td>맛있는 과일 고르기</td><td>2022/08/08</td>
					</tr>
					<tr>
						<td style="height:80px">📝글 썸네일</td><td>여름에 제일 맛있는 과일</td><td>2022/08/01</td>
					</tr>
					<tr>
						<td style="height:80px">📝글 썸네일</td><td>이번에도 글</td><td>2022/07/25</td>
					</tr>				
				</table>
		</div>
		<div>최근본상품은 생략???</div>
	</div><!-- main -->
	
	<footer>
		<p>회사소개</p>
	</footer>
</div><!-- container -->
</body>
</html>