<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>cart</title>
<link rel="stylesheet" href="../../../resources/CSS/mypage.css">
<link rel="stylesheet" href="../../../resources/CSS/header.css">
<link rel="stylesheet" href="../../../resources/CSS/footer.css">

<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="../../../resources/JS/Mypage/cart.js" charset="utf-8"></script>
<script src="../../../resources/JS/Mypage/order.js" charset="utf-8"></script>
</head>
<jsp:include page="../Header/Header.jsp"></jsp:include>
<body>
<div id="my_con">
	<div id="my_main">
		
		<div id="my_side_left" >
			<div id="my_title">
				<img id="my_titleim" alt="장바구니" src="../../../resources/image/mypage/cart.png">
				<p id="my_titlep">장바구니</p></div>
			<div id="my_menu">
				<div><a href="http://localhost:8080/mypage">마이페이지</a></div>
				<div><a href="http://localhost:8080/notice">공지사항</a></div>
				<div><a href="http://localhost:8080/QnA">자주하는 질문</a></div>
				<div><a href="http://localhost:8080/directQue">1:1 문의</a></div>
			</div>
		</div><!-- side_left -->
	<input type="hidden" name="user" value="${sessionScope.user_id }">
		<div id="my_center">
			
			<div id="my_cart">
				<div id="my_cartIn">
					<h3>🛒🛒🛒장바구니에 담긴 상품들을 확인하세요!</h3>
					<div class="my_allcheck">
						<input type="checkbox" checked name="my_allcheck" id="my_allck">
						<label for="my_allcheck">전체 선택</label>
						<button id="my_selectdelBtn">선택 삭제</button>
					</div>					
				</div>
				<div id="my_cartIn2">
				</div>				
			</div>
			<br>
			<div id="my_cartpay" > 
				<table id="my_cartpay_Tb">
		
				</table>
			</div>

			
		</div><!-- my_center -->
		
		<div id="my_side_right"></div>		
	</div><!-- my_main -->	
</div><!-- my_con -->
</body>
<jsp:include page="../Footer/footer.jsp"></jsp:include>
</html>