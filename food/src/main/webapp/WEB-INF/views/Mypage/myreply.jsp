<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
				<div><a href="/mypage">마이페이지</a></div>
				<div><a href="/notice">공지사항</a></div>
				<div><a href="/QnA">자주하는 질문</a></div>
				<div><a href="/directQue">1:1 문의</a></div>
			</div>
		</div><!-- my_side_left -->

		<div id="my_center">
			<div id="my_aBtn">
				<a href="/mypage/mywrite"><button>📝내가 쓴 글</button></a>
				<a href="/mypage/mylike"><button>❤내가 좋아요 누른 글</button></a>
			</div>
				<table id="my_reply">
					<tr>
						<th>글번호</th>
						<th>작성한 댓글</th>
						<th>작성일자</th>
					</tr>
					<c:forEach items="${myreply}" var="myreply">
					<tr>					
						<td id="my_Tsize1">${myreply.bno }</td>
						<td id="my_Tsize2"><a href="/detail/${myreply.bno }">${myreply.context}</a></td>
						<td id="my_Tsize3">${myreply.reg_dt}</td>
					</tr>
					</c:forEach>
					<c:if test="${empty myreply }">
						<tr>
							<td colspan="3" id="my_nodataTb">작성된 댓글이 없습니다.</td>
						</tr>
					</c:if>							
				</table>

			<div id="my_paging">	
				<div>			
<!-- 이전버튼 -->
					<c:if test="${paging.prevBtn }">
						<a href="/mypage/myreply?pageNum=${paging.startPage-1}&amount=${paging.criteriaVO.amount}">이전</a>
					</c:if>

<!-- 페이징 처리 -->		
					<c:forEach begin="${paging.startPage }" end="${paging.endPage }" var="num">
						<a href="/mypage/myreply?pageNum=${num}&amount=${paging.criteriaVO.amount}">${num }</a>
					</c:forEach>

<!-- 다음버튼 -->			
					<c:if test="${paging.nextBtn }">
						<a href="/mypage/myreply?pageNum=${paging.startPage+1}&amount=${paging.criteriaVO.amount}">다음</a>
					</c:if>					
				</div>			
			</div>			
				
		</div><!-- my_center -->
		
		<div id="my_side_right"></div>
		
	</div><!-- my_main -->
</div><!-- my_con -->
</body>
<jsp:include page="../Footer/footer.jsp"></jsp:include>
</html>