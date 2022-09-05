<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>mywrite</title>
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
				<img id="my_titleim" alt="내글" src="../../../resources/image/mypage/mywrite.png">
				<p id="my_titlep">내가 쓴 글</p></div>

			<div id="my_menu">
				<div><a href="http://localhost:8080/mypage">마이페이지</a></div>
				<div><a href="http://localhost:8080/notice">공지사항</a></div>
				<div><a href="http://localhost:8080/QnA">자주하는 질문</a></div>
				<div><a href="http://localhost:8080/directQue">1:1 문의</a></div>
			</div>
		</div><!-- my_side_left -->

		<div id="my_center">
			<div>
				<a href="http://localhost:8080/mypage/myreply"><button>💬내 댓글</button></a>
				<a href="http://localhost:8080/mypage/mylike"><button>❤내가 좋아요 누른 글</button></a>
			</div>
				<table id="my_write">
					<tr>
						<th>글번호</th><th>제목</th><th>작성일자</th>
					</tr>
					<tr><p>DB 글에 아이디가 없어서 셀렉이 안됨 / 그래서 전체출력중</p></tr>
<!-- 원래 링크없던 버전 / for문 시작 -->	
					<c:forEach items="${mywrite}" var="mywrite">
					<tr>
						<td>${mywrite.bno }</td>
						<td><a href="/detail/${mywrite.bno }">${mywrite.title}</a></td>
						<td>${mywrite.reg_dt}</td>
					</tr>
					</c:forEach>
				

<!-- 글제목에 링크연결 for문
					<c:forEach items="${mywritedetail }" var="mywrite" >
						<tr>
							<td>${mywrite.bno }</td>
							<td><a href="/community/detail?bno">${mywrite.title }</a></td>
							<td>${mywrite.reg_dt }</td>
						</tr>
					</c:forEach>
 -->
					</table>
				<div>
<!-- 이전버튼 -->			
					<c:if test="${paging.prevBtn }">
						<a href="/mypage/mywrite?pageNum=${paging.startPage-1}&amount=${paging.criteriaVO.amount}">이전</a>
					</c:if>

<!-- 페이징 처리 -->		
					<c:forEach begin="${paging.startPage }" end="${paging.endPage }" var="num">
						<a href="/mypage/mywrite?pageNum=${num}&amount=${paging.criteriaVO.amount}">${num }</a>
					</c:forEach>

<!-- 다음버튼 -->			
					<c:if test="${paging.nextBtn }">
						<a href="/mypage/mywrite?pageNum=${paging.startPage+1}&amount=${paging.criteriaVO.amount}">다음</a>
					</c:if>					
				</div>			
				
		</div><!-- my_center -->
		
		<div id="my_side_right"></div>
		
	</div><!-- my_main -->
</div><!-- my_container -->
</body>
<jsp:include page="../Footer/footer.jsp"></jsp:include>
</html>