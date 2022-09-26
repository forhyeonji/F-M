<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../Header/Header.jsp"%>

<div class="shop">
	<div class="shopall">
		<ul class=" sh_menu1">
			<li><a href="#" class="sh_a">Category</a>

				<ul class="sh_submenu">
					<li><a href="http://localhost:8080/shopconer" class="sh_a">meat</a></li>
					<li><a href="#" class="sh_a">vagetable</a></li>
					<li><a href="#" class="sh_a">fruit</a></li>
					<li><a href="#" class="sh_a">fish</a></li>
					<li><a href="#" class="sh_a">juice</a></li>
				</ul></li>

			<li><a href="#" class="sh_a">New</a></li>
			<li><a href="#" class="sh_a">Event</a></li>
		</ul>
		<div class="sh_main">
			<div class="division_1">
				<a href="#" class="sh_a"><h2 class="sh_h2">인기 상품></h2></a>
			</div>
			<div class="sh_main_top">
				<ul class="sh_mainpart">
						<c:forEach items="${shopVO}" var="shlist">
							<li>
								<div>
									<input type="text" value="${shopVO.prodnum}" hidden="">
								</div>
							
								<div>
									<a href="/shopProductlist/ShopList?prodnum=${ShopProductlist.prodnum}" class="shmain_img" >
									<img class="shmain_img" src="/display?filename=${shopProductlist.filename }"></a>
								</div>
								
								<div>
									상품명<span class="font">${ShopProductlist.NAME}</span>
								</div>
								<div>
									가격<span class="font">${ShopProductlist.discountprice}</span>
								</div>
								<div>
									<span class="font">${ShopProductlist.subcontent}</span>
								</div>
							</li>
						</c:forEach>
				</ul>
				</div>
				</div>

	<!-- 		<div class="sh_division_2">
				<a href="#" class="sh_a"><h2 class="sh_h2">F&M이 추천하는 신상 제품></h2></a>
			</div>

			<div class="sh_main_middle">
				<div class="sh_main_image_1">
					<a href="#" class="sh_a">
						<div class="sh_img">
							<img src="../../../resources/image/shop/규동.jpg">
						</div>
						<div class="sh_parcel">한진택배</div>
						<div class="sh_guydong">
							규동<br> 소고기 덮밥용
						</div>
						<div class="sh_guydong_price">18,430원</div>
						<p class="sh_guydong_ex">간편하게 만들어 맛있게</p>
					</a>
				</div>

				<div class="sh_main_image_1">
					<a href="#" class="sh_a">
						<div class="sh_img">

							<img src="../../../resources/image/shop/granate.jpg">
						</div>
						<div class="sh_parcel">한진택배</div>
						<div class="sh_granate">석류 3개</div>
						<div class="sh_granate_price">23,500</div>
						<p class="sh_granate_ex">여자에게 최고의 과일</p>
					</a>
				</div>

				<div class="sh_main_image_1">
					<a href="#" class="sh_a">
						<div class="sh_img">
							<img src="../../../resources/image/shop/VINIQ.jpg">
						</div>
						<div class="sh_parcel">한진택배</div>
						<div class="sh_VINIQ">VINIQ 1병</div>
						<div class="sh_VINIQ_price">13,500</div>
						<p class="sh_VINIQ_ex">특별한 날 파티용 샴페인</p>
					</a>
				</div>

				<div class="sh_main_image_1">
					<a href="#" class="sh_a">
						<div class="sh_img">
							<img src="../../../resources/image/shop/lemon.jpg">
						</div>
						<div class="sh_parcel">한진택배</div>
						<div class="sh_lemon">레몬 6개입</div>
						<div class="sh_lemon_price">8,750원</div>
						<p class="sh_lemon_ex">상큼한 미국산 레몬 6개입</p>
					</a>
				</div>
			</div>
		</div>
	</div> -->
</div>
</div>
<%@ include file="../Footer/footer.jsp"%>
