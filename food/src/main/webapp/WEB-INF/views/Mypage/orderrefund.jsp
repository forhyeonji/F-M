<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>order refund</title>
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
					<img id="my_titleim" alt="반품"
						src="../../../resources/image/mypage/refund.png">
					<p id="my_titlep">반품 신청</p>
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

				<div id="my_orderrefund">
					<a href="http://localhost:8080/mypage/orderlist">
						<table id="my_orderrefund_Tb">
							<tr>
								<td id="my_refundDetail" colspan="2">
									<label>주문날짜 8/1</label>
									<label style="display:none">주문 번호 123456789</label>
								</td>
							</tr>
							<tr>
								<td class="my_orderImg" rowspan="3"><img
									class="my_orderImg" alt="상품사진"
									src="../../../resources/image/lemon.jpg"></td>
								<td>shop테이블의 name</td>
							</tr>
							<tr>
								<td>가격 <span>shop테이블 price2</span></td>
							</tr>
							<tr>
								<td>수량<span>shop테이블 수량???</span></td>
							</tr>
						</table>
					</a>

				</div>
				<div>
					<h3>반품 사유를 입력해주세요.👈👈</h3>
					<table id="my_orderrefund_why">
						<tr>
							<td class="my_refundOpt">😣<i>구매자</i>😣가 반품배송비 부담</td>
						</tr>
						<tr>
							<td><select>
									<option value="단순변심">구매하고 싶지 않음(단순변심)</option>
									<option value="잘못선택">옵션 잘못 선택함</option>
							</select></td>
						<tr>
							<td class="my_refundOpt">😲<i>판매자</i>😲가 반품배송비 부담</td>
						</tr>
						<tr>
							<td><select>
									<option value="파손">배송된 상품 파손/하자/불량</option>
									<option value="미도착">상품 미도착</option>
									<option value="지연">배송지연</option>
									<option value="불만족">상품품질 불만족</option>
							</select></td>
						</tr>
						<tr>
							<td><textarea rows="10" cols="80"
									placeholder="상세사유를  입력해주세요."></textarea></td>
						</tr>
						<tr>
							<td><input type="submit" value="반품 신청"></td>
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