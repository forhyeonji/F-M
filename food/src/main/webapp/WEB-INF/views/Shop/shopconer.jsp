<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../Header/Header.jsp"%>

<link rel="stylesheet" type="text/css"
	href="../../../resources/CSS/shop_CSS/shopconer.css">
<script type="text/javascript"
	src="../../../resources/JS/Shop/ShopConer.js"></script>

	<div class="shopconer">
		<ul class="sh_menu">
			<li><a href="#" class="sh_a">Category</a>
				<ul class="sh_submenu1">
					<li><a href="/shopconer?class1=meat" class="sh_a">meat</a></li>
					<li><a href="/shopconer?class1=vagetable" class="sh_a">vagetable</a></li>
					<li><a href="/shopconer?class1=fruit" class="sh_a">fruit</a></li>
					<li><a href="/shopconer?class1=fish" class="sh_a">fish</a></li>
					<li><a href="/shopconer?class1=juice" class="sh_a">juice</a></li>
				</ul></li>

			<li><a href="#" class="sh_a">New</a></li>
		</ul>

		<!-- <div class="sh_title">
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
 -->
		<table class="sh_ta" align="right">
			<tr>
				<td>
					<input type="hidden" id="category" value="${corner[0].class1}">
				</td>
				<td>
					<!-- <button class="sh_a2" id="basicprod" name="type">기본순</button> -->
					<a href="#" id="basic">기본 순</a>
				</td>
				<td>
					<!-- <button class="sh_a2" id="rowprice" name="type"> 낮은가격순</button> -->
					<a href="#" id="rowprice">낮은 가격 순</a>
				</td>
				<td>
					<!-- <button class="sh_a2" id="hightprice" name="type"> 높은가격순</button> -->
					<a href="#" id="highprice">높은 가격 순</a>
				</td>
			</tr>
		</table>

		<div class="sh_meat_main">
			<c:forEach items="${corner}" var="corner">
			<a href="/shopDetail?prodnum=${corner.prodnum}">
			<div class="divisionimg">
			<div class="sh_meatimg_1" id="pork">
				<div class="shopcorner_div_img" data-name="${corner.NAME}" data-filename="${corner.filename}">
                 <img class="conerimg">
                </div>
			</div>
				<div class="sh_porkbelly">${corner.NAME}</div>
				<div class="sh_porkbelly_price">${corner.discountprice}원</div>
				<p class="sh_potrkbelly_ex">${corner.subcontent}</p>
			</div>
			</a>
			</c:forEach>
			</div>
		</div>
	<%@ include file="../Footer/footer.jsp"%>