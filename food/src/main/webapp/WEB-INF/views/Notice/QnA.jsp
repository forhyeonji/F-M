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
		<li><a href="http://localhost:8080/notice">��������</a></li>
		<li><a href="http://localhost:8080/QnA">�����ϴ� ����</a></li>
		<li><a href="http://localhost:8080/directQue">1:1 ����</a></li>
		<li><a href="http://localhost:8080/directKing">1:1 ���� ������</a></li>
		<li><a>�ǽð� ����</a></li>
	</ul>
	
	
	
	<label style="font-size : 50px">�����ϴ� ����</label>  <label>��¼�� ��¼��~</label> <br><br>
	
	<input type="button" value="�۾���" onclick="location.href='http://localhost:8080/QnA_write'">
	
	<table border="1">
	<tr>
		<td>No</td>
		<td>����</td>
		<td>�ۼ���</td>
		<td>�ۼ���</td>
	</tr>
	
	<tr>
		<td colspan="4"><a href="http://localhost:8080/QnA_detail">�ڼ��� ������ ���� Ŭ���ϼ���</a></td>
	</tr>
	
	</table>

</body>
</html>