<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>profile_edit</title>
<link rel="stylesheet" href="../../../resources/CSS/mypage.css">
<link rel="stylesheet" href="../../../resources/CSS/header.css">
<link rel="stylesheet" href="../../../resources/CSS/footer.css">
</head>
<jsp:include page="../Header/Header.jsp"></jsp:include>
<body>
<div id="my_con">
	<div id="my_main">
	
		<div id="my_side_left" >
			<div><label id="my_title">정보 수정</label></div>
			<div id="my_notice">
				<div><a href="http://localhost:8080/notice">공지사항</a></div>
				<div><a href="http://localhost:8080/QnA">자주하는 질문</a></div>
				<div><a href="http://localhost:8080/directQue">1:1 문의</a></div>
			</div>			
		</div><!-- my_side_left -->

		<div id="my_center" >
			<table id="my_profile_edit">
				<tr>
					<td rowspan="3">프로필 사진<br>
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
					<td rowspan="3">
						<input type="file" id="my_profile" name="profile">
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
					<td colspan="3">
					<input type="button" value="회원정보 수정"></td>
				</tr>
			</table>
		
			<div id="my_resign_btn">
				<a href="http://localhost:8080/mypage/resign">
				<input type="button" value="회원탈퇴"></a></div>
		</div><!-- my_center -->	
		
		<div id="my_side_right"></div>
		
	</div><!-- my_main -->
</div><!-- my_con -->
</body>
<jsp:include page="../Footer/footer.jsp"></jsp:include>
</html>