<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../Header/Header.jsp"%>



<div class="NOTI_King_container">

	<div class="NOTI_King_main">
	
		
		<div class="NOTI_King_main_left">
		<ul type="none" class="NOTI_leftBar">
			<li><a href="http://localhost:8080/notice" class="NOTI_a">공지사항</a></li>
			<li><a href="http://localhost:8080/QnA" class="NOTI_a">자주하는 질문</a></li>
			<li><a href="http://localhost:8080/directQue" class="NOTI_a">1:1 문의</a></li>
			<li><a href="http://localhost:8080/directKing" class="NOTI_a">1:1 문의 관리자</a></li>
			<li><a>실시간 문의</a></li>
		</ul>
		</div> <!-- main left -->
		
		
		
		
		
		<div class="NOTI_King_main_center">
		<label class="NOTI_notice_lable">자주하는 질문</label>  <label>어쩌고 저쩌고~</label> <br><br>
		
		<input type="button" class="NOTI_but" value="글쓰기" onclick="location.href='http://localhost:8080/QnA_write'">
		<hr>
		
		
		<table id="qnaTd">

		</table>


		
		</div> <!-- main_center -->
	
	
	
	</div> <!-- main -->
	
</div> <!-- container -->

<%@ include file="../Footer/footer.jsp"%>