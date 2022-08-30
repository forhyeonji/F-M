<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>mywrite</title>
<link rel="stylesheet" href="../../../resources/CSS/mypage.css">
<link rel="stylesheet" href="../../../resources/CSS/header.css">
<link rel="stylesheet" href="../../../resources/CSS/footer.css">
</head>
<jsp:include page="../Header/Header.jsp"></jsp:include>
<body>
<div id="my_con">
	
	<div id="main">
		<div id="side_left">
			<div><label id="page_title">📝내가 올린 글</label></div>
			<div id="my_profile">
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
						<th>제목</th><th>작성일자</th>
					</tr>
					<tr><p>DB 글에 아이디가 없어서 셀렉이 안됨 / 그래서 전체출력중</p></tr>
					<!-- for문 시작 -->
					<c:forEach items="${mywrite}" var="mywrite">
					<tr>
						<td>${mywrite.title}</td>
						<td>${mywrite.reg_dt}</td>
					</tr>
					</c:forEach>				
				</table>
		</div>
		<div>최근본상품은 생략???</div>
	</div><!-- main -->

</div><!-- container -->
</body>
<jsp:include page="../Footer/footer.jsp"></jsp:include>
</html>