<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>mylike</title>
</head>
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
				<img id="my_titleim" alt="좋아요" src="../../../resources/image/mypage/mylike.png">
				<p id="my_titlep">좋아요<br> 누른 글</p></div>

			<div id="my_menu">
				<div><a href="http://localhost:8080/mypage">마이페이지</a></div>
				<div><a href="http://localhost:8080/notice">공지사항</a></div>
				<div><a href="http://localhost:8080/QnA">자주하는 질문</a></div>
				<div><a href="http://localhost:8080/directQue">1:1 문의</a></div>
			</div>
		</div><!-- my_side_left -->

		<div id="my_center">
			<div>
				<a href="http://localhost:8080/mypage/mywrite"><button>📝내가 쓴 글</button></a>
				<a href="http://localhost:8080/mypage/myreply"><button>💬내 댓글</button></a>			
			</div>
				<table id="my_like">
					<tr>
						<th>❤</th><th>제목</th><th>좋아요 누른 날짜</th>
					</tr>
					<tr>
						<td style="height:80px">❤글 썸네일</td><td>요즘 재밌는 놀이</td><td>2022/08/07</td>
					</tr>
					<tr>
						<td style="height:80px">❤글 썸네일</td><td>맛있는 수박 고르는 법</td><td>2022/07/31</td>
					</tr>
					<tr>
						<td style="height:80px">❤글 썸네일</td><td>최고 수출 효자 과일은?</td><td>2022/07/23</td>
					</tr>				
				</table>
		</div><!-- my_center -->
		
		<div id="my_side_right"></div>
		
	</div><!-- my_main -->	
</div><!-- my_con -->
</body>
<jsp:include page="../Footer/footer.jsp"></jsp:include>
</html>