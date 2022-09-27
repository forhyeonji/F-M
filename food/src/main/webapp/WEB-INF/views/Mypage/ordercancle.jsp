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

<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="../../../resources/JS/Mypage/ordercancle.js" charset="utf-8"></script>
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
				<div><a href="/mypage">마이페이지</a></div>
				<div><a href="/notice">공지사항</a></div>
				<div><a href="/QnA">자주하는 질문</a></div>
				<div><a href="/directQue">1:1 문의</a></div>
			</div>
		</div><!-- my_side_left -->

		<div id="my_center">	
			<div id="my_ordercancle">			
				<table id="my_ordercancle_Tb" onclick="location.href='/mypage/orderlist'">
					<tr>
						<td id="my_cancleDetail" colspan="2">
							<label>주문날짜 ${canclePage.o_date}</label>
							<label style="display:none">주문 번호 ${canclePage.o_no}</label>
						</td>
					</tr>				
					<tr>
						<td class="my_orderImg" rowspan="3">
						<img class="my_orderImg" alt="상품사진" src=""></td>
						<td>${canclePage.s_name}</td>
					</tr>
					<tr>
						<td>수량<span>${canclePage.o_cnt}</span></td>
					</tr>
					<tr>
						<td>가격<span>${canclePage.o_sum}</span></td>
					</tr>
				</table>
			</div>
	
			<div id="my_canclePage">				
				
				<table id="my_ordercancle_why">
					<tr>
						<td><h4>취소 사유를 입력해주세요.😢😢</h4>	</td>
					</tr>
					<tr>
						<td id="my_ordercancleOpt">
						<select name="o_opt">
							<option value="simple">단순 변심</option>							
							<option value="mistake">주문 실수</option>
							<option value="delay">배송 지연</option>
							<option value="broken">배송된 상품 파손/하자/불량</option>
							<option value="noshipping">상품 미도착</option>
							<option value="notgood">서비스 불만족</option>
							<option value="etc">기타</option>
						</select>
						</td>
					</tr>				
					<tr>
					<td><textarea rows="10" cols="80" placeholder="상세사유를  입력해주세요." id="canclewhy" name="o_canclewhy" ></textarea></td>
					</tr>
					<tr>
						<td>
						<input type="hidden" name="o_no" value="${canclePage.o_no}">
						<input type="submit" id="my_cancleBtn" value="취소 신청"></td>
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