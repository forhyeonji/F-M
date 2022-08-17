<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../Header/Header.jsp"%>



<div id="container">

<div id="main">	


	<h3>공지 글쓰기</h3>
	
	
	<form action="/notice_write" method="post">
	
	<table>
	<tr>
		<td>
			<input type="checkbox"> 제목 강조
			<input type="checkbox"> 우선
		</td>
	</tr>
	
	<tr>
		<td><input type="text" name="title" id="title" placeholder="제목을 입력해 주세요"></td>
	</tr>
	
	<tr class="text">
		<td><textarea name="content" id="content" placeholder="내용을 입력해 주세요" ></textarea></td>
		
	</tr>

	</table>
	
	<div id="button">
		<input type="submit" class="but" value="등록">
		<input type="button" class="but" value="취소" onclick="location.href='http://localhost:8080/notice'">
	</div> <!-- button -->
	
	
	
	</form>
	
	
	
	
</div> <!-- main -->	
</div> <!-- container -->
<%@ include file="../Footer/footer.jsp"%>