<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../Header/Header.jsp"%>

<link rel="stylesheet" type="text/css"
	href="../../../resources/CSS/shop_CSS/shopconer.css">
<meta charset="UTF-8">

</head>
<body>
	<div class="shopconer">
		<ul class="menu">
			<li><a href="#">Category</a>
				<ul class="submenu1">
					<li><a href="#">meat</a></li>
					<li><a href="#">vagetable</a></li>
					<li><a href="#">fruit</a></li>
					<li><a href="#">fish</a></li>
					<li><a href="#">juice</a></li>
				</ul></li>

			<li><a href="#">Best</a></li>
			<li><a href="#">New</a></li>
			<li><a href="#">Sale</a></li>
			<li><a href="#">Event</a></li>
		</ul>

		<div class="title">
			<h1>정육 & 계란 코너</h1>
		</div>

		<div class="header">
			<table border="1" width="1050px" height="130px">
				<tr>
					<td>
						<ul class="item">
							<li><a href="#">전체</a></li>
							<li><a href="http://localhost:8080/shopbeef">소고기</a></li>
							<li><a href="#">돼지고기</a></li>
							<li><a href="#">계란</a></li>
							<li><a href="#">닭고기</a></li>
							<li><a href="#">오리고기</a></li>
							<li><a href="#">양고기</a></li>
						</ul>
					</td>
				</tr>
			</table>
		</div>

		<table border="1" class="order" align="right">
			<tr>
				<td><a href="#"> 낮은가격순</a></td>
				<td><a href="#"> 높은가격순</a></td>
				<td><a href="#"> 후기많은순</a></td>
				<td><a href="#"> 추천순</a></td>
			</tr>
		</table>

		<div class="meat_main">
			<div class="meatimg_1" id="pork">
				<img src="../../../resources/image/porkbelly.jpg" width="300px"
					height="300px">
				<div class="sky">하늘배송</div>
				<div class="porkbelly">돼지고기 1kg</div>
				<div class="porkbelly_price">16,900원</div>
				<p class="potrkbelly_ex">국내산 녹차 먹인 돼지</p>
			</div>

			<div class="meatimg_1" id="sir">
				<img src="../../../resources/image/sirloin.jpg" width="300px"
					height="300px">
				<div class="sky">하늘배송</div>
				<div class="sirloin">등심 300g</div>
				<div class="sirloin_price">14,900원</div>
				<p class="sirloin_ex">호주산 등심 스테이크</p>
			</div>

			<div class="meatimg_1">
				<img src="../../../resources/image/tip.jpg" width="300px"
					height="310px">
				<div class="sky">하늘배송</div>
				<div class="tip">채끝살 300g</div>
				<div class="tip_price">69,900원</div>
				<p class="tip_ex">1++ 한우 채끝 스테이크</p>
			</div>

			<div class="meat_middle">
				<div class="meatimg_1" id="chi">
					<img src="../../../resources/image/chicken.jpg" width="300px">
					<div class="sky">하늘배송</div>
					<div class="chicken">생 닭 1마리</div>
					<div class="chicken_price">18,800원</div>
					<p class="chicken_ex">삼계탕용</p>
				</div>

				<div class="meatimg_1" id="eg">
					<img src="../../../resources/image/egg.jpg" width="300px">
					<div class="sky">하늘배송</div>
					<div class="egg">신선 왕란 30구</div>
					<div class="egg_price">8,250원</div>
					<p class="egg_ex">국내산 왕란 30구</p>
				</div>

				<div class="meatimg_1" id="duck">
					<img src="../../../resources/image/smokeduck.jpg" width="300px">
					<div class="sky">하늘배송</div>
					<div class="smokeduck">다향 훈제 오리 슬라이스 2묶음</div>
					<div class="smokeduck_price">11,250원</div>
					<p class="smokeduck_ex">다향 훈제 오리 1등급</p>
				</div>
			</div>
		</div>
	</div>
</body>
</html>