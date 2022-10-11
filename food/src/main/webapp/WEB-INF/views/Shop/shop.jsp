<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../Header/Header.jsp"%>

<!-- 슬라이드를 위한 코드 -->
<link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
<link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick-theme.css"/>
<script type="text/javascript" src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>


<link rel="stylesheet" type="text/css"
	href="../../../resources/CSS/shop_CSS/shop.css">
<script type="text/javascript"
	src="../../../resources/JS/Shop/Shop.js"></script>

<meta charset="UTF-8">
</head>
<body>

<div class="shop">
	<div class="shopall">
		<ul class=" sh_menu1">
			<li><a href="#" class="sh_a">Category</a>

				<ul class="sh_submenu">
					<li><a href="/shopconer?class1=meat" class="sh_a">meat</a></li>
					<li><a href="/shopconer?class1=vagetable" class="sh_a">vagetable</a></li>
					<li><a href="/shopconer?class1=fruit" class="sh_a">fruit</a></li>
					<li><a href="/shopconer?class1=fish" class="sh_a">fish</a></li>
					<li><a href="/shopconer?class1=juice" class="sh_a">juice</a></li>
				</ul></li>

			<li><a href="#" class="sh_a">New</a></li>
		</ul>
		
		<div class="sh_slide">
				<div class="sh_advertisement">
					<div class="slideadver">
							<div>
								<a href="#">	
									<img src="../../../resources/image/shop/advertisement1.jpg" >
								</a>
							</div>
							
							<div>
								<a href="#">	
									<img src="../../../resources/image/shop/advertisement2.jpg" >
								</a>
							</div>
							
							<div>
								<a href="#">	
									<img src="../../../resources/image/shop/advertisement3.jpg" >
								</a>
							</div>
					</div>				
			</div>
		
		
				<h2 id="sh_h2">[추천 상품]</h2>
				<div class="sh_slide_div">
 					<c:forEach items="${recom}" var="recom">
					<a href="/shopDetail?prodnum=${recom.prodnum}">
					<div class="sh_img_div">
					  	 <div class="sh_ArrayList">
							<div class="shop_div_img" data-name="${recom.NAME}" data-filename="${recom.filename}">
                         	  <img>
                       	    </div>
						 </div>	
					 </div>	
					 
					 <div class="sh_img_text">	
						<div class="sh_NAME">
							${recom.NAME}
						</div>		
						
						<div class="sh_subcontent">
							${recom.subcontent}
						</div>
						
						<div class="sh_discountprice">
							${recom.discountprice}
						</div>
						
						<div class="sh_prodnum">
							<input type="hidden" value="${recom.prodnum}">
						</div>
					</div>
				</a>
				</c:forEach>
			</div>
			
			
				<h2 id="sh_h2">[신상품]</h2>
				<div class="sh_slide_div">
 					<c:forEach items="${newItem}" var="newItem">
					<a href="/shopDetail?prodnum=${newItem.prodnum}">
					<div class="sh_img_div">
					  	 <div class="sh_ArrayList">
							<div class="shop_div_img" data-name="${newItem.NAME}" data-filename="${newItem.filename}">
                         	  <img>
                       	    </div>
						 </div>	
					 </div>	
					 
					 <div class="sh_img_text">	
						<div class="sh_NAME">
							${newItem.NAME}
						</div>		
						
						<div class="sh_subcontent">
							${newItem.subcontent}
						</div>
						
						<div class="sh_discountprice">
							${newItem.discountprice}
						</div>
						
						<div class="sh_prodnum">
							<input type="hidden" value="${newItem.prodnum}">
						</div>
					</div>
				</a>
				</c:forEach>
			</div>
	</div>
	</div>
</div>
</body>
<%@ include file="../Footer/footer.jsp"%>
