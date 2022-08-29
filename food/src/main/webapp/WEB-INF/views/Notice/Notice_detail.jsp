<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../Header/Header.jsp"%>



<div class="NOTI_container">


<div class="NOTI_main">


	<form method="post">
	<h3 class="NOTI_bigTitle">공지사항</h3>

	<table class="NOTI_table">
		
		<tr>
			<td class="NOTI_label">제목</td>
			<td class="NOTI_label_answer">${detail.title}</td>
		</tr>
	
		<tr>
			<td class="NOTI_label">작성자</td>
			<td class="NOTI_label_answer">${detail.user_id}</td>
		</tr>
	
		<tr>
			<td class="NOTI_label">작성일자</td>
			<td class="NOTI_label_answer">${detail.reg_dt}</td>
		</tr>
		
		<tr>
		<td colspan="2" height="600px">${detail.content}</td>
		</tr>
	</table>
	

	
	<a href="notice_detail?bno=${Notiboardlist.bno}"><input type="button" value="이전글" class="NOTI_but"></a>
	<input type="button" value="다음글" class="NOTI_but">
	<input type="button" value="목록"  class="NOTI_but" onclick="location.href='http://localhost:8080/notice'">
	
	
	<input type="button" value="수정" onclick="location.href='/notice/modify?bno=${detail.bno}'">
	<input type="submit" value="삭제" formaction="/notice/remove">
	<input type="text" value="${detail.bno}" name="bno">
	
	
</form>


</div> <!-- main -->

</div> <!-- container -->
<%@ include file="../Footer/footer.jsp"%>