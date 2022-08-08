<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>profile_edit</title>
<style type="text/css">
container{display:flex; justify-content:center; }
div{margin:5px; }
header{text-align:center; }; }
</style>
</head>
<body>
<header>
	<h1>food</h1>
	<p>다른 메뉴는 메인페이지 따라갈게요</p>
</header>

<container>
	<div id="side_left" >
		<table border="1">
			<tr>
				<td >회원 정보</td>
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
			<tr>
				<td ><input type="button" value="회원탈퇴"></td>
			</tr>	
		</table>
	</div>
	<div id="profile_edit" >
		<table border="1" style="width:500px;">
			<tr>
				<td rowspan="3" style="width:200px">프로필 사진</td>
				<th>ID</th>
				<td><input readonly type="text" placeholder="회원id(수정불가)"></td>
			</tr>
			<tr>
				<th>닉네임</th>
				<td><input type="text" placeholder="회원닉네임"></td>
			</tr>
			<tr>
				<th>주소</th>
				<td><input type="text" placeholder="회원주소"></td>
			</tr>		
			<tr>
				<td rowspan="3"><input type="file" id="profile" name="profile">
					<input type="submit" value="사진 수정"> </td>
				<th>전화</th>
				<td><input type="tel" placeholder="회원전화번호"></td>
			</tr>
			<tr>
				<th>이메일</th>
				<td><input type="email" placeholder="이메일"></td>
			</tr>
			<tr>
				<th>성별</th>
				<td><input type="radio" id="man" name="gender" value="남자">남자
					<input type="radio" id="woman" name="gender" value="여자">여자</td>
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
</container>
<footer>
	<p>회사소개</p>
</footer>
</body>

</html>