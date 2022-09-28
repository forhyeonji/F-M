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
				<div><a href="/mypage">마이페이지</a></div>			
				<div><a href="/notice">공지사항</a></div>
				<div><a href="/QnA">자주하는 질문</a></div>
				<div><a href="/directQue">1:1 문의</a></div>
			</div>
		</div><!-- my_side_left -->
		
		<div id="my_center">
			<input type="hidden" name="user" value="${sessionScope.user_id }">
			
			<div class="my_order1">	
					
<!-- 주문날짜별로 나누고, 상품별로 하나씩 생성 -->	
		<c:choose>
			<c:when test="${empty orderlist}">
				<h3>주문 내역이 없습니다 (T_T)</h3>
			</c:when>
			<c:otherwise>
				<h3>주문내역을 확인하세요~😁😁</h3>	
			</c:otherwise>
		</c:choose>

			<c:forEach items="${orderlist}" var="orderlist">
			
				<table id="my_orderlist">
					<tr>				
						<td class="my_orderDate">주문날짜 ${orderlist.o_date}
							<input type="hidden" value="${orderlist.o_no}"></td>		
						<td class="my_orderTbNAME" colspan="2">${orderlist.s_name}</td>
						<td class="my_orderTb">
							<a href="/mypage/shopPurchase">
							<input type="button" value="상품평 GO!"></a></td>
					</tr>
					<tr>
						<td class="my_orderTb" rowspan="2">
							<img class="my_orderImg" alt="상품사진" src=""></td>
						<td class="my_orderTb">수량</td>
						<td class="my_orderTbNumber">${orderlist.o_cnt}</td>
						<td class="my_orderTb">
							<a href="/mypage/delivery">
							<input type="button" value="배송 조회"></a></td>
					</tr>
					<tr>
						<td class="my_orderTb">결제 금액</td>
						<td class="my_orderTbNumber">${orderlist.o_sum}</td>
						<td class="my_orderTb">
							<a href="/mypage/ordercancle?o_no=${orderlist.o_no}">
							<input type="button" value="취소 하기" name="cancle"></a></td>						
					</tr>
				</table>
			</c:forEach>							
			</div><!-- my_order1 -->
			<div id="my_paging">	
				<div>			
<!-- 이전버튼 -->
					<c:if test="${paging.prevBtn }">
						<a href="/mypage/orderlist?pageNum=${paging.startPage-1}&amount=${paging.criteriaVO.amount}">이전</a>
					</c:if>

<!-- 페이징 처리 -->		
					<c:forEach begin="${paging.startPage }" end="${paging.endPage }" var="num">
						<a href="/mypage/orderlist?pageNum=${num}&amount=${paging.criteriaVO.amount}">${num }</a>
					</c:forEach>

<!-- 다음버튼 -->			
					<c:if test="${paging.nextBtn }">
						<a href="/mypage/orderlist?pageNum=${paging.startPage+1}&amount=${paging.criteriaVO.amount}">다음</a>
					</c:if>					
				</div>			
			</div>

		
		</div><!-- my_center -->
		
		<div id="my_side_right"></div>
		
	</div><!-- my_main -->
</div><!-- my_con -->	
</body>
<jsp:include page="../Footer/footer.jsp"></jsp:include>
</html>