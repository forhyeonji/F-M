<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="../../../resources/CSS/Notice_CSS/DirectQueList.css">
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
	</div>	<!-- main_left -->
	
	
	
	
			<div id="main_center">
			<div id="main_top">
			<label id="notice_lable">1:1 ����</label>  <label>�������� �ñ���?~~</label> <br><br>
			
			
			<table id="queTable">
			
				<tr>	
					<td width="260px"> ����ó <input type="text" placeholder="���Ͻô� �и� �����ּ���" id="tel"> </td>
			
					<td>
						<select>
							<option>������ ����</option>
							<option>����� ����</option>
							<option>Ŀ�´�Ƽ ����</option>
							<option>��Ÿ ����</option>
						</select>
					</td>
					
					<td id="button">
						<input type="submit" value="���" class="but">
					</td>
					
				</tr>
			
			
				<tr>
					<td colspan="3" class="text"><textarea placeholder="���ǻ����� �����ּ���."></textarea></td>
				</tr>
			
			</table>
			</div> <!-- main_top -->
			
			
			
			
			
			
			<div id="main_bottom">
			<h3>���� ���� ����</h3>
			<hr>
			
				
			<table id="listTable">	
			
				<tr>
					<td width="100px" id="category" class="title_effect">ī�װ�</td>
					<td width="300px" id="title" class="title_effect">����</td>
					<td width="100px" id="regdate" class="title_effect">�ۼ���</td>
					<td width="100px" id="check" class="title_effect">�亯����</td>
				</tr>
				
				<tr>
					<td colspan="4" class="title_effect"><a href="http://localhost:8080/directQue_detail">���⸦ Ŭ���ϼ���</a></td>
				</tr>
			
				<tr>
					<td colspan="4" class="title_effect"><a href="http://localhost:8080/directQue_detail">���⸦ Ŭ���ϼ���</a></td>
				</tr>
				
			</table>
			
			</div> <!-- main_bottom -->
			</div> <!-- main_center -->
	
	
	
	</div>	<!-- main -->
	
</div>	<!-- container -->
</body>
</html>