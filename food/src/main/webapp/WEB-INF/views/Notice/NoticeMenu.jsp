<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<div class="NOTI_King_container">

	<div class="NOTI_King_main">
	
	
		<div class="NOTI_King_main_left">
		<ul type="none" class="NOTI_leftBar">
			<li><a href="http://localhost:8080/notice?sep=noti" class="NOTI_a">공지사항</a></li>
			<li><a href="http://localhost:8080/QnA?sep=qna" class="NOTI_a">자주하는 질문</a></li>
			<li><a href="http://localhost:8080/directQue?sep=inquiry" class="NOTI_a">1:1 문의</a></li>
			
		<c:if test="${user_id=='root'}">
			<li><a href="http://localhost:8080/directKing?sep=inquiry" class="NOTI_a">1:1 문의 관리자</a></li>
		</c:if>		
		</ul>
		</div> <!-- main left -->