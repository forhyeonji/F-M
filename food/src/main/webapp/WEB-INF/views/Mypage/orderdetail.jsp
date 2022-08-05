<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>orderdetail</title>
<style type="text/css">
container{display:inline-flex; }
div{margin:5px; }
</style>
</head>
<body>
<header>
<h1 align="center">food</h1>
<p align="center">다른 메뉴는 메인페이지 따라갈게요</p>
</header>

<container>
<div id="side_left" >
	<table border="1">
		<tr>
			<td colspan="2">주문 상세 보기</td>
		</tr>
		<tr>
			<td rowspan="2">프로필사진</td>
			<td>회원 id 님</td>
		</tr>
		<tr>
			<td colspan="2"><input type="button" value="회원정보 수정"></td>
		</tr>		
		<tr>
			<td colspan="2">
				<ul>
					<li>공지사항</li>
					<li>자주하는 질문</li>
					<li>1:1 문의</li>
				</ul>
			</td>
		</tr>
	
	</table>
</div>
<div id="orderdetail" >
	<div>
		<label>주문날짜 8/1</label>
		<button>주문취소/반품</button>
		<button>배송 조회</button>
	</div>
	<div style="border:1px solid;">
	<table style="width:500px;">
		<tr>
			<td rowspan="3">상품 사진</td>
			<td>상품 이름(제목)</td>
			<td rowspan="3"><input type="button" value="상품평"></td>
		</tr>
		<tr>
			<td>수량: 3</td>
		</tr>
		<tr>
			<td>금액 30,000</td>
		</tr>		
	</table>
	</div>
	<div style="border:1px solid;">
	<table style="width:500px;">
		<tr>
			<td rowspan="3">상품 사진</td>
			<td>상품 이름(제목)</td>
			<td rowspan="3"><input type="button" value="상품평"></td>
		</tr>
		<tr>
			<td>수량: 1</td>
		</tr>
		<tr>
			<td>금액 50,000</td>
		</tr>		
	</table>
	</div>	
	<div id="order2" align="center">
	<table border="1" style="width:450px;">
		<tr>
			<td>총 합계</td><td>(정가)100,000원</td>
		</tr>
		<tr>	
			<td>할인 금액</td><td>2,000원</td>
		</tr>
		<tr>			
			<td>최종 결제 금액</td><td>80,000원</td>
		</tr>
		<tr>			
			<td>결제 정보</td><td>KB카드 1234-5678-9***-***0</td>
		</tr>		
	</table>
	</div>
</div>
<div id="go_watched" style="border:1px solid;">
	<h3>최근 본 상품</h3>
	<div id="go_watched1" style="width:130px;height:100px;border:1px solid;">상품1</div>
	<div id="go_watched2" style="width:130px;height:100px;border:1px solid;">상품2</div>
	<div id="go_watched3" style="width:130px;height:100px;border:1px solid;">상품3</div>
</div>
</container>

<footer>
	<p>회사소개</p>
</footer>
</body>
</html>