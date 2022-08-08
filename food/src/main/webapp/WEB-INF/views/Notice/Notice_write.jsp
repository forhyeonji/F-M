<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	
	
	<h3>공지 작성</h3>
	
	<table>
	<tr>
		<td>
			<input type="checkbox"> 제목 강조
			<input type="checkbox"> 우선
		</td>
	</tr>
	
	<tr>
		<td><input type="text" placeholder="제목을 입력해 주세요"></td>
	</tr>
	
	<tr>
		<td><textarea placeholder="내용을 입력해 주세요" ></textarea></td>
	</tr>
	
	<tr>
		<td>
		<input type="submit" value="등록">
		<input type="button" value="취소" onclick="location.href='http://localhost:8080/notice'">
		</td>
	</tr>
	
	</table>

</body>
</html>