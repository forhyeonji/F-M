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
				<div><a href="/mypage/profile_edit">회원 정보 수정</a></div>
				<div><a href="/notice">공지사항</a></div>
				<div><a href="/QnA">자주하는 질문</a></div>
				<div><a href="/directQue">1:1 문의</a></div>
			</div>
		</div><!-- side_left -->
		
		<div id="my_center">
			<div class="my_center_go">	
				<div class="my_go" onclick="location.href='/mypage/cart'">
					<div class="my_th" >
						<img class="my_thimage" src="../../../resources/image/mypage/cart.png">
					</div> 
					<div class="my_intexttop">
						<p>장바구니</p>
					</div>	
				</div>	
						
				<div class="my_go" onclick="location.href='/mypage/orderlist'">
					<div class="my_th">
						<img class="my_thimage" src="../../../resources/image/mypage/list.png">
					</div>
					<div class="my_intexttop">
						<p>주문 목록<br>배송 조회</p>
					</div>
				</div>	
				
				<div class="my_go" onclick="location.href='/mypage/canclelist'">
					<div class="my_th">
						<img class="my_thimage" src="../../../resources/image/mypage/cancle.png">
					</div>
					<div class="my_intexttop">
						<p>취소 내역</p>
					</div>	
				</div>
								
			</div>

			<div class="my_center_go">							
				<div class="my_go" onclick="location.href='/mypage/mykeep'">
					<div class="my_th">
						<img class="my_thimage" src="../../../resources/image/mypage/like.png">
					</div>	
					<div class="my_intextmid">
						<p>찜한 상품</p>
					</div>
				</div>	
							
				<div class="my_go" onclick="location.href='/mypage/myreview'">
					<div class="my_th">
						<img class="my_thimage" src="../../../resources/image/mypage/review.png">
					</div>	
					<div class="my_intextmid">
						<p>내가 쓴<br>상품평</p>
					</div>
				</div>
							
			</div>
			
			<div class="my_center_go">				
				<div class="my_go" onclick="location.href='/mypage/mywrite'">
					<div class="my_th">
						<img class="my_thimage" src="../../../resources/image/mypage/mywrite.png">
					</div>
					<div class="my_intextlow">
						<p>내 글<br> 보기</p>
					</div>	
				</div>
				
				<div class="my_go" onclick="location.href='/mypage/myreply'">
					<div class="my_th">
						<img class="my_thimage" src="../../../resources/image/mypage/myreply.png">
					</div>
					<div class="my_intextlow">
						<p>내 "댓"글<br> 보기</p>
					</div>	
				</div>
				
				<div class="my_go" onclick="location.href='/mypage/mylike'">
					<div class="my_th">
						<img class="my_thimage" src="../../../resources/image/mypage/mylike.png">
					</div>
					<div class="my_intextlow">
						<p>좋아요<br> 누른 글<br> 보기</p>
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