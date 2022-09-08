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
		<form action="/mypage/edit" method="post">
			<table id="my_profile_edit">
				<tr>
					<td class="my_edit_td">ID</td>
					<td><input readonly type="text" value="${sessionScope.user_id }">
						</td>
				</tr>
				<tr>
					<td class="my_edit_td">비번</td>
					<td><input type="password" value="${profile.user_pw }" name="user_pw"></td>
				</tr>	
						
				<tr>
					<td class="my_edit_td">이름</td>
					<td><input readonly type="text" value="${profile.user_name }" name="user_name"></td>
				</tr>
				<tr>
					<td class="my_edit_td">닉네임</td>
					<td><input type="text" value="${profile.user_nick}" name="user_nick"></td>
				</tr>
				<tr>
					<td class="my_edit_td">주소</td>
					<td><input type="text" value="${profile.user_add }" name="user_add"></td>
				</tr>		
				<tr>
					<td class="my_edit_td">전화번호</td>
					<td><input type="tel" value="${profile.user_phone }" name="user_phone"></td>
				</tr>
				<tr>
					<td class="my_edit_td">이메일</td>
					<td><input type="email" value="${profile.user_email }" name="user_email"></td>
				</tr>
				<tr>
					<th colspan="2" id="my_editBtn">
					<input  type="submit" value="회원정보 수정"></th>
				</tr>				
			</table>
			</form>
		
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