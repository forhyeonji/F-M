<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../Header/Header.jsp"%>

<link rel="stylesheet" type="text/css"
	href="../../../resources/CSS/shop_CSS/shopProductEdit.css">

<meta charset="UTF-8">

</head>
<body>
<div class="sh_Editmain">
		<form  id="sh_Editform" name="sh_Editform"
			method="post" enctype="multipart/form-data">
			<div class="sh_Edit">

				<div class="sh_EditTitle">
					<h1 id="sh_Editpage">상품수정 페이지 입니다.</h1>
				</div>

				<table id="sh_EditArea">
					<tr id="sh_EditinputArea">
						<td id="sh_EditinputArea">상품명</td>
					</tr>
					<tr id="sh_EditinputArea">
						<td>
							<input type="hidden" id="EditName" name="prodnum" value="${detail.prodnum}">
							<input type="text" id="EditName" name="NAME" value="${detail.NAME}">
						</td>
					</tr>

					<tr id="sh_EditinputArea">
						<td id="sh_EditinputArea">한줄소개</td>
					</tr>
					<tr>
						<td><input type="text" id="Editsub" name="subcontent" value="${detail.subcontent}"></td>
					</tr>

					<tr id="sh_EditinputArea">
						<td id="sh_EditinputArea">상품원가</td>
					</tr>
					<tr>
						<td><input type="text" id="gasPrice" name="price2" value="${detail.price2}" ></td>
					</tr>

					<tr id="sh_EditinputArea">
						<td id="sh_EditinputArea">상품할인가</td>
					</tr>
					<tr>
						<td><input type="text" id="gasPrice" name="discountprice" value="${detail.discountprice}"></td>
					</tr>

					<tr id="sh_EditinputArea">
						<td id="sh_EditinputArea">상품설명</td>
					</tr>
					<tr>
						<td><textarea rows="5" cols="50" id="EditgdsDes" name="CONTENT">${detail.CONTENT}</textarea>
						</td>
					</tr>

					<tr id="sh_EditinputArea">
						<td id="sh_EditinputArea">상세정보</td>
					</tr>

					<tr>
						<td><textarea rows="5" cols="50" id="gasDetail" name="detail">${detail.detail}</textarea>
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
						<td id="sh_EditinputArea"><input type="file" id="Editimgmain" name="imagemain" style="height: 30px;">
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
						<td id="sh_EditinputArea"><input type="file" id="Editimgsub" name="imagesub" style="height: 30px;" multiple>
						<ul></ul>
						</td>
					</tr>
					
					
					<tr>
						<td>
							<div class="sh_EditArea">
								<input type="submit" value="수정" formaction="/shopProductEdit" >
								<!-- //<input type="submit" value="삭제" > -->
								<input type="button" value="상품목록" onclick="location.href='http://localhost:8080/shopProductlist'">
							</div>
						</td>
					</tr>
					
				
				</table>
			</div>
		</form>
</div>
		
		

</body>
</html>