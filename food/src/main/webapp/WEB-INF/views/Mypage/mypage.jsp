<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>mypage</title>
<style type="text/css">
container{display:inline-flex;}
div{margin:5px; }
</style>
</head>
<body>
<header>
<h1 align="center">food</h1>
<p align="center">다른 메뉴는 메인페이지 따라갈게요</p>
</header>
<container>
<div class="mypage" id="side_left">
	<table border="1">
		<tr>
			<td colspan="2">회원 정보</td>
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
		<tr>
			<td colspan="3">원래여기에있던<br>회원탈퇴는<br> 정보수정쪽으로<br> 들어가야 나옴</td>
		</tr>	
	</table>
</div>
<div class="mypage" id="go_orderboard" >
	<div id="go_order" style="width:400px;border:1px solid;">
		<p>🛒🛒🛒</p>
		<p>주문 & 배송 조회</p>
	</div>
	<div id="go_myboard" style="width:400px;border:1px solid;">
		<table>
			<tr>
				<td>📝📝📝</td>
				<td>내 글 보기</td>
			</tr>
			<tr>
				<td>✏✏✏</td>
				<td>내 댓글 보기</td>
			</tr>
			<tr>
				<td>❤❤❤</td>
				<td>내가 좋아요 누른 글 보기</td>
			</tr>
		</table>
	</div>
</div>
<div class="mypage" id="go_watched" style="border:1px solid;">
	<h3>최근 본 상품</h3>
	<div id="go_watched1" style="width:150px;height:100px;border:1px solid;">상품1</div>
	<div id="go_watched2" style="width:150px;height:100px;border:1px solid;">상품2</div>
	<div id="go_watched3" style="width:150px;height:100px;border:1px solid;">상품3</div>
</div>
</container>
<footer>
	<p>회사소개</p>
</footer>
</body>

</html>