<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>delivery</title>
<link rel="stylesheet" href="../../../resources/CSS/mypage.css">
<link rel="stylesheet" href="../../../resources/CSS/header.css">
<link rel="stylesheet" href="../../../resources/CSS/footer.css">
</head>
<jsp:include page="../Header/Header.jsp"></jsp:include>
<body>
<div id="my_con">
	<div id="my_main">
	
		<div id="my_side_left">
			<div id="my_title">
				<img id="my_titleim" alt="배송조회" src="../../../resources/image/mypage/delivery.png">
				<p id="my_titlep">배송조회</p></div>

			<div id="my_menu">
				<div><a href="http://localhost:8080/mypage">마이페이지</a></div>
				<div><a href="http://localhost:8080/notice">공지사항</a></div>
				<div><a href="http://localhost:8080/QnA">자주하는 질문</a></div>
				<div><a href="http://localhost:8080/directQue">1:1 문의</a></div>
			</div>
			
			
		</div><!-- side_left -->
		
		<div id="my_center">
			<div id="my_delivery" >
			
				<div id="my_deliTop">
					<button onclick="http://localhost:8080/mypage/orderlist">
					주문 목록 바로 가기</button>					
				</div>
				<div id="my_deliMain">
					<iframe style="width:100%; height:800px; border:none" src='https://tracker.delivery/#/kr.lotte/241743423084'></iframe>
				</div>
			</div>
			
		</div><!-- my_center -->
			
		<div id="my_side_right"></div>
		
	</div><!-- my_main -->	
</div><!-- my_con -->
</body>
<jsp:include page="../Footer/footer.jsp"></jsp:include>
</html>