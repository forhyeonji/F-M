<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>	
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
	<div id="my_main">
	
		<div id="my_side_left" >
			<div id="my_title">
				<img id="my_titleim" alt="장바구니" src="../../../resources/image/mypage/cancle.png">
				<p id="my_titlep">취소<br>내역</p></div>

			<div id="my_menu">
				<div><a href="/mypage">마이페이지</a></div>
				<div><a href="/notice">공지사항</a></div>
				<div><a href="/QnA">자주하는 질문</a></div>
				<div><a href="/directQue">1:1 문의</a></div>
			</div>
		</div><!-- side_left -->

		<div id="my_center">
			<h3>주문 취소 내역을 확인하세여</h3>
			<div class="my_order1">
			<c:forEach items="${canclelist}" var="canclelist">
				<table id="my_orderlist">
					<tr>				
						<td class="my_orderDate" colspan="3">취소날짜 ${canclelist.o_mod_date}
						<input type="hidden" value="${canclelist.o_no}"></td>
					</tr>
					<tr>
						<td class="my_orderTb" rowspan="3">
							<img class="my_orderImg" alt="상품사진" src=""></td>	
						<td class="my_orderTb">${canclelist.s_name}</td>					
						<td class="my_orderTb" rowspan="3">
							<a href="/Shop/shopPurchase">
							<input type="button" value="상품 GO!!"></a></td>
					</tr>
					<tr>
						<td class="my_orderTb">수량 <span>${canclelist.o_cnt}</span>
							/ 가격 <span>${canclelist.o_sum}</span></td>
					</tr>
				</table>
			</c:forEach>			
			</div>	

			<div id="my_paging">	
				<div>			
<!-- 이전버튼 -->
					<c:if test="${paging.prevBtn }">
						<a href="/mypage/canclelist?pageNum=${paging.startPage-1}&amount=${paging.criteriaVO.amount}">이전</a>
					</c:if>

<!-- 페이징 처리 -->		
					<c:forEach begin="${paging.startPage }" end="${paging.endPage }" var="num">
						<a href="/mypage/canclelist?pageNum=${num}&amount=${paging.criteriaVO.amount}">${num }</a>
					</c:forEach>

<!-- 다음버튼 -->			
					<c:if test="${paging.nextBtn }">
						<a href="/mypage/canclelist?pageNum=${paging.startPage+1}&amount=${paging.criteriaVO.amount}">다음</a>
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