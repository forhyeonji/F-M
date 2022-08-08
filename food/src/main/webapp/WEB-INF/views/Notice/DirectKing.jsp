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
	
	<label style="font-size : 50px">1:1 문의 답변하기</label>  <label>내가 말해주께~~~</label> <br><br>
	
				<select>
					<option>레시피 문의</option>
					<option>스토어 문의</option>
					<option>커뮤니티 문의</option>
					<option>기타 문의</option>
				</select>
				
				
	<table border="1">	
	
		<tr>
			<td width="300px">제목</td>
			<td width="100px">작성일</td>
			<td width="100px">답변여부</td>
		</tr>
		
		<tr>
			<td colspan="3"><a href="http://localhost:8080/directKing_answer">여기를 클릭하세요</a></td>
		</tr>
	
	</table>
</body>
</html>