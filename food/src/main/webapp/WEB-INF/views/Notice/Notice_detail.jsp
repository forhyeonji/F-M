<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../Header/Header.jsp"%>



<div class="NOTI_container">


<div class="NOTI_main">

	<h3 class="NOTI_bigTitle">공지사항</h3>

	<table class="NOTI_table">
		
		<tr>
			<td class="NOTI_label">제목</td>
			<td class="NOTI_label_answer">블라블라</td>
		</tr>
	
		<tr>
			<td class="NOTI_label">작성자</td>
			<td class="NOTI_label_answer">핸지</td>
		</tr>
	
		<tr>
			<td class="NOTI_label">작성일자</td>
			<td class="NOTI_label_answer">오늘</td>
		</tr>
		
		<tr>
		<td colspan="2" height="600px"> 여기 공지가 있다구용</td>
		</tr>
	</table>
	
	
	
	<input type="button" value="이전글" class="NOTI_but">
	<input type="button" value="다음글" class="NOTI_but">
	<input type="button" value="목록"  class="NOTI_but" onclick="location.href='http://localhost:8080/notice'">



</div> <!-- main -->

</div> <!-- container -->
<%@ include file="../Footer/footer.jsp"%>