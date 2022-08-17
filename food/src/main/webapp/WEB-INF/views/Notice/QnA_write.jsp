<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../Header/Header.jsp"%>



<div id="container">

<div id="main">	

	
	<h3>자주하는 질문 글쓰기</h3>
	
	<table>
	<tr>
		<td>
			<input type="checkbox"> 제목 강조
			<input type="checkbox"> 우선
		</td>
	</tr>
	
	<tr>
		<td><input type="text" id="title" placeholder="제목을 입력해 주세요"></td>
	</tr>
	
	<tr class="text">
		<td><textarea id="content" placeholder="내용을 입력해 주세요" ></textarea></td>
	</tr>
	
	</table>
	
	<div id="button">
		<input type="submit" class="but" value="등록">
		<input type="button" class="but" value="취소" onclick="location.href='http://localhost:8080/QnA'">
	</div> <!-- button -->
	
	
</div> <!-- main -->	
</div> <!-- container -->
	
<%@ include file="../Footer/footer.jsp"%>