<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>	
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
			<div class="my_order1">
			<c:choose>
				<c:when test="${empty canclelist}">
					<h3>취소 내역이 없습니다 </h3>
				</c:when>
				<c:otherwise>
					<h5>취소 내역을 확인하세요${findListImg} </h5>
				</c:otherwise>
			</c:choose>		
			
			<c:forEach items="${canclelist}" var="canclelist">
				<table id="my_orderlist">
					<tr>
						<td class="my_orderTb" rowspan="3">
							<a href="/shopDetail?prodnum=${canclelist.o_prodnum}">
							<img class="my_orderImg" alt="상품사진" src="/Shopdisplay?fileName=2022/09/23/eb944a35-6578-46c9-b186-097f47facae0-donma.jpg"></a></td>				
						<td class="my_orderTbName" colspan="2">${canclelist.s_name}</td>
						<td class="my_orderDate">취소날짜 ${canclelist.o_mod_date}
							<input type="hidden" value="${canclelist.o_no}"></td>
					</tr>
					<tr>
						<td class="my_orderTb">수량</td>
						<td class="my_orderTbNumber">${canclelist.o_cnt}</td>							
						<td class="my_orderTb" rowspan="2">
							<a href="/shopDetail?prodnum=${canclelist.o_prodnum}">
							<input type="button" value="상품 GO!!"></a></td>
					</tr>
					<tr>
						<td class="my_orderTb">취소금액</td>
						<td class="my_orderTbNumber">
							<fmt:formatNumber value="${canclelist.o_sum}" pattern="#,###"/> 원</td>
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