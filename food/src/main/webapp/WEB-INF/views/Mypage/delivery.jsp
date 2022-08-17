<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>delivery</title>
<link rel="stylesheet" href="../../../resources/CSS/mypage.css">
<link rel="stylesheet" href="../../../resources/CSS/header.css">
<link rel="stylesheet" href="../../../resources/CSS/footer.css">
</head>
<jsp:include page="../Header/Header.jsp"></jsp:include>
<body>
<div id="my_con">
	<div id="main">
		<div id="side_left">
			<div><label id="page_title">배송 조회</label></div>
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

		<div id="delivery" >
			<div>
				<label>주문날짜 8/1</label>
				<label>주문 번호 123456789</label>
			</div>
		배송조회 API ::::: https://tracker.delivery/guide/
		</div>
		<div id="go_watched" style="border:1px solid;">
			<h3>최근 본 상품</h3>
			<div id="go_watched1" style="width:130px;height:100px;border:1px solid;">상품1</div>
			<div id="go_watched2" style="width:130px;height:100px;border:1px solid;">상품2</div>
			<div id="go_watched3" style="width:130px;height:100px;border:1px solid;">상품3</div>
		</div>
	</div><!-- main -->
	
</div><!-- container -->
</body>
<jsp:include page="../Footer/footer.jsp"></jsp:include>
</html>