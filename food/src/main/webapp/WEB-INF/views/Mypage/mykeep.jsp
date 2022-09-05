<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>찜한 상품 mykeep</title>
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
				<img id="my_titleim" alt="찜한상품" src="../../../resources/image/mypage/like.png">
				<p id="my_titlep">찜한상품</p></div>

			<div id="my_menu">
				<div><a href="http://localhost:8080/mypage">마이페이지</a></div>
				<div><a href="http://localhost:8080/notice">공지사항</a></div>
				<div><a href="http://localhost:8080/QnA">자주하는 질문</a></div>
				<div><a href="http://localhost:8080/directQue">1:1 문의</a></div>
			</div>
		</div><!-- side_left -->

		<div id="my_center">
			<h3>내가 찜💕한 상품😘😘</h3>
			<div class="my_check">
				<input type="checkbox" checked> 전체 선택
				<input type="button" value="선택 삭제">
				<input type="button" value="장바구니 담기">		
			</div>
			<div class="my_keep">
				<table>					
					<tr>
						<td rowspan="3"><input type="checkbox" checked></td>
						<td rowspan="3">
							<img src="../../../resources/image/lemon.jpg">상품 사진
						<td>상품 이름</td>
						<td rowspan="3">
							<a href="http://localhost:8080/mypage/orderdetail">
							<input type="button" value="상세 보기"></a><br>
							<input type="button" value="삭제하기"></td>
					</tr>
					<tr>
						<td>수량 3</td>						
					</tr>
					<tr>
						<td>금액 80,000</td>
					</tr>
				</table>
			</div>
			<div class="my_keep">
				<table>
					<tr>
						<td rowspan="3"><input type="checkbox" checked></td>
						<td rowspan="3">
							<img src="../../../resources/image/egg.jpg">상품 사진
						<td>상품 이름</td>
						<td rowspan="3">
							<a href="http://localhost:8080/mypage/orderdetail">
							<input type="button" value="상세 보기"></a><br>
							<input type="button" value="삭제하기"></td>
					</tr>
					<tr>
						<td>수량 5</td>						
					</tr>
					<tr>
						<td>금액 30,000</td>
					</tr>					
				</table>
			</div>
			<div class="my_check">
				<input type="checkbox" checked> 전체 선택
				<input type="button" value="선택 삭제">
				<input type="button" value="장바구니 담기">				
			</div>	
		</div><!-- my_center -->
		
		<div id="my_side_right"></div>
		
	</div><!-- my_main -->	
</div><!-- my_con -->
</body>
<jsp:include page="../Footer/footer.jsp"></jsp:include>
</html>