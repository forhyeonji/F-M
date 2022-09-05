<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ordercancle</title>
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
				<img id="my_titleim" alt="취소" src="../../../resources/image/mypage/cancle.png">
				<p id="my_titlep">주문 취소</p></div>

			<div id="my_menu">
				<div><a href="http://localhost:8080/mypage">마이페이지</a></div>
				<div><a href="http://localhost:8080/notice">공지사항</a></div>
				<div><a href="http://localhost:8080/QnA">자주하는 질문</a></div>
				<div><a href="http://localhost:8080/directQue">1:1 문의</a></div>
			</div>
		</div><!-- my_side_left -->

		<div id="my_center">
			<h3 >취소 사유를 입력해주세요.</h3>
			<div>
				<label>주문날짜 8/1</label> <label>주문 번호 123456789</label>
			</div>
			<div id="my_ordercancle">
				<a href="http://localhost:8080/mypage/orderdetail">
				<table id="my_ordercancle_Tb">
					<tr>
						<td rowspan="3">상품 사진</td>
						<td>상품 이름(제목)</td>
					</tr>
					<tr><td>수량: 3</td></tr>
					<tr><td>금액 30,000</td></tr>
				</table></a>
			</div>
			<div>
				<table id="my_ordercancle_why">
					<tr>
						<td align="center"><input type="radio" name="cancle"
							value="단순 변심">단순 변심 <input type="radio" name="cancle"
							value="배송 지연">배송 지연 <br> <input type="radio"
							name="cancle" value="주문 실수">주문 실수 <input type="radio"
							name="cancle" value="서비스 불만족">서비스 불만족 <input type="radio"
							name="cancle" value="기타">기타</td>
					</tr>
					<tr>
					<td><textarea rows="10" cols="60" placeholder="상세사유를  입력해주세요."></textarea></td>
					</tr>
					<tr>
						<td><input type="submit" value="취소 신청"></td>
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