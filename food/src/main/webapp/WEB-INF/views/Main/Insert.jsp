<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">

	h2 {
	text-align : center;
	}

	span {
	color : red;
	}

	container{
	display:flex; justify-content:center;
	}
	
	footer{
	display:flex; justify-content:center;
	}
	
	#insert_button {
	margin : auto;
	}
	
	table td {
 	width: 300px;
	}
	
	




</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form method ="post">


	<header>
	<h2>회원가입</h2>
	</header>

	<container>
	<div id="insert_form">
	<table>
		<tr>
			<td>아이디<span>*</span></td>
			<td><input type = "text">
			<input type= "submit" value="중복확인"></td>
		</tr>
		<tr>
			
			<td>비밀번호<span>*</span></td>
			<td><input type = "text"></td>
		</tr>
		<tr>
			<td>비밀번호 확인<span>*</span></td>
			<td><input type = "text"></td>
		</tr>
		<tr>
			<td>이름<span>*</span></td>
			<td><input type = "text"></td>
		</tr>
		<tr>
			<td>생년월일</td>
			<td><input type = "date"></td>
		</tr>
		<tr>
			<td>성별<span>*</span></td>
			<td>
			<input type = "radio" name="gender">남자
			<input type = "radio" name="gender">여자
			<input type = "radio" name="gender">선택안함
			</td>
		</tr>
		<tr>
			<td>이메일<span>*</span></td> 
			<td>
			<input type="text">@
				<select>
				<option>직접입력</option>
				<option>naver.com</option>
				<input type= "submit" value="중복확인">
				</select>
			</td>
		</tr>
		<tr>
			<td>주소<span>*</span></td>
			<td>
				<input type = "text">주소 버튼 입력
			</td>
		</tr>
		<tr>
		<td>휴대폰<span>*</span></td>
		<td>
			<input type="text"><input type="submit" value="인증번호 받기">
		</td>
		</tr>
		<tr>
			<td>추천인</td>
			<td><input type = "radio" name="reco">있음 <input type = "radio" name="reco">없음<br><input type="text"><input type="submit" value="아이디 확인"></td>   
		</tr>
		<tr>
			<td colspan="2">동의 사항<br>
				<input type="checkbox">
	      		<label>전체 동의</label>
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
	</container>
	<br>
	<br>
	

	<footer>
	<div id="insert_button">
	<input type="submit" formaction="login" value="완료 후 로그인 창으로">
	<input type="submit" formaction="main" value="완료 후 메인 페이지로">
	</div>
	</footer>
	

</form>
</body>
</html>