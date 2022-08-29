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
		<ul class="sh_menu">
			<li><a href="#" class="sh_a">Category</a>
				<ul class="sh_submenu1">
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

		<div class="sh_title">
			<h1 class="sh_h1">정육 & 계란 코너</h1>
		</div>

		<div class="sh_header">
			<table border="1" width="1050px" height="130px" class="sh_table">
				<tr>
					<td>
						<ul class="sh_item">
							<li><a href="#" class="sh_a">전체</a></li>
							<li><a href="http://localhost:8080/shopbeef" class="sh_a">소고기</a></li>
							<li><a href="#" class="sh_a">돼지고기</a></li>
							<li><a href="#" class="sh_a">계란</a></li>
							<li><a href="#" class="sh_a">닭고기</a></li>
							<li><a href="#" class="sh_a">오리고기</a></li>
							<li><a href="#" class="sh_a">양고기</a></li>
						</ul>
					</td>
				</tr>
			</table>
		</div>

		<table class="sh_ta" align="right">
			<tr>
				<td><a href="#" class="sh_a2"> 낮은가격순</a></td>
				<td><a href="#" class="sh_a2"> 높은가격순</a></td>
				<td><a href="#" class="sh_a2"> 후기많은순</a></td>
				<td><a href="#" class="sh_a3"> 추천순</a></td>
			</tr>
		</table>

		<div class="sh_meat_main">
			<div class="sh_meatimg_1" id="pork">
				<img src="../../../resources/image/shop/porkbelly.jpg">
				<div class="sh_sky">하늘배송</div>
				<div class="sh_porkbelly">돼지고기 1kg</div>
				<div class="sh_porkbelly_price">16,900원</div>
				<p class="sh_potrkbelly_ex">국내산 녹차 먹인 돼지</p>
			</div>

			<div class="meatimg_1" id="sir">
				<img src="../../../resources/image/shop/sirloin.jpg">
				<div class="sh_sky">하늘배송</div>
				<div class="sh_sirloin">등심 300g</div>
				<div class="sh_sirloin_price">14,900원</div>
				<p class="sh_sirloin_ex">호주산 등심 스테이크</p>
			</div>

			<div class="sh_meatimg_1">
				<img src="../../../resources/image/shop/tip.jpg" id="tip">
				<div class="sh_sky">하늘배송</div>
				<div class="sh_tip">채끝살 300g</div>
				<div class="sh_tip_price">69,900원</div>
				<p class="sh_tip_ex">1++ 한우 채끝 스테이크</p>
			</div>

			<div class="sh_meat_middle">
				<div class="sh_meatimg_1" id="chi">
					<img src="../../../resources/image/shop/chicken.jpg">
					<div class="sh_sky">하늘배송</div>
					<div class="sh_chicken">생 닭 1마리</div>
					<div class="sh_chicken_price">18,800원</div>
					<p class="sh_chicken_ex">삼계탕용</p>
				</div>

				<div class="sh_meatimg_1" id="eg">
					<img src="../../../resources/image/shop/egg.jpg">
					<div class="sh_sky">하늘배송</div>
					<div class="sh_egg">신선 왕란 30구</div>
					<div class="sh_egg_price">8,250원</div>
					<p class="sh_egg_ex">국내산 왕란 30구</p>
				</div>

				<div class="sh_meatimg_1" id="duck">
					<img src="../../../resources/image/shop/smokeduck.jpg">
					<div class="sh_sky">하늘배송</div>
					<div class="sh_smokeduck">다향 훈제 오리 슬라이스 2묶음</div>
					<div class="sh_smokeduck_price">11,250원</div>
					<p class="sh_smokeduck_ex">다향 훈제 오리 1등급</p>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="../Footer/footer.jsp"%>