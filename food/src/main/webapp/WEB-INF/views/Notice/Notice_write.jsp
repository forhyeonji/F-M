<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../Header/Header.jsp"%>



<div class="NOTI_container">

<div class="NOTI_main">	

	<form action="/notice_write" method="post">


		<h3 class="NOTI_bigTitle">공지 글쓰기</h3>
		
		<input type="checkbox" name="boldtitle"> 제목 강조

		
		
		<div class="NOTI_Border">
		<table class="NOTI_table">
	
		<tr>
			<td><input type="text" class="NOTI_WriteTitle" placeholder="제목을 입력해 주세요" name="title"></td>
		</tr>
		
	
		<tr>
			<td>
				<textarea style="resize: none" class="NOTI_textarea" placeholder="내용을 입력해 주세요" name="context" id="NOTI_textarea"></textarea>
				<p id="check_context" class="check_css">(0 / 최대 2000자)</p>
			</td>
		</tr>
	
		</table>
		</div> <!-- NOTI_Border -->
		
		<div class="NOTI_button">
			<input type="hidden" value="${sessionScope.user_id}" name="user_id">
			<input type="submit" class="NOTI_but" value="등록">
			<input type="button" class="NOTI_but" value="취소" onclick="location.href='notice?sep=noti'">
			<input type="hidden" value="noti" name="sep">
		</div> <!-- NOTI_button -->
		
	
	
	</form>
	
	
	
	
</div> <!-- main -->	
</div> <!-- container -->
<%@ include file="../Footer/footer.jsp"%>