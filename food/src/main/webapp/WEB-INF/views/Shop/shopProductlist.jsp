<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../Header/Header.jsp"%>

<link rel="stylesheet" type="text/css"
	href="../../../resources/CSS/shop_CSS/shopProductlist.css">

<script type="text/javascript" src="../../../resources/JS/Shop/ShopProductlist.js">

</script>

<meta charset="UTF-8">



</head>
<body>

	<p>상품목록</p>
	
	<!-- session에 저장된 id가 관리자면 상품등록버튼 출력 -->
	<c:if test="${sessionScope.Id !=null}">
		<button type="button" id="shReg">상품등록</button>
	</c:if>

	<table>
		<tr>
			<td>상품번호</td>

			<td>상품명</td>

			<td>상품이미지</td>

			<td>상품가격</td>
		</tr>

		<c:forEach var="row" items="${list}">
			<tr>
				<td>${row.prodnum}</td>

				<td><a href="${path}/webapp/WEB-INF/views/Shop/shopPurchase/${row.prodnum}"> 
				<img src="${path}/image/shop/${row.imgName}" width="120px" height="110px"></a>
				</td>

				<td align="center">
				<a href="${path}/shopPurchase/${row.prodnum}">${row.NAME}</a>
				
				<!-- session에 저장된 id가 관리자 id면 상품편집 링크 출력 -->
				<c:if test="${sessionScope.ID !=null}">
				<a href="${path}/webapp/WEB-INF/views/Shop/shopProductEdit/${row.prodnum}">상품편집</a>				
				</c:if>	
				</td>

				<td><fmt:formatNumber value="${row.price2}" pattern="###,###,###" /></td>
			</tr>
		</c:forEach>
</table>

</body>
</html>