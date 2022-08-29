<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
		
		<input type="button" class="NOTI_but" value="글쓰기" onclick="location.href='http://localhost:8080/notice_write'">
		<hr>
		<table class="NOTI_Table">
		<tr class="NOTI_bar">
			<td class="NOTI_QnA_no" class="NOTI_title_effect">No</td>
			<td class="NOTI_QnA_title" class="NOTI_title_effect">제목</td>
			<td class="NOTI_QnA_writer" class="NOTI_title_effect">작성자</td>
			<td class="NOTI_QnA_regdate" class="NOTI_title_effect">작성일</td>
		</tr>
		
		<!-- for문 시작 -->
		<c:forEach items="${list}" var="Notiboardlist">
			<tr>
				<td class="NOTI_list_no">${Notiboardlist.bno}</td>
				<td class="NOTI_list_title"><a href="notice_detail?bno=${Notiboardlist.bno}" class="NOTI_a">${Notiboardlist.title}</a></td>
				<td class="NOTI_list_writer">${Notiboardlist.user_id}</td>
				<td class="NOTI_list_regdate">${Notiboardlist.reg_dt}</td>
			</tr>
		</c:forEach>
		
		
		</table>
		</div> <!-- main_center -->
		
	
	</div> <!-- main -->
</div> <!-- container -->
<%@ include file="../Footer/footer.jsp"%>