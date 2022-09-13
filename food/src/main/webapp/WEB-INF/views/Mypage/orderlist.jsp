<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>orderlist</title>
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
				<img id="my_titleim" alt="주문내역" src="../../../resources/image/mypage/list.png">
				<p id="my_titlep">주문내역</p></div>
			<div id="my_menu">
				<div><a href="http://localhost:8080/mypage">마이페이지</a></div>			
				<div><a href="http://localhost:8080/notice">공지사항</a></div>
				<div><a href="http://localhost:8080/QnA">자주하는 질문</a></div>
				<div><a href="http://localhost:8080/directQue">1:1 문의</a></div>
			</div>
		</div><!-- my_side_left -->
		
		<div id="my_center">
			<h3>주문내역을 확인하세요~😁😁</h3>
			<div class="my_order1">				
<!-- 주문날짜별로 나누고, 상품별로 하나씩 생성 -->					
				<table>
					<tr>				
						<td class="my_orderDate" colspan="3">주문날짜 8/1
						<input type="hidden" value="1234-5678-9999"></td>
					</tr>
					<tr>
						<td class="my_orderTb" rowspan="3"><img class="my_orderImg" alt="상품사진" src="../../../resources/image/egg.jpg"></td>
						<td>shop테이블의 name</td>
						<td class="my_orderTb">
						<a href="http://localhost:8080/mypage/orderdetail">
						<input type="button" value="상세 보기"></a></td>
					</tr>
					<tr>
						<td>shop테이블의 content</td>
						<td class="my_orderTb"><a href="http://localhost:8080/mypage/delivery">
						<input type="button" value="배송 조회"></a></td>
					</tr>
					<tr>
						<td>가격 <span>shop테이블 price2</span>
							/ 수량<span>shop테이블 수량???</span></td>
						<td class="my_orderTb">
						<a href="http://localhost:8080/mypage/ordercancle">
						<input type="button" value="취소"></a>
						<a href="http://localhost:8080/mypage/orderrefund">
						<input type="button" value="반품"></a></td>
					</tr>
				</table>

				<table>
					<tr>				
						<td class="my_orderDate" colspan="3">주문날짜 8/1
						<input type="hidden" value="1234-5678-9999"></td>
					</tr>
					<tr>
						<td class="my_orderTb" rowspan="3"><img class="my_orderImg" alt="상품사진" src="../../../resources/image/chicken.jpg"></td>
						<td>shop테이블의 name</td>
						<td class="my_orderTb">
						<a href="http://localhost:8080/mypage/orderdetail">
						<input type="button" value="상세 보기"></a></td>
					</tr>
					<tr>
						<td>shop테이블의 content</td>
						<td class="my_orderTb"><a href="http://localhost:8080/mypage/delivery">
						<input type="button" value="배송 조회"></a></td>
					</tr>
					<tr>
						<td>가격 <span>shop테이블 price2</span>
							/ 수량<span>shop테이블 수량???</span></td>
						<td class="my_orderTb">
						<a href="http://localhost:8080/mypage/ordercancle">
						<input type="button" value="취소"></a>
						<a href="http://localhost:8080/mypage/orderrefund">
						<input type="button" value="반품"></a></td>
					</tr>
				</table>								
			</div>
			
			<div class="my_order1">
				<table>
					<tr>				
						<td class="my_orderDate" colspan="3">주문날짜 7/25
						<input type="hidden" value="1234-5678-9999"></td>
					</tr>
					<tr>
						<td class="my_orderTb" rowspan="3"><img class="my_orderImg" alt="상품사진" src="../../../resources/image/lemon.jpg"></td>
						<td>shop테이블의 name</td>
						<td class="my_orderTb">
						<a href="http://localhost:8080/mypage/orderdetail">
						<input type="button" value="상세 보기"></a></td>
					</tr>
					<tr>
						<td>shop테이블의 content</td>
						<td class="my_orderTb"><a href="http://localhost:8080/mypage/delivery">
						<input type="button" value="배송 조회"></a></td>
					</tr>
					<tr>
						<td>가격 <span>shop테이블 price2</span>
							/ 수량<span>shop테이블 수량???</span></td>
						<td class="my_orderTb">
						<a href="http://localhost:8080/mypage/shopPurchase">
						<input type="button" value="상품평"></a>
						</td>
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