<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../Header/Header.jsp"%>

<link rel="stylesheet" type="text/css"
	href="../../../resources/CSS/shop_CSS/shopProductEdit.css">

<script type="text/javascript"
	src="../../../resources/JS/Shop/ShopProductEdit.js">
	
</script>

<meta charset="UTF-8">

</head>
<body>
<div class="sh_Editmain">
		<form action="shopProductEdit" id="sh_Editform" name="sh_Editform"
			method="post" enctype="multipart/form-data">
			<div class="sh_Edit">

				<div class="sh_EditTitle">
					<h1 id="sh_Editpage">상품수정/삭제 페이지 입니다.</h1>
					${ProductEdit}
				</div>

				<table id="sh_EditinputArea">
					<tr>
						<td>상품명</td>
					</tr>
					<tr>
						<td><input type="text" id="EditName" name="NAME" value="${ShopVO.NAME}"></td>
					</tr>

					<tr>
						<td>한줄소개</td>
					</tr>
					<tr>
						<td><input type="text" id="Editsub" name="subcontent" value="${ShopVO.subcontent}"></td>
					</tr>

					<tr>
						<td>상품원가</td>
					</tr>
					<tr>
						<td><input type="text" id="gasPrice" name="price2" value="${ShopVO.price2}" ></td>
					</tr>

					<tr>
						<td>상품할인가</td>
					</tr>
					<tr>
						<td><input type="text" id="gasPrice" name="discountprice" value="${ShopVO.discountprice}"></td>
					</tr>

					<tr>
						<td>상품설명</td>
					</tr>
					<tr>
						<td><textarea rows="5" cols="50" id="EditgdsDes" name="CONTENT">${ShopVO.CONTENT}</textarea>
						</td>
					</tr>

					<tr>
						<td>상세정보</td>
					</tr>

					<tr>
						<td><textarea rows="5" cols="50" id="gasDetail" name="detail">${ShopVO.detail}</textarea>
						</td>
					</tr>
					
					<tr>
						<td>
							<div>
								<label for="Editimg" id="sh_Editimg">상품이미지(메인):</label>
							</div>
						</td>
					</tr>
					<tr>
						<td><input type="file" id="Editimgmain" name="imagemain" style="height: 30px;">
						<ul></ul>
						</td>
					</tr>
					
					<tr>
						<td>
							<div>
								<label for="Editimg" id="sh_Editimg">상품이미지(서브):</label>
							</div>
						</td>
					</tr>
					<tr>
						<td><input type="file" id="Editimgsub" name="imagesub" style="height: 30px;" multiple>
						<ul></ul>
						</td>
					</tr>
					
					
					<tr>
						<td>
							<div class="sh_EditArea">
								<button type="button" id="correction_Btn">수정</button>
								<button type="button" id="delete_Btn">삭제</button>
								<button type="button" id="list_Btn">상품목록</button>
							</div>
						</td>
					</tr>
					
				
				</table>
			</div>
		</form>
</div>
		
		

</body>
</html>