<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../Header/Header.jsp"%>



<div class="NOTI_container">

<div class="NOTI_main">	


	<h3 class="NOTI_bigTitle">공지 글쓰기</h3>
	
	
	<form action="/notice_write" method="post">
	
	<table class="NOTI_table">
	<tr>
		<td>
			<input type="checkbox"> 제목 강조
			<input type="checkbox"> 우선
		</td>
	</tr>
	
	<tr>
		<td><input type="text" class="NOTI_WriteTitle" placeholder="제목을 입력해 주세요"></td>
	</tr>
	
	<tr>
		<td><textarea class="NOTI_textarea" placeholder="내용을 입력해 주세요" ></textarea></td>
		
	</tr>

	</table>
	
	<div class="NOTI_button">
		<input type="submit" class="NOTI_but" value="등록">
		<input type="button" class="NOTI_but" value="취소" onclick="location.href='http://localhost:8080/notice'">
	</div> <!-- button -->
	
	
	
	</form>
	
	
	
	
</div> <!-- main -->	
</div> <!-- container -->
<%@ include file="../Footer/footer.jsp"%>