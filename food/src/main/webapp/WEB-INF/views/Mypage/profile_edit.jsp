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
			<div id="my_title">
				<img id="my_titleim" alt="정보수정" src="../../../resources/image/mypage/my.png">
				<p id="my_titlep">회원<br>정보 수정</p></div>
			<div id="my_menu">
				<div><a href="http://localhost:8080/mypage">마이페이지</a></div>
				<div><a href="http://localhost:8080/notice">공지사항</a></div>
				<div><a href="http://localhost:8080/QnA">자주하는 질문</a></div>
				<div><a href="http://localhost:8080/directQue">1:1 문의</a></div>
			</div>			
		</div><!-- my_side_left -->

		<div id="my_center" >
			<table id="my_profile_edit">
				<tr>
					<td class="my_edit_td">ID</td>
					<td><input readonly type="text" placeholder="회원id(수정불가)" ></td>
				</tr>
				<tr>
					<td class="my_edit_td">비번</td>
					<td><input type="password" placeholder="비번" ></td>
				</tr>	
				<tr>
					<td class="my_edit_td">비번 재확인</td>
					<td><input type="password" placeholder="비번재확인" ></td>
				</tr>							
				<tr>
					<td class="my_edit_td">이름</td>
					<td><input type="text" placeholder="회원이름" name="name"></td>
				</tr>
				<tr>
					<td class="my_edit_td">주소</td>
					<td><input type="text" placeholder="회원주소" name="add"></td>
				</tr>		
				<tr>
					<td class="my_edit_td">전화번호</td>
					<td><input type="tel" placeholder="회원전화번호" name="phone"></td>
				</tr>
				<tr>
					<td class="my_edit_td">이메일</td>
					<td><input type="email" placeholder="이메일" name="email"></td>
				</tr>

				<tr>
					<th colspan="2">
					<input type="button" value="회원정보 수정"></th>
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