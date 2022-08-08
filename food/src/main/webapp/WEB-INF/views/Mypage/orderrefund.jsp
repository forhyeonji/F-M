<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>order refund</title>
<style type="text/css">
container {
	display: flex;
	justify-content: center;
}

div {
	margin: 5px;
}

header {
	text-align: center;
}
</style>
</head>
<body>
<header>
	<h1>food</h1>
	<p>다른 메뉴는 메인페이지 따라갈게요</p>
</header>

<container>
	<div id="side_left">
		<table border="1">
			<tr>
				<td colspan="2">주문 반품</td>
			</tr>
			<tr>
				<td rowspan="2">프로필사진</td>
				<td>회원 id 님</td>
			</tr>
			<tr>
				<td colspan="2"><input type="button" value="회원정보 수정"></td>
			</tr>
			<tr>
				<td colspan="2">
					<ul>
						<li>공지사항</li>
						<li>자주하는 질문</li>
						<li>1:1 문의</li>
					</ul>
				</td>
			</tr>

		</table>
	</div>
	<div id="orderrefund">
		<h3 align="center">반품 사유를 입력해주세요.</h3>
		<div>
			<label>주문날짜 8/1</label> <label>주문 번호 123456789</label>
		</div>
		<div style="border: 1px solid;">
			<table style="width: 500px;">
				<tr>
					<td rowspan="3">상품 사진</td>
					<td>상품 이름(제목)</td>
					<td rowspan="3"></td>
				</tr>
				<tr>
					<td>수량: 3</td>
				</tr>
				<tr>
					<td>금액 30,000</td>
				</tr>
			</table>
		</div>
		<div align="center">
			<table border="1" style="width: 500px;">
				<tr>
					<th>구매자가 반품배송비 부담</th>
				</tr>
				<tr>
					<td>
						<input type="radio" name="cancle" value="구매하고 싶지 않음">구매하고 싶지 않음
						<input type="radio" name="cancle" value="옵션 잘못 선택">옵션 잘못 선택함</td>
				<tr>
					<th>판매자가 반품배송비 부담</th>
				</tr>
				<tr>
					<td>
						<input type="radio"	name="cancle" value="상품파손/하자/불량">배송된 상품 파손/하자/불량 
						<input type="radio"	name="cancle" value="미도착">상품 미도착 						<input type="radio"	name="cancle" value="불만족">배송 지연 및 상품품질 불만족</td>
				</tr>
				<td><textarea rows="10" cols="60" placeholder="상세사유를  입력해주세요."></textarea></td>
				<tr>
					<td>사진을 첨부해주세요.<br>
					<input type="file" id="refundfile"><input type="submit"></td>
				</tr>
				<tr>
					<td><input type="submit" value="반품 신청"></td>
				</tr>
			</table>
		</div>
	</div>
	<div id="go_watched" style="border: 1px solid;">
		<h3>최근 본 상품</h3>
		<div id="go_watched1"
			style="width: 130px; height: 100px; border: 1px solid;">상품1</div>
		<div id="go_watched2"
			style="width: 130px; height: 100px; border: 1px solid;">상품2</div>
		<div id="go_watched3"
			style="width: 130px; height: 100px; border: 1px solid;">상품3</div>
	</div>
</container>

<footer>
	<p>회사소개</p>
</footer>

</body>
</html>