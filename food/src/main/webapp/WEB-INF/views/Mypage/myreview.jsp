<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내가 쓴 상품평 review</title>
<link rel="stylesheet" href="../../../resources/CSS/mypage.css">
<link rel="stylesheet" href="../../../resources/CSS/header.css">
<link rel="stylesheet" href="../../../resources/CSS/footer.css">
</head>
<jsp:include page="../Header/Header.jsp"></jsp:include>
<body>
<div id="my_con">
	<div id="my_main">
	
		<div id="my_side_left">
			<div id="my_title">
				<img id="my_titleim" alt="상품평" src="../../../resources/image/mypage/review.png">
				<p id="my_titlep">상품평</p></div>

			<div id="my_menu">
				<div><a href="/mypage">마이페이지</a></div>
				<div><a href="/notice">공지사항</a></div>
				<div><a href="/QnA">자주하는 질문</a></div>
				<div><a href="/directQue">1:1 문의</a></div>
			</div>
		</div><!-- my_side_left -->

		<div id="my_center">
			<h3>내가 쓴 상품평✍✍</h3>
			<div class="my_review">
				<table>
					<tr>
						<td rowspan="3">
							<img src="../../../resources/image/lemon.jpg">상품 사진
						<td>상품 이름</td>
						<td rowspan="3">
							<a href="/mypage/orderdetail">
							<input type="button" value="상세 보기"></a></td>
					</tr>
					<tr>
						<td>수량 3</td>						
					</tr>
					<tr>
						<td>금액 80,000</td>
					</tr>
					<tr>
						<td colspan="3">어쩌구저쩌구리뷰리뷰리뷰리뷰리뷰</td>
					</tr>						
				</table>
			</div>
			<div class="my_review">
				<table>
					<tr>
						<td rowspan="3">
							<img src="../../../resources/image/egg.jpg">상품 사진
						<td>상품 이름</td>
						<td rowspan="3">
							<a href="/mypage/orderdetail">
							<input type="button" value="상세 보기"></a></td>
					</tr>
					<tr>
						<td>수량 5</td>						
					</tr>
					<tr>
						<td>금액 30,000</td>
					</tr>
					<tr>
						<td colspan="3">어쩌구저쩌구리뷰리뷰리뷰리뷰리뷰</td>
					</tr>						
				</table>
			</div>	
		</div><!-- my_center -->
		
		<div id="my_side_right"></div>
		
	</div><!-- my_main -->
</div><!-- my_con -->
</body>
<jsp:include page="../Footer/footer.jsp"></jsp:include>
</html>