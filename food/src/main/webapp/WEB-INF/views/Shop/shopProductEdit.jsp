<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../Header/Header.jsp"%>


<link rel="stylesheet" type="text/css"
	href="../../../resources/CSS/shop_CSS/shopProductEdit.css">

<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2 id="sh_edith2">상품 등록 삭제 및 수정</h2>
	<form id="sh_form" name="sh_form" enctype="multipart/form-data"
		method="post">
		<table>
			<tr>
				<td id="sh_edittd">상품명</td>
				<td id="sh_inputtext"><input type="text" class="Editheight" id="NAME" name="NAME"
					value="${ShopVO.NAME}" ></td>
			</tr>

			<tr>
				<td id="sh_edittd">한줄소개</td>
				<td id="sh_inputtext"><input type="text" class="Editheight" id="subcontent" name="subcontent"
					value="${ShopVO.subcontent}"></td>
			</tr>

			<tr>
				<td id="sh_edittd">상품원가</td>
				<td id="sh_inputtext"><input type="number" class="Editheight" id="price2" name="price2"
					value="${ShopVO.price2}"></td>
			</tr>

			<tr>
				<td id="sh_edittd">상품할인가</td>
				<td id="sh_inputtext"><input type="number" class="Editheight" id="discountprice"
					name="discountprice" value="${ShopVO.discountprice }"></td>
			</tr>

			<tr>
				<td id="sh_edittd">포장타입</td>
				<td id="sh_inputtext"> <select
					id="ShopEdit">
						<option value="${ShopVO.packaging}">냉장</option>
						<option value="${ShopVO.packaging}">냉동</option>
						<option value="${ShopVO.packaging}">실온</option>
				</select></td>
			</tr>

			<tr>
				<td id="sh_edittd">판매단위</td>
				<td id="sh_inputtext"><input type="text" class="Editheight" id="unit" name="unit"
					value="${ShopVO.unit}"></td>
			</tr>

			<tr>
				<td id="sh_edittd">원산지</td>
				<td id="sh_inputtext"><select name="Origin">
						<option value="${ShopVO.Origin}">미국산</option>
						<option value="${ShopVO.Origin}">국내산</option>
						<option value="${ShopVO.Origin}">중국산</option>
				</select></td>
			</tr>

			<tr>
				<td id="sh_edittd">상품수량</td>
				<td id="sh_inputtext"><input type="number" class="Editheight" id="KIND" name="KIND"
					value="${ShopVO.KIND}"></td>
			</tr>

			<tr>
				<td id="sh_edittd">입고안내</td>
				<td id="sh_inputtext"><input type="text" class="Editheight" id="Import" name="Import"
					value="${ShopVO.Import}"></td>
			</tr>

			<tr>
				<td id="sh_edittd">상품설명</td>
				<td id="sh_inputtext"><textarea id="CONTENT" class="Editheight" name="CONTENT" rows="5" cols="60">${ShopVO.CONTENT}</textarea>
				</td>
			</tr>

			<tr>
				<td id="sh_edittd">상세정보</td>
				<td id="sh_inputtext"><textarea id="detail" class="Editheight" name="detail" rows="10" cols="60">${ShopVO.detail}</textarea>
				</td>
			</tr>

			<tr>
				<td id="sh_edittd">상품이미지</td>
				<td id="sh_inputtext"><img src="${path}/image/${ShopVO.image}" height="300px"
					width="310px"> <input type="file" id="image" name="image">
				</td>
			</tr>
			
			
			<tr>
				<td colspan="2" align="center"  id="sh_delete">
					<input type="hidden" name="prodnum" value="${ShopVO.prodnum}">			
					<input type="button" id="editBtn" value="수정">
					<input type="button" id="deleteBtn" value="삭제">
					<input type="button" id="listBtn" value="상품목록">
					
				</td>
			</tr>	
			

		</table>
	</form>


</body>
</html>