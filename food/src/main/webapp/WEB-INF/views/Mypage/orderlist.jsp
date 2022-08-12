<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>orderlist</title>
<link rel="stylesheet" href="../../../resources/CSS/mypage.css">
<link rel="stylesheet" href="../../../resources/CSS/footer.css">
</head>
<body>
<div id="container">
	<header>
		<h1>food</h1>
		<p>다른 메뉴는 메인페이지 따라갈게요</p>
	</header>
	
	<div id="main">
		<div id="side_left">
			<div><label id="page_title">주문 정보</label></div>
			<div id="profile">
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
				<label>주문날짜 8/1</label>
			</div>
			<div class="order1" style="border: 1px solid;">
				<table style="width: 500px;">
					<tr>
						<td rowspan="3">상품 사진</td>
						<td>상품 이름(제목)</td>
						<td>
						<a href="http://localhost:8080/mypage/orderdetail">
						<input type="button" value="상세 보기"></a></td>
					</tr>
					<tr>
						<td>외 2품목</td>
						<td>
						<a href="http://localhost:8080/mypage/delivery">
						<input type="button" value="배송 조회"></a></td>
					</tr>
					<tr>
						<td>금액 80,000</td>
						<td>
						<a href="http://localhost:8080/mypage/ordercancle">
						<input type="button" value="취소"></a>
						<a href="http://localhost:8080/mypage/orderrefund">
						<input type="button" value="반품"></a></td>
					</tr>
				</table>
			</div>
			<div>
				<label>주문날짜 7/25</label>
			</div>
			<div class="order1" style="border: 1px solid;">
				<table style="width: 500px;">
					<tr>
						<td rowspan="3">상품 사진</td>
						<td>상품 이름(제목)</td>
						<td><a href="http://localhost:8080/mypage/orderdetail">
						<input type="button" value="상세 보기"></a></td>
					</tr>
					<tr>
						<td>외 5품목</td>
						<td>
						<a href="http://localhost:8080/mypage/delivery">
						<input type="button" value="배송 완료"></a></td>
					</tr>
					<tr>
						<td>금액 130,000</td>
						<td></td>
					</tr>
				</table>
			</div>
			<div>
				<label>주문날짜 7/13</label>
			</div>
			<div class="order1" style="border: 1px solid;">
				<table style="width: 500px;">
					<tr>
						<td rowspan="3">상품 사진</td>
						<td>상품 이름(제목)</td>
						<td><a href="http://localhost:8080/mypage/orderdetail">
						<input type="button" value="상세 보기"></a></td>
					</tr>
					<tr>
						<td>외 1품목</td>
						<td><a href="http://localhost:8080/mypage/delivery">
						<input type="button" value="배송 완료"></a></td>
					</tr>
					<tr>
						<td>금액 40,000</td>
						<td></td>
					</tr>
				</table>
			</div>		
		</div>
		<div id="go_watched" style="border: 1px solid;">
			<h3>최근 본 상품</h3>
			<div id="go_watched1"
				style="width: 130px; height: 100px; border: 1px solid;">상품1</div>
			<div id="go_watched2"
				style="width: 130px; height: 100px; border: 1px solid;">상품2</div>
			<div id="go_watched3"
				style="width: 130px; height: 100px; border: 1px solid;">상품3</div>
		</div>
	</div><!-- main -->

</div><!-- container -->	
</body>
<jsp:include page="../Footer/footer.jsp"></jsp:include>
</html>