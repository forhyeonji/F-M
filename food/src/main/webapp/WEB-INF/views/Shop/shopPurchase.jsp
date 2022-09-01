<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../Header/Header.jsp"%>

<link rel="stylesheet" type="text/css"
	href="../../../resources/CSS/shop_CSS/shopPurchase.css">
</head>
<body>
	<div class="shopPurchase">
		<ul class="sh_me">
			<li><a href="#" class="sh_a">Category</a>
				<ul class="sh_subme1">
					<li><a href="#" class="sh_a">meat</a></li>
					<li><a href="#" class="sh_a">vagetable</a></li>
					<li><a href="#" class="sh_a">fruit</a></li>
					<li><a href="#" class="sh_a">fish</a></li>
					<li><a href="#" class="sh_a">juice</a></li>
				</ul></li>

			<li><a href="#" class="sh_a">Best</a></li>
			<li><a href="#" class="sh_a">New</a></li>
			<li><a href="#" class="sh_a">Sale</a></li>
			<li><a href="#" class="sh_a">Event</a></li>
		</ul>

		<div class="sh_purimg">
			<img src="../../../resources/image/shop/배추.jpg" class="sh_img_cab">

			<div class="sh_Ex">
				<div class="sh_productName">
					<p id="sh_penmanship">한진택배</p>
					<p id="sh_title">알배기배추 1kg</p>
					<p id="sh_pen">속이 꽉차고 달큰한 알배기 배추</p>
					<p id="sh_p">4,990원</p>

					<hr id="sh_boundary">
					<div class="sh_productex">
						<p>배송</p>
						<p id="sh_box">
							한진택배<br> 22시 전 주문 시 내일 18시 전 도착<br> 지역 별도 확인 요망
						</p>
					</div>


					<hr id="sh_boundary">
					<div class="sh_pacakge">
						<p>포장타입</p>
						<p id="sh_ice">냉장</p>
					</div>

					<hr id="sh_boundary">
					<div class="sh_pacakge">
						<p>판매단위</p>
						<p id="sh_kg">1kg</p>
					</div>

					<hr id="sh_boundary">
					<div class="sh_pacakge">
						<p>원산지</p>
						<p id="sh_domestic">국내산</p>
					</div>

					<hr id="sh_boundary">
					<div class="sh_pacakge">
						<p>입고안내</p>
						<p id="sh_im">매주 월,수 18시 이후 입고 예정</p>
					</div>
					
					<hr id="sh_boundary">
					<div class="sh_Num">
						구매수량 <input type="text" value="1" id="sh_amount" size="3" max="50">
						<input type="button" value="+" id="sh_add"> <input
							type="button" value="-" id="sh_minus">
					</div>
					
					<hr id="sh_boundary">
					<div class="sh_sum">

						<div class="sh_sumprice">
							<p id="sh_productprice">총 상품금액:</p>
							<p id="sh_principal">4,990</p>
							<p id="sh_one">원</p>
						</div>
						<div class="sh_point">로그인 후 포인트 적립</div>

						<div class="sh_noti">
							<div class="sh_steamed">찜버튼</div>
							<div class="sh_steamed">알림</div>
							<a href="http://localhost:8080/mypage/cart"><button
									class="sh_box">장바구니 담기</button> </a>
						</div>
					</div>

				</div>
			</div>
		</div>

		<div class="shoppurchaseEx">
			<div class="sh_Explanation">
				<ul class="sh_add">
				<li><p>상품설명</p></li>
				<li><p>상세정보</p></li>
				<li><p>후기</p></li>
				<li><p>문의</p></li>
				</ul>
			</div>
		</div>

	</div>
</body>
</html>