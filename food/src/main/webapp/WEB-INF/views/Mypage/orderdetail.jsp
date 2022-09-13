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
					<img id="my_titleim" alt="상세보기"
						src="../../../resources/image/mypage/detail.png">
					<p id="my_titlep">상세보기</p>
				</div>

				<div id="my_menu">
					<div>
						<a href="http://localhost:8080/mypage">마이페이지</a>
					</div>
					<div>
						<a href="http://localhost:8080/notice">공지사항</a>
					</div>
					<div>
						<a href="http://localhost:8080/QnA">자주하는 질문</a>
					</div>
					<div>
						<a href="http://localhost:8080/directQue">1:1 문의</a>
					</div>
				</div>
			</div>
			<!-- my_side_left -->

			<div id="my_center">
				주문 번호별로 묶기 /// 상품별로 밑에 상품평 바로가기, 1:1 
				<div class="my_orderdetail">
					<table class="my_orderdetail_Tb">
						<tr>
							<td class="my_orderDate" colspan="3">주문날짜 8/1 <input
								type="hidden" value="1234-5678-9999"></td>
						<tr>
							<td class="my_orderImg" rowspan="3">상품 사진</td>
							<td>shop테이블의 name</td>
						</tr>
						<tr>
							<td>가격 <span>shop테이블 price2</span></td>
						</tr>
						<tr>
							<td>수량<span>shop테이블 수량???</span></td>
						</tr>
						<tr class="my_orderTb">
							<td colspan="3">
							<a href="http://localhost:8080/mypage/shopPurchase">
							<input type="button" value="상품평 쓰러가요"></a>
							<a href="http://localhost:8080/directQue">
							<input type="button" value="1:1 문의"></a></td>
						</tr>

						<tr></tr>
						<tr>
							<td class="my_orderImg" rowspan="3">상품 사진</td>
							<td>shop테이블의 name</td>
						</tr>
						<tr>
							<td>가격 <span>shop테이블 price2</span></td>
						</tr>
						<tr>
							<td>수량<span>shop테이블 수량???</span></td>
						</tr>
						<tr class="my_orderTb">
							<td colspan="3">
							<a href="http://localhost:8080/mypage/shopPurchase">
							<input type="button" value="상품평 쓰러가요"></a>
							<a href="http://localhost:8080/directQue">
							<input type="button" value="1:1 문의"></a></td>
						</tr>

						<tr></tr>
						<tr>
							<td class="my_orderImg" rowspan="3">상품 사진</td>
							<td>shop테이블의 name</td>
						</tr>
						<tr>
							<td>가격 <span>shop테이블 price2</span></td>
						</tr>
						<tr>
							<td>수량<span>shop테이블 수량???</span></td>
						</tr>
						<tr class="my_orderTb">
							<td colspan="3">
							<a href="http://localhost:8080/mypage/shopPurchase">
							<input type="button" value="상품평 쓰러가요"></a>
							<a href="http://localhost:8080/directQue">
							<input type="button" value="1:1 문의"></a></td>
						</tr>
					</table>
				</div>
				<!-- my_orderdetail -->

				<div id="my_orderdetail_pay">
					<table>
						<tr>
							<td class="my_orderdetailTB">총 합계</td>
							<td>(정가)100,000원</td>
						</tr>
						<tr>
							<td class="my_orderdetailTB">할인 금액</td>
							<td>2,000원</td>
						</tr>
						<tr>
							<td class="my_orderdetailTB">최종 결제 금액</td>
							<td>80,000원</td>
						</tr>
						<tr>
							<td class="my_orderdetailTB">결제 정보</td>
							<td>KB카드 1234-5678-9***-***0</td>
						</tr>
					</table>
				</div>
			</div>
			<!-- my_center -->

			<div id="my_side_right"></div>

		</div>
		<!-- my_main -->
	</div>
	<!-- my_con -->
</body>
<jsp:include page="../Footer/footer.jsp"></jsp:include>
</html>