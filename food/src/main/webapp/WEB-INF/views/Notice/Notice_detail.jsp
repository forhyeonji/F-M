<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	
	<h3>공지사항</h3>
	<p>여러분에게 중요한 공지를 알려드려여</p>
	
	<table border="1">
		
		<tr>
			<td>제목</td>
			<td>블라블라</td>
		</tr>
	
		<tr>
			<td>작성자</td>
			<td>핸지</td>
		</tr>
	
		<tr>
			<td>작성일자</td>
			<td>오늘</td>
		</tr>
		
		<tr>
		<td colspan="2" height="100px"></td>
		</tr>
		
	</table>
	
	<input type="button" value="이전글">
	<input type="button" value="다음글">
	<input type="button" value="목록" onclick="location.href='http://localhost:8080/notice'">

</body>
</html>