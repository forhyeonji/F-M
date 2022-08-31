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
</head>
<jsp:include page="../Header/Header.jsp"></jsp:include>
<body>
<div id="my_con">
	<div id="my_main">
	
		<div id="my_side_left" >
			<div><label id="my_title">🛒장바구니🛒</label></div>
			<div id="my_profile">
				<div><img src="../../../resources/image/profile/profile01.jpeg"></div>
				<div><span id="my_id">회원id 님</span><br>
					<a href="http://localhost:8080/mypage/profile_edit">
					<input type="button" value="회원정보 수정"></a></div>
			</div>
			<div id="my_notice">
				<div><a href="http://localhost:8080/notice">공지사항</a></div>
				<div><a href="http://localhost:8080/QnA">자주하는 질문</a></div>
				<div><a href="http://localhost:8080/directQue">1:1 문의</a></div>
			</div>
		</div><!-- side_left -->

		<div id="my_center">
			<h3>🛒🛒🛒장바구니에 담긴 상품들을 확인하세요!</h3><br>
			<div class="my_check">
				<input type="checkbox" checked> 전체 선택
				<input type="button" value="선택 삭제">			
			</div>
			<div id="my_cartlist">
				<table>
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
			<div class="my_check">
				<input type="checkbox" checked> 전체 선택
				<input type="button" value="선택 삭제">			
			</div>
			<div id="my_cartorder">
				<input type="submit" value="👉주문하기👈" style="font-size:30px"> 
			</div>
			<br>
			<div id="my_cartpay" > 
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
		</div><!-- my_center -->
		
		<div id="my_side_right"></div>
		
	</div><!-- my_main -->	
</div><!-- my_con -->
</body>
<jsp:include page="../Footer/footer.jsp"></jsp:include>
</html>