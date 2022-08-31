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
			<div><label id="my_title">주문 정보</label></div>
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
		</div><!-- my_side_left -->
		
		<div id="my_center">
			<div class="my_order1">
				<table>
					<label>주문날짜 8/1</label>
					<tr>
						<td rowspan="3">상품 사진</td>
						<td>상품 이름(제목)</td>
						<td>
						<a href="http://localhost:8080/mypage/orderdetail">
						<input type="button" value="상세 보기"></a></td>
					</tr>
					<tr>
						<td>외 2품목</td>
						<td>
						<a href="http://localhost:8080/mypage/delivery">
						<input type="button" value="배송 조회"></a></td>
					</tr>
					<tr>
						<td>금액 80,000</td>
						<td>
						<a href="http://localhost:8080/mypage/ordercancle">
						<input type="button" value="취소"></a>
						<a href="http://localhost:8080/mypage/orderrefund">
						<input type="button" value="반품"></a></td>
					</tr>
				</table>
			</div>
			<div class="my_order1">
				<table>
					<label>주문날짜 7/25</label>
					<tr>
						<td rowspan="3">상품 사진</td>
						<td>상품 이름(제목)</td>
						<td><a href="http://localhost:8080/mypage/orderdetail">
						<input type="button" value="상세 보기"></a></td>
					</tr>
					<tr>
						<td>외 5품목</td>
						<td>
						<a href="http://localhost:8080/mypage/delivery">
						<input type="button" value="배송 완료"></a></td>
					</tr>
					<tr>
						<td>금액 130,000</td>
						<td></td>
					</tr>
				</table>
			</div>
			<div class="my_order1">
				<table>
					<label>주문날짜 7/13</label>
					<tr>
						<td rowspan="3">상품 사진</td>
						<td>상품 이름(제목)</td>
						<td><a href="http://localhost:8080/mypage/orderdetail">
						<input type="button" value="상세 보기"></a></td>
					</tr>
					<tr>
						<td>외 1품목</td>
						<td><a href="http://localhost:8080/mypage/delivery">
						<input type="button" value="배송 완료"></a></td>
					</tr>
					<tr>
						<td>금액 40,000</td>
						<td></td>
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