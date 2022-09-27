<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>canclelist</title>
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
				<img id="my_titleim" alt="장바구니" src="../../../resources/image/mypage/cancle.png">
				<p id="my_titlep">취소▪반품<br>내역</p></div>

			<div id="my_menu">
				<div><a href="/mypage">마이페이지</a></div>
				<div><a href="/notice">공지사항</a></div>
				<div><a href="/QnA">자주하는 질문</a></div>
				<div><a href="/directQue">1:1 문의</a></div>
			</div>
		</div><!-- side_left -->

		<div id="my_center">
			<h3>주문 취소, 반품 내역을 확인하세여</h3>
			<div class="my_order1">
				<table>
					<tr>
						<td colspan="3">
							<span>취소...</span><span>날짜 8/1</span></td>
					</tr>
					<tr>
						<td rowspan="3">
						<img src="../../../resources/image/lemon.jpg">
						<br>상품 사진(대표로 하나만)</td>
						<td>상품 이름(제목)</td>
						<td rowspan="3">
						<a href="/mypage/orderdetail">
						<input type="button" value="상세 보기"></a></td>
					</tr>
					<tr>
						<td>외 2품목</td>						
					</tr>
					<tr>
						<td>금액 80,000</td>
					</tr>
				</table>
			</div>

			<div class="my_order1">
				<table>
					<tr>
						<td colspan="3">
							<span>반품...</span><span>날짜 7/28</span></td>
					</tr>
					<tr>
						<td rowspan="3">
						<img src="../../../resources/image/egg.jpg">
						<br>상품 사진(대표로 하나만)</td>
						<td>상품 이름(제목)</td>
						<td rowspan="3">
						<a href="/mypage/orderdetail">
						<input type="button" value="상세 보기"></a></td>
					</tr>
					<tr>
						<td>외 5품목</td>
					</tr>
					<tr>
						<td>금액 130,000</td>
						<td></td>
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