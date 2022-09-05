<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>myreply</title>
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
				<img id="my_titleim" alt="내댓글" src="../../../resources/image/mypage/myreply.png">
				<p id="my_titlep">내 댓글</p></div>
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
				<a href="http://localhost:8080/mypage/mylike"><button>❤내가 좋아요 누른 글</button></a>
			</div>
				<table id="my_reply">
					<tr>
						<th>💬</th><th>제목</th><th>작성일자</th>
					</tr>
					<tr>
						<td style="font-size:150%">💬</td><td>좋아요!</td><td>2022/08/08</td>
					</tr>
					<tr>
						<td style="font-size:150%">💬</td><td>잘 보고 가요!</td><td>2022/08/01</td>
					</tr>
					<tr>
						<td style="font-size:150%">💬</td><td>푸하하핳ㅋㅋ</td><td>2022/07/30</td>
					</tr>					
					<tr>
						<td style="font-size:150%">💬</td><td>얼만가요?</td><td>2022/07/26</td>
					</tr>				
					<tr>
						<td style="font-size:150%">💬</td><td>ㅋㅋㅋㅋㅋ</td><td>2022/07/25</td>
					</tr>				
				</table>
		</div><!-- my_center -->
		
		<div id="my_side_right"></div>
		
	</div><!-- my_main -->
</div><!-- my_con -->
</body>
<jsp:include page="../Footer/footer.jsp"></jsp:include>
</html>