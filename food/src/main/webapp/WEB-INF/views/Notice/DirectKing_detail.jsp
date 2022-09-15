<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../Header/Header.jsp"%>



<div id="NOTI_container">

	<div id="NOTI_main">
		
		
	<div class="NOTI_main_top">	
	<h3 class="NOTI_bigTitle">내가 남긴 문의</h3>
	
	<table class="NOTI_table">

		<tr>
			<td class="NOTI_label">작성자</td>
			<td class="NOTI_label_answer">핸지</td>
		</tr>
		
		<tr>
			<td class="NOTI_label">작성일자</td>
			<td class="NOTI_label_answer">오늘내일내일오늘</td>
		</tr>
		
		<tr>
			<td class="NOTI_label">카테고리</td>
			<td class="NOTI_label_answer">커뮤니티 문의</td>
		</tr>
		
		
		<tr>
			<td colspan="2" class="NOTI_text"><p>요로쿵저러쿵 어쩌나요?</p></td>
		</tr>
	</table>
			</div> <!-- main_top -->
			
			
			
	<div id="NOTI_main_bottom">

	
	<h3 class="NOTI_bigTitle">답변</h3>
	

	<table class="NOTI_table">
		<tr>
			<td height="400">요로쿵저러쿵 저쩌세요 ^^</td>
		</tr>
	</table>
	
	</div> <!-- main_bottom -->
		

			
	<div class="NOTI_button">
	<input type="button" value="목록" onclick="location.href='http://localhost:8080/directQue'" class="NOTI_but">
	
	
	</div> <!-- button -->
			

	</div> <!-- main -->


</div>  <!-- container -->
<%@ include file="../Footer/footer.jsp"%>