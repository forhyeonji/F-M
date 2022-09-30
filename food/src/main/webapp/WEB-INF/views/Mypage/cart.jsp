<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>cart</title>
<link rel="stylesheet" href="../../../resources/CSS/mypage.css">
<link rel="stylesheet" href="../../../resources/CSS/header.css">
<link rel="stylesheet" href="../../../resources/CSS/footer.css">

<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="../../../resources/JS/Mypage/cart.js" charset="utf-8"></script>
<script src="../../../resources/JS/Mypage/order.js" charset="utf-8"></script>
</head>
<jsp:include page="../Header/Header.jsp"></jsp:include>
<body>
<div id="my_con">
	<div id="my_main">
		
		<div id="my_side_left" >
			<div id="my_title">
				<img id="my_titleim" alt="장바구니" src="../../../resources/image/mypage/cart.png">
				<p id="my_titlep">장바구니</p></div>
			<div id="my_menu">
				<div><a href="/mypage">마이페이지</a></div>
				<div><a href="/notice">공지사항</a></div>
				<div><a href="/QnA">자주하는 질문</a></div>
				<div><a href="/directQue">1:1 문의</a></div>
			</div>
		</div><!-- side_left -->
	<input type="hidden" name="user" value="${sessionScope.user_id }">
		<div id="my_center">
			
			<div id="my_cart">
				<div id="my_cartIn">
					<h5>🛒🛒🛒장바구니에 담긴 상품들을 확인하세요!</h5>
					<div class="my_allcheck">
						<input type="checkbox" checked name="my_allcheck" id="my_allck">
						<label for="my_allcheck">전체</label>
						<button id="my_selectdelBtn">선택 상품 삭제</button>
					</div>					
				</div>
				<div id="my_cartIn2">
				</div>				
			</div>

<!-- 
			<table id="my_cartlist">
				<tr id="my_tableHead"><td colspan="3">상품</td><td>수량</td><td>상품별 합계</td><td></td></tr>
			<c:forEach items="${cartlist}" var="cartlist">
				<tr>
					<td><input type="checkbox" checked name="my_onecheck" class="my_oneck" value="${cartlist.c_no}"></td>
					<td><img id="my_orderImg+${cartlist.c_no}" alt="${cartlist.c_no}" src="/Shopdisplay?fileName=${cartlist.filename}"></td>	
					<td>${cartlist.s_name}<br><span id="my_cartCon">${cartlist.s_content}</span></td>	
					<td><input type="text" id="my_cntnow+${cartlist.c_no}" class="my_cnt" value="${cartlist.c_cnt}">
						<input type="button" id="my_cntmodify" value="수정"></td>
					<td><span id="my_sum+${cartlist.c_no }">${cartlist.c_sumprod}</span> 원</td>
					<td><input class="my_cartOne" type="button" value="주문하기"><br>
						<input class="cartdelete" type="button" value="삭제하기" cno="${cartlist.c_no }"></td>
				</tr>
				</c:forEach>
				<tr><th colspan="6"><input id="my_cartAll"	type="submit" value="👉전체주문👈"></th></tr>			
			</table>
 -->
			<br><br>
			<div id="my_cartpay" > 
				<table id="my_cartpay_Tb">
		
				</table>
			</div>
			
		</div><!-- my_center -->
		
		<div id="my_side_right"></div>		
	</div><!-- my_main -->	
</div><!-- my_con -->
</body>
<jsp:include page="../Footer/footer.jsp"></jsp:include>
</html>