<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="../../../resources/CSS/Notice_CSS/NoticeList.css">
</head>
<body>
<div id="container">

	<div id="main">
	
		
		<div id="main_left">
		<ul type="none">
			<li><a href="http://localhost:8080/notice">��������</a></li>
			<li><a href="http://localhost:8080/QnA">�����ϴ� ����</a></li>
			<li><a href="http://localhost:8080/directQue">1:1 ����</a></li>
			<li><a href="http://localhost:8080/directKing">1:1 ���� ������</a></li>
			<li><a>�ǽð� ����</a></li>
		</ul>
		</div> <!-- main left -->
		
		
		
		
		
		<div id="main_center">
		<label id="notice_lable">�����ϴ� ����</label>  <label>��¼�� ��¼��~</label> <br><br>
		
		<input type="button" class="but" value="�۾���" onclick="location.href='http://localhost:8080/QnA_write'">
		<hr>
		<table>
		<tr id="bar">
			<td id="no" class="title_effect">No</td>
			<td id="title" class="title_effect">����</td>
			<td id="writer" class="title_effect">�ۼ���</td>
			<td id="regdate" class="title_effect">�ۼ���</td>
		</tr>
		
		<tr>
			<td colspan="4" class="title_effect"><a href="http://localhost:8080/QnA_detail">�ڼ��� ������ ���� Ŭ���ϼ���</a></td>
		</tr>
		
		<tr>
			<td colspan="4" class="title_effect"><a href="http://localhost:8080/QnA_detail">�ڼ��� ������ ���� Ŭ���ϼ���</a></td>
		</tr>
		
		</table>
		</div> <!-- main_center -->
	
	
	
	</div> <!-- main -->
	
</div> <!-- container -->

</body>
</html>