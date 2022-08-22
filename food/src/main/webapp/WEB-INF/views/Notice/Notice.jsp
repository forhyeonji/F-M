<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../Header/Header.jsp" %>


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
		<label class="NOTI_notice_lable">공지사항</label>  <label>어쩌고 저쩌고~</label> <br><br>
		
		<input type="button" class="NOTI_button" value="글쓰기" onclick="location.href='http://localhost:8080/notice_write'">
		<hr>
		<table>
		<tr class="NOTI_bar">
			<td class="NOTI_QnA_no" class="NOTI_title_effect">No</td>
			<td class="NOTI_QnA_title" class="NOTI_title_effect">제목</td>
			<td class="NOTI_QnA_writer" class="NOTI_title_effect">작성자</td>
			<td class="NOTI_QnA_regdate" class="NOTI_title_effect">작성일</td>
		</tr>
		
		<tr>
			<td colspan="4" class="NOTI_title_effect"><a href="http://localhost:8080/notice_detail">자세히 보려면 여기 클릭하세요</a></td>
		</tr>
		
		<tr>
			<td colspan="4" class="NOTI_title_effect"><a href="http://localhost:8080/notice_detail">자세히 보려면 여기 클릭하세요</a></td>
		</tr>
		
		</table>
		</div> <!-- main_center -->
		
	
	</div> <!-- main -->
</div> <!-- container -->
<%@ include file="../Footer/footer.jsp"%>