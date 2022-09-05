<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>mypage</title>
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
				<img id="my_titleim" alt="마이페이지" src="../../../resources/image/mypage/my.png">
				<p id="my_titlep">마이<br>페이지</p></div>

			<div id="my_menu">
				<div><a href="http://localhost:8080/mypage/profile_edit">회원 정보 수정</a></div>
				<div><a href="http://localhost:8080/notice">공지사항</a></div>
				<div><a href="http://localhost:8080/QnA">자주하는 질문</a></div>
				<div><a href="http://localhost:8080/directQue">1:1 문의</a></div>
			</div>
		</div><!-- side_left -->
		
		<div id="my_center">
			<div class="my_center_go">	
				<div class="my_go" onclick="location.href='http://localhost:8080/mypage/cart'">
					<div class="my_th" >
						<img class="my_thimage" src="../../../resources/image/mypage/cart.png">
					</div> 
					<div class="my_intexttop">
						<h3>장바구니</h3>
					</div>	
				</div>	
						
				<div class="my_go" onclick="location.href='http://localhost:8080/mypage/orderlist'">
					<div class="my_th">
						<img src="../../../resources/image/mypage/list.png">
					</div>
					<div class="my_intexttop">
						<h3>주문 배송<br> 조회</h3>
					</div>
				</div>	
				
				<div class="my_go" onclick="location.href='http://localhost:8080/mypage/canclelist'">
					<div class="my_th">
						<img src="../../../resources/image/mypage/cancle.png">
					</div>
					<div class="my_intexttop">
						<h3>취소▪반품<br> 내역</h3>
					</div>	
				</div>
								
			</div>

			<div class="my_center_go">							
				<div class="my_go" onclick="location.href='http://localhost:8080/mypage/mykeep'">
					<div class="my_th">
						<img class="my_thimage" src="../../../resources/image/mypage/like.png">
					</div>	
					<div class="my_intextmid">
						<h3>찜한 상품</h3>
					</div>
				</div>	
							
				<div class="my_go" onclick="location.href='http://localhost:8080/mypage/myreview'">
					<div class="my_th">
						<img src="../../../resources/image/mypage/review.png">
					</div>	
					<div class="my_intextmid">
						<h3>내가 쓴 상품평</h3>
					</div>
				</div>
							
			</div>
			
			<div class="my_center_go">				
				<div class="my_go" onclick="location.href='http://localhost:8080/mypage/mywrite'">
					<div class="my_th">
						<img src="../../../resources/image/mypage/mywrite.png">
					</div>
					<div class="my_intextlow">
						<h3>내 글<br> 보기</h3>
					</div>	
				</div>
				
				<div class="my_go" onclick="location.href='http://localhost:8080/mypage/myreply'">
					<div class="my_th">
						<img src="../../../resources/image/mypage/myreply.png">
					</div>
					<div class="my_intextlow">
						<h3>내 "댓"글<br> 보기</h3>
					</div>	
				</div>
				
				<div class="my_go" onclick="location.href='http://localhost:8080/mypage/mylike'">
					<div class="my_th">
						<img src="../../../resources/image/mypage/mylike.png">
					</div>
					<div class="my_intextlow">
						<h3>좋아요<br> 누른 글<br> 보기</h3>
					</div>	
				</div>
			</div>
		</div><!-- my_center -->
		
		<div id="my_side_right"></div>
		
	</div><!-- my_main -->
</div><!-- container -->
</body>
<jsp:include page="../Footer/footer.jsp"></jsp:include>
</html>