<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../Header/Header.jsp"%>

<link rel="stylesheet" type="text/css"
	href="../../../resources/CSS/shop_CSS/shopRegistration.css">
<meta charset="UTF-8">



</head>
<body>

<p>상품목록</p>

<c:if test="${sessionScope.adminId !=null}">
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
		<td>
			${row.prodnum}
		</td>
		
		<td>
			<a href="${path}/shopPurchase/${row.prodnum}">
				<img src="${path}/images/${row.imgName}" width="120px" height="110px">
			</a>
		</td>
		
		<td>
			<a href="${path}/shopPurchase/${row.prodnum}">${row.NAME}</a>
		</td>
		
		<td>
			<fmt:formatNumber value="${row.price2}" pattern="###,###,###"/>
		</td>	
	</tr>		
	</c:forEach>
	
	

</table>

</body>
</html>