<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../Header/Header.jsp" %>
 
<link rel="stylesheet" href="../../../resources/CSS/Main_CSS/main.css">


<div id="main_outborder">

	<div class="slider slider-1">
	    <div class="slides">
	        <div class="active" style="background-color:red;"></div>
	        <div style="background-color:blue;"></div>
	        <div style="background-color:green;"></div>
	        <div style="background-color:gold;"></div>
	    </div>
	    
	    <div class="main_slidepages">
	        <div class="active"></div>
	        <div></div>
	        <div></div>
	        <div></div>
	    </div>
	    
	    <div class="side-btns">
	        <div></div>
	        <div></div>
	    </div>
	</div>

	
	<div>
		<div>
			<a href="?"><h2 class="main_display_expl">이건 밑의 추천 레시피 자리</h2></a>
		</div>
		<div class="main_display">
			<div>
				<div class="main_pic">
					<img src="../../../resources/image/main_image/main_main_ex1.png">
				</div>
				<div>
					<p>색종이</p>
					<p>20만원</p>
				</div>
			</div>
			<div>
				<div class="main_pic">
					<img src="../../../resources/image/main_image/main_main_ex1.png">
				</div>
				<div>
					<p>고등어</p>
					<p>50원</p>
				</div>
			</div>
			<div>
				<div class="main_pic">
					<img src="../../../resources/image/main_image/main_main_ex1.png">
				</div>
				<div>
					<p>컴퓨터</p>
					<p>7천원</p>
				</div>
			</div>
			<div>
				<div class="main_pic">
					<img src="../../../resources/image/main_image/main_main_ex1.png">
				</div>	
				<div>
					<p>생수</p>
					<p>3만원</p>
				</div>
			</div>
		</div>
	</div>
	
	<div>
		<div>
			<a href="?"><h2 class="main_display_expl">이건 추천 상품 자리</h2></a>
		</div>
		<div class="main_display">
			<div>
				<div class="main_pic">
					<img src="../../../resources/image/main_image/main_main_ex1.png">
				</div>
				<div>
					<p>색종이</p>
					<p>20만원</p>
				</div>
			</div>
			<div>
				<div class="main_pic">
					<img src="../../../resources/image/main_image/main_main_ex1.png">
				</div>
				<div>
					<p>고등어</p>
					<p>50원</p>
				</div>
			</div>
			<div>
				<div class="main_pic">
					<img src="../../../resources/image/main_image/main_main_ex1.png">
				</div>
				<div>
					<p>컴퓨터</p>
					<p>7천원</p>
				</div>
			</div>
			<div>
				<div class="main_pic">
					<img src="../../../resources/image/main_image/main_main_ex1.png">
				</div>
				<div>
					<p>생수</p>
					<p>3만원</p>
				</div>
			</div>
		</div>
	</div>
	
	<div>
		<div>
			<a href="?"><h2 class="main_display_expl">이건 할인&마감 직전 상품 자리</h2></a>
		</div>
		<div class="main_display">
			<div>
				<div class="main_pic">
					<img src="../../../resources/image/main_image/main_main_ex1.png">
				</div>
				<div>
					<p>색종이</p>
					<p>20만원</p>
				</div>
			</div>
			<div>
				<div class="main_pic">
					<img src="../../../resources/image/main_image/main_main_ex1.png">
				</div>
				<div>
					<p>고등어</p>
					<p>50원</p>
				</div>
			</div>
			<div>
				<div class="main_pic">
					<img src="../../../resources/image/main_image/main_main_ex1.png">
				</div>
				<div>
					<p>컴퓨터</p>
					<p>7천원</p>
				</div>
			</div>
			<div>
				<div class="main_pic">
					<img src="../../../resources/image/main_image/main_main_ex1.png">
				</div>
				<div>
					<p>생수</p>
					<p>3만원</p>
				</div>
			</div>
		</div>
	</div>
	
	<div>
		<div>
			<a href="?"><h2 class="main_display_expl">이런 식으로 상품 구성에 따라 이어갈 생각</h2></a>
		</div>
		<div class="main_display">
			<div>
				<div class="main_pic">
					<img src="../../../resources/image/main_image/main_main_ex1.png">
				</div>
				<div>
					<p>색종이</p>
					<p>20만원</p>
				</div>
			</div>
			<div>
				<div class="main_pic">
					<img src="../../../resources/image/main_image/main_main_ex1.png">
				</div>
				<div>
					<p>고등어</p>
					<p>50원</p>
				</div>
			</div>
			<div>
				<div class="main_pic">
					<img src="../../../resources/image/main_image/main_main_ex1.png">
				</div>
				<div>
					<p>컴퓨터</p>
					<p>7천원</p>
				</div>
			</div>
			<div>
				<div class="main_pic">
					<img src="../../../resources/image/main_image/main_main_ex1.png">
				</div>
				<div>
					<p>생수</p>
					<p>3만원</p>
				</div>
			</div>
		</div>
	</div>
	
	
	
	
<h2 id="main_h2">[추천 상품]</h2>
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
						
					<div class="main_subcontent">
						${ArrayList.subcontent}
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
			
			
			
			
	
	
	
	

<script src="/resources/JS/Main/main.js"></script>

<%@ include file="../Footer/footer.jsp"%>