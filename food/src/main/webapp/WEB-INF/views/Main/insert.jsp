<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../Header/Header.jsp" %>

<link rel="stylesheet" href="../../../resources/CSS/Main_CSS/insert.css">

<div>
	<form action="/join" method ="post">
	
	
		<header>
		<h2>회원가입</h2>
		</header>
	
		<div id="insert_border">
		
		
		<div id="insert_cont">
	
			<div>
				<h4>이메일</h4>
				<input type="text" id="" class="insert_inputext_b">
				<input type="button" value="이메일 확인" class="insert_insert_b">
			</div><br>
			
			<div>
				<h4>아이디</h4>
				<input type="text" id="" class="insert_inputext_b" name="user_id">
				<input type="button" value="중복 확인" class="insert_insert_b">
			</div><br>
			
			<div>
				<h4>비밀번호</h4>
				<input type="text" id="" class="insert_inputext" name="user_pw">
			</div><br>
			
			<div>
				<h4>비밀번호 재확인</h4>
				<input type="text" id="" class="insert_inputext">
			</div><br>
			
			<div>
				<h4>이름</h4>
				<input type="text" id="" class="insert_inputext" name="user_name">
			</div><br>
			
			<div>
				<h4>닉네임</h4>
				<input type="text" id="" class="insert_inputext_b" name="user_nick">
				<input type="button" value="중복 확인" class="insert_insert_b">
			</div><br>
			
	        <div>
				<h4>주소</h4>
				<input type="button" id="insert_add" class="" value="주소 검색">
			</div><br>
			
			<div>
				<h4>성별</h4>																																																																																																																																																								<input type = "radio" name="gender">여자
				<input type = "radio" name="gender">선택안함
			</div><br>
			
			<div>
				<h4>생년월일</h4>	
				<input type="text" id="insert_birth" class="insert_inputext" placeholder="생년월일을 숫자만 입력해주세요. 예)19801205">
			</div><br>
			
			<div>
				<h4>휴대폰 번호</h4>
				<input type="text" id="" class="insert_inputext" placeholder=" '-' 없이 숫자만 입력해주세요. 예)01012345678"><br>
				<input type="button" id="insert_cellph" class="" value="인증번호 받기">
			</div><br>
			
			<div id=insert_term>
			<h4>이용 동의사항</h4>
				<div>
				<label><input type ="checkbox">전체 동의</label><br>
				<label><input type ="checkbox">(필수)본인은 만 14세 이상입니다.</label><br>
				<label><input type ="checkbox">(필수)이용 약관에 동의합니다.<a href="">약관 보기</a></label><br>
				<label><input type ="checkbox">(필수)개인정보 수집 및 이용에 동의합니다.<a href="">약관 보기</a></label><br>
				<label><input type ="checkbox">(선택)개인정보 수집 및 이용에 동의합니다.<a href="">약관 보기</a></label><br>
				<label><input type ="checkbox">(선택)SMS로 혜택 및 정보를 수신하겠습니다.<a href="">약관 보기</a></label><br>
				<label><input type ="checkbox">(선택)휴대폰으로 혜택 및 정보를 수신하겠습니다.<a href="">약관 보기</a></label><br><br>
				</div>
			</div>
			
			<div>
			<input type="submit" id = "insert_insert" value="가입하기">
			</div>
	
		</div>		
	
		</div>
		
		
	
	</form>
</div>
<%@ include file="../Footer/footer.jsp"%>
