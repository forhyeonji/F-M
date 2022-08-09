<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="../../../resources/CSS/Notice_CSS/DirectKing.css">
</head>
<body>
<div id="container">

<div id="main">


	<div id="main_left">
		<ul type="none">
			<li><a href="http://localhost:8080/notice">공지사항</a></li>
			<li><a href="http://localhost:8080/QnA">자주하는 질문</a></li>
			<li><a href="http://localhost:8080/directQue">1:1 문의</a></li>
			<li><a href="http://localhost:8080/directKing">1:1 문의 관리자</a></li>
			<li><a>실시간 문의</a></li>
		</ul>
	</div>
	
	
	
	
	<div id="main_center">
		<label id="notice_lable">1:1 문의 관리자</label>  <label>내가 말해주께~~~</label> <br><br>
		
					<select>
						<option>레시피 문의</option>
						<option>스토어 문의</option>
						<option>커뮤니티 문의</option>
						<option>기타 문의</option>
					</select>
					
		<hr>	
		<table>	
		
			<tr id="bar">
				<td width="300px" class="title_effect" id="title">제목</td>
				<td width="100px" class="title_effect" id="regdate">작성일</td>
				<td width="100px" class="title_effect" id="check">답변여부</td>
			</tr>
			
			<tr>
				<td colspan="3" class="title_effect"><a href="http://localhost:8080/directKing_answer">여기를 클릭하세요</a></td>
			</tr>
			
			<tr>
				<td colspan="3" class="title_effect"><a href="http://localhost:8080/directKing_answer">여기를 클릭하세요</a></td>
			</tr>
		
		</table>
		
	</div> <!-- main_center -->
	
	
	
	
</div> <!-- main -->
</div> <!-- container -->	
</body>
</html>