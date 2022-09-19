<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../Header/Header.jsp"%>

<link rel="stylesheet" type="text/css"
	href="../../../resources/CSS/shop_CSS/shopRegistration.css">

<script type="text/javascript"
	src="../../../resources/JS/Shop/ShopRegistration.js">
	
</script>

<meta charset="UTF-8">

</head>
<body>
	<div class="sh_enrollmain">
		<div class="sh_submain">
		<div class="sh_left">
			<ul id="sh_Regimenu">
				<li><a href="#" id="sh_enroll">상품 등록</a></li>
				<li><a href="http://localhost:8080/shopProductlist"
					id="sh_enroll">상품 목록</a></li>
				<li><a href="#" id="sh_enroll">상품 후기</a></li>
				<li><a href="#" id="sh_enroll">상품 문의</a></li>
			</ul>
		</div>


		<form action="shopRegistration" id="sh_form" name="sh_form"
			method="post" enctype="multipart/form-data">
			<div class="sh_right">

				<div class="sh_allenroll">
					<h1 id="sh_enrollpage">상품등록 페이지 입니다.</h1>
				</div>

				<div class="sh_division">
					<table id="sh_inputArea">
						<tr>
							<td id="sh_menutd">
							<select id="class1">
									<option selected>1차분류</option>
									<c:forEach items="${class1}" var="divi1">
										<option value="<c:out value="${divi1.class1}" />"><c:out value="${divi1.class1}" /></option>
									</c:forEach>
							</select>
							</td>

							<td><select id="class2">
								<option>2차분류</option>
							</select>
							</td>
						</tr>
					</table>
				</div>

				<table id="sh_inputArea">
					<tr>
						<td>
							<div>
								<label for="sh_gasName" id="sh_menuName">상품명:</label>
							</div>
						</td>
					</tr>
					<tr>
						<td><input type="text" id="gasName" name="NAME"></td>
					</tr>



					<tr>
						<td>
							<div>
								<label for="sh_subDes" id="sh_menuName">한줄소개:</label>
							</div>
						</td>
					</tr>
					<tr>
						<td><input type="text" id="subDes" name="subcontent"></td>
					</tr>

					<tr>
						<td>
							<div>
								<label for="sh_gasPrice" id="sh_menuName">상품원가:</label>
							</div>
						</td>
					</tr>
					<tr>
						<td><input type="text" id="gasPrice" name="price2"></td>
					</tr>

					<tr>
						<td>
							<div>
								<label for="sh_gasPrice" id="sh_menuName">상품할인가:</label>
							</div>
						</td>
					</tr>
					<tr>
						<td><input type="text" id="gasPrice" name="discountprice">

						</td>
					</tr>

					<tr>
						<td>
							<div class="sh_gasType">
								<label id="sh_menuName"> 포장타입 </label>
							</div>
						</td>
					</tr>
					<tr>
						<td><select name="packaging">
								<option value="냉장">냉장</option>
								<option value="냉동">냉동</option>
								<option value="실온">실온</option>
						</select></td>
					</tr>


					<tr>
						<td>
							<div class="sh_gasunit">
								<label id="sh_menuName"> 판매단위 </label>
							</div>
						</td>
					</tr>
					<tr>
						<td><input type="text" id="gasunit" name="unit"></td>
					</tr>

					<tr>
						<td>
							<div class="sh_gasorigin">
								<label id="sh_menuName"> 원산지 </label>
							</div>
						</td>
					</tr>
					<tr>
						<td><select name="Origin">
								<option value="미국산">미국산</option>
								<option value="베트남산">베트남산</option>
								<option value="국산">국산</option>
								<option value="중국산">중국산</option>
						</select></td>
					</tr>

					<tr>
						<td>
							<div class="sh_inputArea">
								<label for="sh_gasNum" id="sh_menuName">상품수량:</label>
							</div>
						</td>
					</tr>
					<tr>
						<td><input type="text" id="gasNum" name="KIND"></td>
					</tr>

					<tr>
						<td>
							<div class="sh_inputArea">
								<label for="sh_gasinput" id="sh_menuName">입고안내:</label>
							</div>
						</td>
					</tr>
					<tr>
						<td><input type="text" id="gasinput" name="Import"></td>
					</tr>

					<tr>
						<td>
							<div class="sh_inputArea">
								<label for="sh_gasDes" id="sh_menuName">상품설명:</label>
							</div>
						</td>
					</tr>
					<tr>
						<td><textarea rows="5" cols="50" id="gdsDes" name="CONTENT"></textarea>
						</td>
					</tr>

					<tr>
						<td>
							<div class="sh_inputArea">
								<label for="gasDetail" id="sh_m">상세정보</label>
							</div>
						</td>
					</tr>

					<tr>
						<td><textarea rows="5" cols="50" id="gasDetail" name="detail"></textarea>
						</td>
					</tr>
					
					<tr>
						<td>
							<div>
								<label for="gasimg" id="sh_gasimg">상품이미지(메인):</label>
							</div>
						</td>
					</tr>
					<tr>
						<td><input type="file" id="gasimgmain" name="imagemain" style="height: 30px;">
						<ul></ul>
						</td>
					</tr>
					
					<tr>
						<td>
							<div>
								<label for="gasimg" id="sh_gasimg">상품이미지(서브):</label>
							</div>
						</td>
					</tr>
					<tr>
						<td><input type="file" id="gasimgsub" name="imagesub" style="height: 30px;" multiple>
						<ul></ul>
						</td>
					</tr>
					
					
					<tr>
						<td>
							<div class="sh_inputArea">
								<button type="button" id="register_Btn">등록</button>
							</div>
						</td>
					</tr>
					
				
				</table>
			</div>
		</form>

	</div>
		
		
	</div>

</body>
</html>