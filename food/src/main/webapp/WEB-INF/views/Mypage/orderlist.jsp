<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>orderlist</title>
<link rel="stylesheet" href="../../../resources/CSS/mypage.css">
<link rel="stylesheet" href="../../../resources/CSS/header.css">
<link rel="stylesheet" href="../../../resources/CSS/footer.css">

<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="../../../resources/JS/Mypage/order.js" charset="utf-8"></script>
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
			<input type="hidden" name="user" value="${sessionScope.user_id }">
			<h3>주문내역을 확인하세요~😁😁</h3>
			<div class="my_order1">	
						
<!-- 주문날짜별로 나누고, 상품별로 하나씩 생성 -->	
			<c:forEach items="${orderlist}" var="orderlist">
				<table id="my_orderlist">
					<tr>				
						<td class="my_orderDate" colspan="3">주문날짜 ${orderlist.o_date}
						<input type="hidden" value="${orderlist.o_no}"></td>
					</tr>
					<tr>
						<td class="my_orderTb" rowspan="3">
							<img class="my_orderImg" alt="상품사진" src=""></td>
						<td class="my_orderTb">${orderlist.s_name}</td>
						<td class="my_orderTb">
						<a href="http://localhost:8080/mypage/shopPurchase">
						<input type="button" value="상품평 GO!"></a></td>
					</tr>
					<tr>
						<td class="my_orderCon">${orderlist.s_content}</td>
						<td class="my_orderTb"><a href="http://localhost:8080/mypage/delivery">
						<input type="button" value="배송 조회"></a></td>
					</tr>
					<tr>
						<td class="my_orderTb">수량 <span>${orderlist.o_cnt}</span>
							/ 가격 <span>${orderlist.o_sum}</span></td>
						<td class="my_orderTb">
							<a href="http://localhost:8080/mypage/ordercancle">
							<input type="button" value="취소"></a>
							<a href="http://localhost:8080/mypage/orderrefund">
							<input type="button" value="반품"></a>
						</td>
					</tr>
				</table>
			</c:forEach>								
			</div><!-- my_order1 -->
			
		</div><!-- my_center -->
		
		<div id="my_side_right"></div>
		
	</div><!-- my_main -->
</div><!-- my_con -->	
</body>
<jsp:include page="../Footer/footer.jsp"></jsp:include>
</html>