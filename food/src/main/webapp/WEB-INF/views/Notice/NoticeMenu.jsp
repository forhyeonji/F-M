<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<div class="NOTI_King_container">

	<div class="NOTI_King_main">
	
	
		<div class="NOTI_King_main_left">
		<ul type="none" class="NOTI_leftBar">
			<li><a href="http://poceania.o-r.kr/notice?sep=noti" class="NOTI_a">공지사항</a></li>
			<li><a href="http://poceania.o-r.kr/QnA?sep=qna" class="NOTI_a">자주하는 질문</a></li>
			<li><a href="http://poceania.o-r.kr/directQue?sep=inquiry" class="NOTI_a">1:1 문의</a></li>
			
		<c:if test="${user_id=='root' || user_id=='manager'}">
			<li><a href="http://poceania.o-r.kr/directKing?sep=inquiry" class="NOTI_a">1:1 문의 관리자</a></li>
		</c:if>		
		</ul>
		</div> <!-- main left -->