<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../Header/Header.jsp"%>



<div class="NOTI_container">

<div class="NOTI_main">	

	<form action="/notice/modify" method="post">


		<h3 class="NOTI_bigTitle">공지 수정하기</h3>
		
		<input type="checkbox" name="boldtitle"> 제목 강조
		
		
		<div>
		<table class="NOTI_table">
	
		<tr>
			<td><input type="text" class="NOTI_WriteTitle" value="${modify.title}" name="title"></td>
		</tr>
		
	
		<tr>
			<td><textarea class="NOTI_textarea" name="context" >${modify.context}</textarea></td>
			
		</tr>
	
		</table>
		</div> <!-- NOTI_Border -->
		
		<div id="divTest">
			<input type="submit" class="NOTI_but" value="수정">
			<input type="button" class="NOTI_but" value="취소" onclick="location.href='http://poceania.o-r.kr/notice?sep=noti'">
			<input type="hidden" value="${modify.bno}" name="bno">
		</div>
		
	
	
	</form>
	
	
	
	
</div> <!-- main -->	
</div> <!-- container -->
<%@ include file="../Footer/footer.jsp"%>