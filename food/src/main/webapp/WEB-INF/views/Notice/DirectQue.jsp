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
	
	<label style="font-size : 50px">1:1 ����</label>  <label>�������� �ñ���?~~</label> <br><br>
	
	
	<table>
	
		<tr>
		
			<td> ����ó <input type="text" placeholder="���Ͻô� �и� �����ּ���"> </td>
	
			<td>
				<select>
					<option>������ ����</option>
					<option>����� ����</option>
					<option>Ŀ�´�Ƽ ����</option>
					<option>��Ÿ ����</option>
				</select>
			</td>
			
			<td>
				<input type="submit" value="���">
			</td>
			
		</tr>
	
	
		<tr>
			<td colspan="3"><textarea placeholder="���ǻ����� �����ּ���."></textarea></td>
		</tr>
	
	</table>
	
	
	
	
	<h3>���� ���� ����</h3>
	
		
	<table border="1">	
	
		<tr>
			<td width="300px">����</td>
			<td width="100px">�ۼ���</td>
			<td width="100px">�亯����</td>
		</tr>
		
		<tr>
			<td colspan="3"><a href="http://localhost:8080/directQue_detail">���⸦ Ŭ���ϼ���</a></td>
		</tr>
	
	</table>

</body>
</html>