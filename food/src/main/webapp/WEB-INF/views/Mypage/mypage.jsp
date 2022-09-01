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
			<div><label id="my_title">회원 정보</label></div>
			<div id="my_profile">
				<div><img src="../../../resources/image/profile/profile01.jpeg"></div>
				<div><span id="my_id">회원id 님</span><br>
					<a href="http://localhost:8080/mypage/profile_edit">
					<input type="button" value="회원정보 수정"></a></div>
			</div>
			<div id="my_notice">
				<div><a href="http://localhost:8080/notice">공지사항</a></div>
				<div><a href="http://localhost:8080/QnA">자주하는 질문</a></div>
				<div><a href="http://localhost:8080/directQue">1:1 문의</a></div>
			</div>
		</div><!-- side_left -->
		
		<div id="my_center">
			<div class="my_center_go">	
				<div class="my_go" onclick="location.href='http://localhost:8080/mypage/orderlist'">
					<div class="my_th" >
						<img class="my_thimage" src="../../../resources/image/mypage/cart.png">
					</div> 
					<div class="my_intexttop">
						<h3>주문 배송 조회</h3>
					</div>	
				</div>
				
				<div class="my_go" onclick="location.href='http://localhost:8080/mypage/canclelist'">
					<div class="my_th">
						<img class="my_thimage" src="../../../resources/image/mypage/cancle.png">
					</div>	
					<div class="my_intexttop">
						<h3>주문 취소 내역</h3>
					</div>
				</div>
					
				<div class="my_go" onclick="location.href='http://localhost:8080/mypage/orderrefund'">
					<div class="my_th">
						<img src="../../../resources/image/mypage/refund.png">
					</div>
					<div class="my_intexttop">
						<h3>주문 반품 내역</h3>
					</div>
				</div>				
			</div>
			
			<div class="my_center_go">
				<div class="my_go" onclick="location.href='http://localhost:8080/mypage'">
					<div class="my_th">
						<img src="../../../resources/image/mypage/like.png">
					</div>
					<div class="my_intextmid">
						<h3>찜한 상품</h3>
					</div>	
				</div>
				
				<div class="my_go" onclick="location.href='http://localhost:8080/mypage'">
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
						<h3>내 글 보기</h3>
					</div>	
				</div>
				
				<div class="my_go" onclick="location.href='http://localhost:8080/mypage/myreply'">
					<div class="my_th">
						<img src="../../../resources/image/mypage/myreply.png">
					</div>
					<div class="my_intextlow">
						<h3>내 "댓"글 보기</h3>
					</div>	
				</div>
				
				<div class="my_go" onclick="location.href='http://localhost:8080/mypage/mylike'">
					<div class="my_th">
						<img src="../../../resources/image/mypage/mylike.png">
					</div>
					<div class="my_intextlow">
						<h3>내가 좋아요 누른 글 보기</h3>
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