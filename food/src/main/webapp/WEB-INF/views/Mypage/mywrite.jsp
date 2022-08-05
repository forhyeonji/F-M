<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>mywrite</title>
<style type="text/css">
container {
	display: inline-flex;
}

div {
	margin: 5px;
}
</style>
</head>
<body>
	<header>
		<h1 align="center">food</h1>
		<p align="center">다른 메뉴는 메인페이지 따라갈게요</p>
	</header>

	<container>
	<div id="side_left">
		<table border="1">
			<tr>
				<td colspan="2">내가 올린 글</td>
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
	<div id="mywrite">
		<div>
			<button>내 댓글</button>
			<button>내가 좋아요 누른 글</button>
		</div>
		<div>
			
		</div>
	</div>
	<div></div>
	</container>

	<footer>
		<p>회사소개</p>
	</footer>
</body>
</html>