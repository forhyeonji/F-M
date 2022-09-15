<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../Header/Header.jsp"%>



<div class="NOTI_container">

	<div id="NOTI_main">
		
		
		<div id="NOTI_main_top">	
		<h3 class="NOTI_bigTitle">1:1 문의 답변하기</h3>
		
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
				<td colspan="2" class="NOTI_text"><textarea placeholder="답변을 입력해 주세요." class="NOTI_textarea"></textarea></td>
			</tr>
			</table>
			</div> <!-- main_bottom -->
			
			
			<div class="NOTI_button">

				<input type="submit" value="등록" class="NOTI_but">
				<input type="button" value="취소" onclick="location.href='http://localhost:8080/directKing'" class="NOTI_but">
			</div> <!-- button -->
			
		
		
		


	</div> <!-- main -->


</div>  <!-- container -->

<%@ include file="../Footer/footer.jsp"%>