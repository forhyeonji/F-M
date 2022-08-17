<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>canclelist</title>
<link rel="stylesheet" href="../../../resources/CSS/mypage.css">
<link rel="stylesheet" href="../../../resources/CSS/header.css">
<link rel="stylesheet" href="../../../resources/CSS/footer.css">
</head>
<jsp:include page="../Header/Header.jsp"></jsp:include>
<body>
<div id="my_con">
	<div id="main">
		<div id="side_left" >
			<div><label id="my_title">❌취소 리스트❌</label></div>
			<div id="my_profile">
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
			<h3>❌❌❌주문 취소 내역을 확인하세여.</h3>
			<div>
				<label>취소완료 8/1</label>
			</div>
			<div class="order1" style="border: 1px solid;">
				<table style="width: 500px;">
					<tr>
						<td rowspan="3">
						<img src="../../../resources/image/lemon.jpg">
						<br>상품 사진(대표로 하나만)</td>
						<td>상품 이름(제목)</td>
						<td rowspan="3">
						<a href="http://localhost:8080/mypage/orderdetail">
						<input type="button" value="상세 보기"></a></td>
					</tr>
					<tr>
						<td>외 2품목</td>						
					</tr>
					<tr>
						<td>금액 80,000</td>
					</tr>
				</table>
			</div>
			<div>
				<label>취소 완료 7/25</label>
			</div>
			<div class="order1" style="border: 1px solid;">
				<table style="width: 500px;">
					<tr>
						<td rowspan="3">
						<img src="../../../resources/image/egg.jpg">
						<br>상품 사진(대표로 하나만)</td>
						<td>상품 이름(제목)</td>
						<td rowspan="3">
						<a href="http://localhost:8080/mypage/orderdetail">
						<input type="button" value="상세 보기"></a></td>
					</tr>
					<tr>
						<td>외 5품목</td>
					</tr>
					<tr>
						<td>금액 130,000</td>
						<td></td>
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