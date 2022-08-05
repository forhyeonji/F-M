<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div>
	<div>
	<h2>회원가입</h2>
	</div>

	<div>
	<table border="1">
		<tr>
			<td>아이디*</td>
			<td><input type = "text">
			<input type= "submit" value="중복확인"></td>
		</tr>
		<tr>
			
			<td>비밀번호*</td>
			<td><input type = "text"></td>
		</tr>
		<tr>
			<td>비밀번호 확인*</td>
			<td><input type = "text"></td>
		</tr>
		<tr>
			<td>이름*</td>
			<td><input type = "text"></td>
		</tr>
		<tr>
			<td>생년월일</td>
			<td><input type = "date"></td>
		</tr>
		<tr>
			<td>성별*</td>
			<td>
			<input type = "radio">남자
			<input type = "radio">여자
			<input type = "radio">선택안함
			</td>
		</tr>
		<tr>
			<td>이메일*</td> 
			<td>
			<input type="text">@<select>
				<option>직접입력</option>
				<option>naver.com</option>
				<input type= "submit" value="중복확인">
				</select>
			</td>
		</tr>
		<tr>
			<td>주소*</td>
			<td>
				<input type = "text">주소 버튼 입력
			</td>
		</tr>
		<tr>
		<td>휴대폰*</td>
		<td>
			<input type="text"><input type="submit" value="인증번호 받기">
		</td>
		</tr>
		<tr>
			<td>추천인</td>
			<td><input type = "radio">있음 <input type = "radio">없음<br><input type="text"><input type="submit" value="아이디 확인"></td>   
		</tr>
		<tr>
			<td colspan="2">동의 사항<br>
				<input type="checkbox">
	      		<label>(필수)본인은 만 14세 이상입니다.</label><br>
	        	<input type="checkbox">
	        	<label>(필수)이용약관</label><br>
	        	<input type="checkbox">
		        <label>(필수)개인정보수집 및 이용동의</label><br>
				<input type="checkbox">
	      		<label>(선택)쇼핑 혜택 SMS 및 이메일 수신</label><br>
	   		</td>
		</tr>
	</table>
	</div>
</div>
</body>
</html>