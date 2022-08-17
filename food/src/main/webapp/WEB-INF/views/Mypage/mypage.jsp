<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>mypage</title>
<link rel="stylesheet" href="../../../resources/CSS/mypage.css">
<link rel="stylesheet" href="../../../resources/CSS/header.css">
<link rel="stylesheet" href="../../../resources/CSS/footer.css">
</head>
<jsp:include page="../Header/Header.jsp"></jsp:include>
<body>
<div id="my_con">

	<div id="main">
		<div id="side_left">
			<div><label id="page_title">회원 정보</label></div>
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
			<div class="mypage_center_go">				
				<div class="mypage_go"><a href="http://localhost:8080/mypage/orderlist">
				🛒🛒🛒<br>주문 배송 조회</a></div>
				<div class="mypage_go"><a href="http://localhost:8080/mypage/canclelist">
				❌❌❌<br>주문 취소 내역</a></div>
				<div class="mypage_go"><a href="http://localhost:8080/mypage/orderrefund">
				↪↪↪<br>주문 반품 내역</a></div>
			</div>
			<div class="mypage_center_go">
				<div class="mypage_go"><a href="http://localhost:8080/mypage">
				💕💕💕<br>찜한 상품</a></div>
				<div class="mypage_go"><a href="http://localhost:8080/mypage">
				✒✒✒<br>내가 쓴 상품평</a></div>
			</div>
			<div class="mypage_center_go" style="width:480px;height:150px;border:1px solid;">
				<p>여기에는 기획전 BX슬라이더로 돌리면 좋을듯</p>
			</div>
			<div class="mypage_center_go">				
				<div class="mypage_go"><a href="http://localhost:8080/mypage/mywrite">
				📝📝📝<br>내 글 보기</a></div>
				<div class="mypage_go"><a href="http://localhost:8080/mypage/myreply">
				💬💬💬<br>내 "댓"글 보기</a></div>
				<div class="mypage_go"><a href="http://localhost:8080/mypage/mylike">
				❤❤❤<br>내가 좋아요 <br>누른 글 보기</a></div>
			</div>
		</div><!-- center -->
		<div class="mypage" id="go_watched" style="border:1px solid;">
			<h3>최근 본 상품</h3>
			<div id="go_watched1" style="width:150px;height:100px;border:1px solid;">상품1</div>
			<div id="go_watched2" style="width:150px;height:100px;border:1px solid;">상품2</div>
			<div id="go_watched3" style="width:150px;height:100px;border:1px solid;">상품3</div>
		</div>
	</div><!-- main -->
</div><!-- container -->
</body>
<jsp:include page="../Footer/footer.jsp"></jsp:include>
</html>