<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../Header/Header.jsp"%>

<link rel="stylesheet" type="text/css"
	href="../../../resources/CSS/shop_CSS/shopRegistration.css">
<meta charset="UTF-8">

</head>
<body>
	<div class="sh_enrollmain">

		<div class="sh_left">
			<ul id="sh_Regimenu">
				<li><a href="#" id="sh_enroll">상품 등록</a></li>
				<li><a href="#" id="sh_enroll">상품 목록</a></li>
				<li><a href="#" id="sh_enroll">상품 후기</a></li>
				<li><a href="#" id="sh_enroll">상품 문의</a></li>
			</ul>
		</div>


		<form role="form" method="post" autocomplete="off">
			<div class="sh_right">

				<div class="sh_allenroll">
					<h1 id="sh_enrollpage">상품등록 페이지 입니다.</h1>
				</div>

				<div class="sh_division">
					<table id="sh_inputArea">
						<tr>
							<td id="sh_menutd">
							<label id="sh_menuName"> 1차분류 </label> 
							<select>
									<option value="">전체</option>
									<option value="">육류</option>
									<option value="">과일</option>
							</select>
							</td>
							<td id="sh_menutd">
							<label id="sh_menuName"> 2차분류 </label> 
							<select>
									<option value="">전체</option>
									<option value="">소고기</option>
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
						<td><input type="text" id="gasName" name="gasName"></td>
					</tr>



					<tr>
						<td>
							<div>
								<label for="sh_subDes" id="sh_menuName">한줄소개:</label>
							</div>
						</td>
					</tr>
					<tr>
						<td><input type="text" id="subDes" name="subDes"></td>
					</tr>

					<tr>
						<td>
							<div>
								<label for="sh_gasPrice" id="sh_menuName">상품가격:</label>
							</div>
						</td>
					</tr>
					<tr>
						<td><input type="text" id="gasPrice" name="gasPrice">

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
						<td><select>
								<option value="">냉장</option>
								<option value="">냉동</option>
								<option value="">실온</option>
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
						<td><input type="text" id="gasunit" name="gasunit"></td>
					</tr>

					<tr>
						<td>
							<div class="sh_gasorigin">
								<label id="sh_menuName"> 원산지 </label>
							</div>
						</td>
					</tr>
					<tr>
						<td><select>
								<option value="">미국산</option>
								<option value="">국내산</option>
								<option value="">중국산</option>
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
						<td><input type="text" id="gasNum" name="gasNum"></td>
					</tr>

					<tr>
						<td>
							<div class="sh_inputArea">
								<label for="sh_gasinput" id="sh_menuName">입고안내:</label>
							</div>
						</td>
					</tr>
					<tr>
						<td><input type="text" id="gasinput" name="gasinput">
						</td>
					</tr>

					<tr>
						<td>
							<div class="sh_inputArea">
								<label for="sh_gasDes" id="sh_menuName">상품설명:</label>
							</div>
						</td>
					</tr>
					<tr>
						<td><textarea rows="5" cols="50" id="gdsDes" name="gdsDes"></textarea>
						</td>
					</tr>

					<tr>
						<td>
							<div class="sh_inputArea">
								<label for="sh_gasDes" id="sh_m">상세정보</label>
							</div>
						</td>
					</tr>
					<tr>
						<td><textarea rows="5" cols="50" id="gdsDes" name="gdsDes"></textarea>
						</td>
					</tr>

					<tr>
						<td>
							<div class="sh_inputArea">
								<button type="submit" id="register_Btn">등록</button>
							</div>
						</td>
					</tr>
				</table>
			</div>
		</form>

	</div>

</body>
</html>