<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../Header/Header.jsp"%>



<div class="NOTI_container">

<div class="NOTI_main">	

	<form action="/notice_write" method="post">


		<h3 class="NOTI_bigTitle">공지 글쓰기</h3>
		
		<input type="checkbox" name="boldtitle"> 제목 강조
		<input type="checkbox" name="FirstBoard"> 우선
		
		
		<div class="NOTI_Border">
		<table class="NOTI_table">
	
		<tr>
			<td><input type="text" class="NOTI_WriteTitle" placeholder="제목을 입력해 주세요" name="title"></td>
		</tr>
		
	
		<tr>
			<td><textarea class="NOTI_textarea" placeholder="내용을 입력해 주세요" name="context"></textarea></td>
			
		</tr>
	
		</table>
		</div> <!-- NOTI_Border -->
		
		<div class="NOTI_button">
			<input type="submit" class="NOTI_but" value="등록">
			<input type="button" class="NOTI_but" value="취소" onclick="location.href='http://localhost:8080/notice'">
			<input type="text" value="공지" name="sep">
		</div> <!-- NOTI_button -->
		
	
	
	</form>
	
	
	
	
</div> <!-- main -->	
</div> <!-- container -->
<%@ include file="../Footer/footer.jsp"%>