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
			<div><label id="my_title">주문 반품</label></div>
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
			<h3 align="center">반품 사유를 입력해주세요.</h3>
			<div>
				<label>주문날짜 8/1</label> <label>주문 번호 123456789</label>
			</div>			
			<div id="my_orderrefund">
				<a href="http://localhost:8080/mypage/orderdetail">
				<table id="my_orderrefund_Tb">			
					<tr>
						<td rowspan="3">상품 사진</td>
						<td>상품 이름(제목)</td>
					</tr>
					<tr><td>수량: 3</td></tr>
					<tr><td>금액 30,000</td></tr>
				</table>
				</a>
			</div>
			<div align="center">
				<table border="1" >
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
							<input type="radio"	name="cancle" value="미도착">상품 미도착 						
							<input type="radio"	name="cancle" value="불만족">배송 지연 및 상품품질 불만족</td>
					</tr>
					<tr><td><textarea rows="10" cols="70" placeholder="상세사유를  입력해주세요."></textarea></td>
					</tr>
					<tr>
						<td>사진을 첨부해주세요.<br>
						<input type="file" id="refundfile">
						<input type="submit" value="사진 제출"></td>
					</tr>
					<tr>
						<td><input type="submit" value="반품 신청"></td>
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