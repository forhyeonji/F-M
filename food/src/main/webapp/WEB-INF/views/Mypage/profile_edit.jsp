<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>profile_edit</title>
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
			<div><label id="page_title">정보 수정</label></div>
			<div id="notice">
				<div><a href="http://localhost:8080/notice">▷ 공지사항</a></div>
				<div><a href="http://localhost:8080/QnA">▷ 자주하는 질문</a></div>
				<div><a href="http://localhost:8080/directQue">▷ 1:1 문의</a></div>
			</div>
			<a href="http://localhost:8080/mypage/resign"><input type="button" value="회원탈퇴"></a>
		</div><!-- side_left -->

		<div id="center" >
			<table border="1">
				<tr>
					<td rowspan="3" style="width:200px">프로필 사진<br>
					<img src="../../../resources/image/profile/profile01.jpeg"></td>
					<th>ID</th>
					<td><input readonly type="text" placeholder="회원id(수정불가)" ></td>
				</tr>
				<tr>
					<th>이름</th>
					<td><input type="text" placeholder="회원이름" name="name"></td>
				</tr>
				<tr>
					<th>주소</th>
					<td><input type="text" placeholder="회원주소" name="add"></td>
				</tr>		
				<tr>
					<td rowspan="3"><input type="file" id="profile" name="profile">
						<input type="submit" value="사진 수정"> </td>
					<th>전화</th>
					<td><input type="tel" placeholder="회원전화번호" name="phone"></td>
				</tr>
				<tr>
					<th>이메일</th>
					<td><input type="email" placeholder="이메일" name="email"></td>
				</tr>
				<tr>
					<th>성별</th>
					<td><input type="radio" id="man" name="gender" value="man">남자
						<input type="radio" id="woman" name="gender" value="woman">여자</td>
				</tr>
				<tr>
					<td colspan="3"><input type="button" value="회원정보 수정"></td>
				</tr>
			</table>
		</div>
		<div id="go_watched" style="border:1px solid;">
			<h3>최근 본 상품</h3>
			<div id="go_watched1" style="width:130px;height:100px;border:1px solid;">상품1</div>
			<div id="go_watched2" style="width:130px;height:100px;border:1px solid;">상품2</div>
			<div id="go_watched3" style="width:130px;height:100px;border:1px solid;">상품3</div>
		</div>
	</div><!-- main -->
	<footer>
		<p>회사소개</p>
	</footer>
</div><!-- container -->
</body>
</html>