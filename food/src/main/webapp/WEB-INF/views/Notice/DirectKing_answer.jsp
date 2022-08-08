<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>

<link rel="stylesheet" href="../../../resources/CSS/Notice_CSS/DirectDetail.css">
</head>
<body>
<div id="container">

	<div id="main">
		
		
		<div id="main_top">	
		<h3>1:1 문의 답변하기</h3>
		
		<table>
			<tr>
				<td class="label">작성자</td>
				<td class="label_answer">핸지</td>
			</tr>
			
			<tr>
				<td class="label">작성일자</td>
				<td class="label_answer">오늘내일내일오늘</td>
			</tr>
			
			<tr>
				<td class="label">카테고리</td>
				<td class="label_answer">커뮤니티 문의</td>
			</tr>
			
			<tr>
				<td colspan="2" class="text" id="question"><p>요로쿵저러쿵 어쩌나요?</p></td>
			</tr>
			
			</table>
			
			</div> <!-- main_top -->
			
			
			
			<div id="main_bottom">
			<hr>
			<h4 style="color:gray">답변</h4>
			<hr>
			
			
			<table>
			<tr>
				<td colspan="2" class="text"><textarea placeholder="답변을 입력해 주세요."></textarea></td>
			</tr>
			</table>
			</div> <!-- main_bottom -->
			
			
			<div id="button">

				<input type="submit" value="등록" class="but">
				<input type="button" value="취소" onclick="location.href='http://localhost:8080/directKing'" class="but">
			</div> <!-- button -->
			
		
		
		


	</div> <!-- main -->


</div>  <!-- container -->

</body>
</html>