<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	
	<ul type="none">
		<li><a href="http://localhost:8080/notice">공지사항</a></li>
		<li><a href="http://localhost:8080/QnA">자주하는 질문</a></li>
		<li><a href="http://localhost:8080/directQue">1:1 문의</a></li>
		<li><a href="http://localhost:8080/directKing">1:1 문의 관리자</a></li>
		<li><a>실시간 문의</a></li>
	</ul>
	
	
	
	<label style="font-size : 50px">자주하는 질문</label>  <label>어쩌고 저쩌고~</label> <br><br>
	
	<input type="button" value="글쓰기" onclick="location.href='http://localhost:8080/QnA_write'">
	
	<table border="1">
	<tr>
		<td>No</td>
		<td>제목</td>
		<td>작성자</td>
		<td>작성일</td>
	</tr>
	
	<tr>
		<td colspan="4"><a href="http://localhost:8080/QnA_detail">자세히 보려면 여기 클릭하세요</a></td>
	</tr>
	
	</table>

</body>
</html>