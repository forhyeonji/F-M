<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../../../resources/CSS/Notice_CSS/NoticeList.css">
</head>
<body>
<%@ include file="../Header/Header.jsp" %>
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
		</div> <!-- main left -->
		
		
		
		
		
		<div id="main_center">
		<label id="notice_lable">공지사항</label>  <label>어쩌고 저쩌고~</label> <br><br>
		
		<input type="button" class="but" value="글쓰기" onclick="location.href='http://localhost:8080/notice_write'">
		<hr>
		<table>
		<tr id="bar">
			<td id="no" class="title_effect">No</td>
			<td id="title" class="title_effect">제목</td>
			<td id="writer" class="title_effect">작성자</td>
			<td id="regdate" class="title_effect">작성일</td>
		</tr>
		
		<tr>
			<td colspan="4" class="title_effect"><a href="http://localhost:8080/notice_detail">자세히 보려면 여기 클릭하세요</a></td>
		</tr>
		
		<tr>
			<td colspan="4" class="title_effect"><a href="http://localhost:8080/notice_detail">자세히 보려면 여기 클릭하세요</a></td>
		</tr>
		
		</table>
		</div> <!-- main_center -->
		
	
	</div> <!-- main -->
</div> <!-- container -->
</body>
</html>