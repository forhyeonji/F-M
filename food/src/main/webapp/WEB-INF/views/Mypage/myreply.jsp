<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>myreply</title>
<style type="text/css">
container {
	display: flex;
	justify-content: center;
}

div {
	margin: 5px;
}

header {
	text-align: center;
}
</style>
</head>
<body>
	<header>
		<h1>food</h1>
		<p>다른 메뉴는 메인페이지 따라갈게요</p>
	</header>

<container>
	<div id="side_left">
		<table border="1">
			<tr>
				<td colspan="2">내가 올린 "댓"글</td>
			</tr>
			<tr>
				<td rowspan="2">프로필사진</td>
				<td>회원 id 님</td>
			</tr>
			<tr>
				<td colspan="2"><input type="button" value="회원정보 수정"></td>
			</tr>
			<tr>
				<td colspan="2">
					<ul>
						<li>공지사항</li>
						<li>자주하는 질문</li>
						<li>1:1 문의</li>
					</ul>
				</td>
			</tr>
		</table>
	</div>
	<div id="myreply">
		<div>
			<button>내가 쓴 글</button>
			<button>내가 좋아요 누른 글</button>
		</div>
		<div>
			<table border="1" style="width:500px;">
				<tr>
					<th></th><th>제목</th><th>작성일자</th>
				</tr>
				<tr>
					<td style="font-size:150%">💬</td><td>좋아요!</td><td>2022/08/08</td>
				</tr>
				<tr>
					<td style="font-size:150%">💬</td><td>잘 보고 가요!</td><td>2022/08/01</td>
				</tr>
				<tr>
					<td style="font-size:150%">💬</td><td>푸하하핳ㅋㅋ</td><td>2022/07/30</td>
				</tr>					
				<tr>
					<td style="font-size:150%">💬</td><td>얼만가요?</td><td>2022/07/26</td>
				</tr>				
				<tr>
					<td style="font-size:150%">💬</td><td>ㅋㅋㅋㅋㅋ</td><td>2022/07/25</td>
				</tr>				
			</table>
		</div>
	</div>
	<div>최근본상품은 생략???</div>
</container>

<footer>
	<p>회사소개</p>
</footer>
</body>
</html>