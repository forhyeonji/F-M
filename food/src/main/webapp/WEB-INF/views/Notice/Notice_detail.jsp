<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../Header/Header.jsp"%>



<div id="container">


<div id="main">

	<h3>공지사항</h3>
	
	
	
	<table>
		
		<tr>
			<td class="label">제목</td>
			<td class="label_answer">블라블라</td>
		</tr>
	
		<tr>
			<td class="label">작성자</td>
			<td class="label_answer">핸지</td>
		</tr>
	
		<tr>
			<td class="label">작성일자</td>
			<td class="label_answer">오늘</td>
		</tr>
		
		<tr>
		<td colspan="2" height="600px"> 여기 공지가 있다구용</td>
		</tr>
	</table>
	
	
	<hr>
	<input type="button" value="이전글" class="but">
	<input type="button" value="다음글" class="but">
	<input type="button" value="목록"  class="but" onclick="location.href='http://localhost:8080/notice'">



</div> <!-- main -->

</div> <!-- container -->
<%@ include file="../Footer/footer.jsp"%>