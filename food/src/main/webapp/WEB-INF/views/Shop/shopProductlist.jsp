<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../Header/Header.jsp"%>

<link rel="stylesheet" type="text/css"
	href="../../../resources/CSS/shop_CSS/shopProductlist.css">

<script type="text/javascript"
	src="../../../resources/JS/Shop/ShopProductlist.js">
	
</script>

<meta charset="UTF-8">



</head>
<body>
	<div class="sh_listAll">
		<p id="sh_listTitle">상품목록</p>

		<!-- session에 저장된 id가 관리자면 상품등록버튼 출력 -->
		<c:if test="${sessionScope.Id !=null}">
			<button type="button" id="shReg">상품등록</button>
		</c:if>

		<table id="sh_listTable">
			<tr>
				<td>상품번호</td>

				<td>상품명</td>

				<td>상품이미지</td>

				<td>상품가격</td>

				<td>등록일자</td>
			</tr>
		
			<!-- for문 시작-->
			<c:forEach items="${shoplist}" var="ShopList">
				<tr>
					<td>${ShopList.prodnum}</td>
					<td>${ShopList.NAME}</td>
					<td class="sh_listimage"><img
						src="/Shopdisplay?fileName=${ShopList.filename}" width="100px"
						height="100px"></td>
					<td>${ShopList.discountprice}</td>
					<td>${ShopList.today}</td>
				</tr>
			</c:forEach>
		</table>
		<!-- 상품목록 끝-->

		<!-- 검색기능 -->
		<div class="sh_listserchCenter">
			<form id="sh_serchform" action="/shopProductlist" method="get">
			<div class="sh_serchinput">
					<input type="hidden" name="pageNum" value="${paging.criteriaVO.pageNum}"> 
					<input type="hidden" name="keyword" value="${paging.citeriaVO.keyword}"> 
					<input type="hidden" name="sep" value="Shop">
				
				<div class="sh_serchbox">
					<select name="type" class="sh_serchoption">
						<option value="sh_Tp">제품명</option>
						<option value="sh_Tk">상품번호</option>
						<option value="sh_PK">제품명+상품번호</option>
					</select>		
					
				<div class="sh_serch">
						<input type="text" name="keyword" class="sh_bar">					
				</div>
				</div>
			</div>
			</form>
		</div>
		<!-- 검색기능 끝 -->
	</div>
</body>
</html>