<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>orderdetail</title>
<link rel="stylesheet" href="../../../resources/CSS/mypage.css">
<link rel="stylesheet" href="../../../resources/CSS/header.css">
<link rel="stylesheet" href="../../../resources/CSS/footer.css">
</head>
<jsp:include page="../Header/Header.jsp"></jsp:include>
<body>
<div id="my_con">	
	<div id="my_main">
	
		<div id="my_side_left">
			<div id="my_title">
				<img id="my_titleim" alt="상세보기" src="../../../resources/image/mypage/detail.png">
				<p id="my_titlep">상세보기</p></div>

			<div id="my_menu">
				<div><a href="http://localhost:8080/mypage">마이페이지</a></div>
				<div><a href="http://localhost:8080/notice">공지사항</a></div>
				<div><a href="http://localhost:8080/QnA">자주하는 질문</a></div>
				<div><a href="http://localhost:8080/directQue">1:1 문의</a></div>
			</div>
		</div><!-- my_side_left -->

		<div id="my_center" >
			<div>
				<a href="http://localhost:8080/mypage/ordercancle">
				<button>취소</button></a>
				<a href="http://localhost:8080/mypage/orderrefund">
				<button>반품</button></a>
				<input type="hidden" value="1234-5678-9999">
				<a href="http://localhost:8080/mypage/delivery">
				<button>배송조회</button></a>
			</div>
			<div class="my_orderdetail">
				<table class="my_orderdetail_Tb">
					<tr>
						<td>주문날짜 8/1</td>
						<td>주문번호 1234-5678-9999</td>
					<tr>
						<td rowspan="3">상품 사진</td>
						<td>상품 이름(제목)</td>
						<td rowspan="3"><input type="button" value="상품평"></td>
					</tr>
					<tr>
						<td>수량: 3</td>
					</tr>
					<tr>
						<td>금액 30,000</td>
					</tr>		
				</table>
			</div>
			<div class="my_orderdetail">
				<table class="my_orderdetail_Tb">
					<tr>
						<td>주문날짜 8/1</td>
						<td>주문번호 1234-5678-9999</td>
					<tr>
					<tr>
						<td rowspan="3">상품 사진</td>
						<td>상품 이름(제목)</td>
						<td rowspan="3"><input type="button" value="상품평"></td>
					</tr>
					<tr>
						<td>수량: 1</td>
					</tr>
					<tr>
						<td>금액 50,000</td>
					</tr>		
				</table>
			</div>	
			<div id="my_orderdetail_pay">
				<table>
					<tr>
						<td>총 합계</td><td>(정가)100,000원</td>
					</tr>
					<tr>	
						<td>할인 금액</td><td>2,000원</td>
					</tr>
					<tr>			
						<td>최종 결제 금액</td><td>80,000원</td>
					</tr>
					<tr>			
						<td>결제 정보</td><td>KB카드 1234-5678-9***-***0</td>
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