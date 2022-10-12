<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../Header/Header.jsp" %>


<!-- 슬라이드를 위한 코드 -->
<link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
<link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick-theme.css"/>
<script type="text/javascript" src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>

 
<link rel="stylesheet" href="../../../resources/CSS/Main_CSS/main.css">


<div id="main_outborder">

	<div class="sh_advertisement">
		<div class="slideadver">
			<div>
				<a href="/community">	
					<img src="../../../resources/image/main_image/bannerEx1.png" >
				</a>
			</div>
							
			<div>
				<a href="/mypage">	
					<img src="../../../resources/image/main_image/bannerEx2.png" >
				</a>
					</div>
							
			<div>
				<a href="/shop">	
					<img src="../../../resources/image/main_image/bannerEx3.png" >
				</a>
			</div>
		</div>				
	</div>

	<!-- <div class="slider slider-1">
	    <div id="clickplease" class="slides">
	        <div id = "first" class="active">
	        	<img class = "main_pic" src="../../../resources/image/main_image/reci.png">
	        </div>
	        <div id = "second" style="background-color:black;"></div>
	        <div id = "third" style="background-color:pink;"></div>
	    </div>
	    
	    <div class="main_slidepages">
	        <div class="active"></div>
	        <div></div>
	        <div></div>
	    </div>
	    
	    <div class="side-btns">
	        <div></div>
	        <div></div>
	    </div>
	</div> -->
	
	<br><br>
	<h2 id="sh_h2"><a href=""></a>이 상품을 찾으셨나요?</h2>
				<div class="main_slide_div">
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
			
				<br>
				<h2 id="sh_h2">오늘은 이런 상품이 들어왔어요</h2>
				<div class="main_slide_div">
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
	

<!-- <h2 id="main_h2">추천 상품</h2>	

	<div class="main_slide_div">
 		<c:forEach items="${ArrayList}" var="ArrayList">
			<a href="/shopDetail?prodnum=${ArrayList.prodnum}">
				<div class="main_img_div">
					<div class="main_ArrayList">
						<div class="main_div_img" data-name="${ArrayList.NAME}" data-filename="${ArrayList.filename}">
                        	<img>
                       	</div>
					</div>	
				</div>	
					 
				<div class="main_img_text">	
					<div class="main_NAME">
						${ArrayList.NAME}
					</div>		
						
					<div class="main_discountprice">
						${ArrayList.discountprice}
					</div>
						
					<div class="main_prodnum">
						<input type="hidden" value="${ArrayList.prodnum}">
					</div>
				</div>
			</a>
		</c:forEach>
	</div> 
	
	
<h2 id="main_h2">마감 임박</h2>
	
	<div class="main_slide_div">
 		<c:forEach items="${ArrayList}" var="ArrayList">
			<a href="/shopDetail?prodnum=${ArrayList.prodnum}">
				<div class="main_img_div">
					<div class="main_ArrayList">
						<div class="main_div_img" data-name="${ArrayList.NAME}" data-filename="${ArrayList.filename}">
                        	<img>
                       	</div>
					</div>	
				</div>	
					 
				<div class="main_img_text">	
					<div class="main_NAME">
						${ArrayList.NAME}
					</div>		
						
					<div class="main_discountprice">
						${ArrayList.discountprice}
					</div>
						
					<div class="main_prodnum">
						<input type="hidden" value="${ArrayList.prodnum}">
					</div>
				</div>
			</a>
		</c:forEach>
	</div>
	
<h2 id="main_h2">할인 상품</h2>
	
	<div class="main_slide_div">
 		<c:forEach items="${ArrayList}" var="ArrayList">
			<a href="/shopDetail?prodnum=${ArrayList.prodnum}">
				<div class="main_img_div">
					<div class="main_ArrayList">
						<div class="main_div_img" data-name="${ArrayList.NAME}" data-filename="${ArrayList.filename}">
                        	<img>
                       	</div>
					</div>	
				</div>	
					 
				<div class="main_img_text">	
					<div class="main_NAME">
						${ArrayList.NAME}
					</div>		
						
					<div class="main_discountprice">
						${ArrayList.discountprice}
					</div>
						
					<div class="main_prodnum">
						<input type="hidden" value="${ArrayList.prodnum}">
					</div>
				</div>
			</a>
		</c:forEach>
	</div>	-->		
			
</div>
	
	

<script src="/resources/JS/Main/main.js"></script>

<%@ include file="../Footer/footer.jsp"%>