<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>cart</title>
<link rel="stylesheet" href="../../../resources/CSS/mypage.css">
<link rel="stylesheet" href="../../../resources/CSS/footer.css">
</head>
<body>
<div id="container">
	<header>
		<h1>food</h1>
		<p>다른 메뉴는 메인페이지 따라갈게요</p>
	</header>
	
	<div id="main">
		<div id="side_left" >
			<div><label id="page_title">🛒장바구니🛒</label></div>
			<div id="profile">
				<div><img src="../../../resources/image/profile/profile01.jpeg"></div>
				<div><span id="id">회원id 님</span><br>
				<a href="http://localhost:8080/mypage/profile_edit">
					<input type="button" value="회원정보 수정"></a></div>
			</div>
			<div id="notice">
				<div><a href="http://localhost:8080/notice">▷ 공지사항</a></div>
				<div><a href="http://localhost:8080/QnA">▷ 자주하는 질문</a></div>
				<div><a href="http://localhost:8080/directQue">▷ 1:1 문의</a></div>
			</div>
		</div><!-- side_left -->

		<div id="center">
			<h3>🛒🛒🛒장바구니에 담긴 상품들을 확인하세요!</h3><br>
			<div class="check">
				<input type="checkbox" checked> 전체 선택
				<input type="button" value="선택 삭제">			
			</div>
			<div id="cart1" align="center">
			<table border="1">
				<tr>
					<td><input type="checkbox" checked></td>
					<td><img src="../../../resources/image/lemon.jpg"></td>
					<td>상품 이름 / 어쩌구 레몬</td>
					<td>수량 1</td><td>가격 5000</td>
				</tr>
				<tr>
					<td><input type="checkbox" checked></td>
					<td><img src="../../../resources/image/chicken.jpg"></td>
					<td>상품 이름 / 어쩌구</td>
					<td>수량 1</td><td>가격 4000</td>
				</tr>	
				<tr>
					<td><input type="checkbox" checked></td>
					<td><img src="../../../resources/image/egg.jpg"></td>
					<td>상품 이름 / 어쩌구</td>
					<td>수량 1</td><td>가격 15000</td>
				</tr>	
				<tr>
					<td><input type="checkbox" checked></td>
					<td><img src="../../../resources/image/granate.jpg"></td>
					<td>상품 이름 / 어쩌구 </td>
					<td>수량 1</td><td>가격 2000</td>
				</tr>					
			</table>
			</div>
			<div class="check">
				<input type="checkbox" checked> 전체 선택
				<input type="button" value="선택 삭제">			
			</div>
			<div id="order" align="center">
				<input type="submit" value="👉주문하기👈" style="font-size:30px"> 
			</div>
			<br>
			<div id="cart2" align="center"> 
			<table border="1">
				<tr>
					<th>합계</th><td>26,000원</td>
				</tr>
				<tr>	
					<th>할인 금액</th><td>2,000원</td>
				</tr>
				<tr>			
					<th>배송비</th>
					<td>3,000원<p>30,000원 이상 주문 시, 무료배송</p></td>
				</tr>
				<tr>			
					<th>결제 예정 금액</th>
					<td>27,00원<p>(=합계-할인금액+배송비)</p></td>
				</tr>		
			</table>
			</div>

				
				
		</div><!-- center -->
		<div id="go_watched" style="border:1px solid;">
			<h3>최근 본 상품</h3>
			<div id="go_watched1" style="width:130px;height:100px;border:1px solid;">상품1</div>
			<div id="go_watched2" style="width:130px;height:100px;border:1px solid;">상품2</div>
			<div id="go_watched3" style="width:130px;height:100px;border:1px solid;">상품3</div>
		</div>
	</div><!-- main -->	

</div><!-- container -->
</body>
<jsp:include page="../Footer/footer.jsp"></jsp:include>
</html>