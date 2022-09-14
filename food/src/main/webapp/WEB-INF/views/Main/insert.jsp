<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script src="/resources/JS/Main/insertAdd.js"></script>
<script src="/resources/JS/Main/insert.js"></script>

<link rel="stylesheet" href="../../../resources/CSS/Main_CSS/insert.css">


<div class="insert_homelogo">
	<a href="http://localhost:8080"><img class="login_img" src="../../../resources/image/main_image/home_logo_ex.png"></a>
</div>

<div>
	<form action="/insert" method ="post" name="insert_form" onsubmit="return join_check()">
		
		<div class="insert_head">
			<h2 class="insert_h2">회원가입</h2>
		</div>
	
		<div class="insert_border">
		
			<div class="insert_inborder">
		
				<div id="insert_email">
					<h4>이메일*</h4><br>
					<input type="text" id="user_email" class="insert_inputext_b" name="user_email" oninput="idCheck()">
					<input type="button" value="중복 확인" class="insert_insert_b">
				</div><br>
				
				<div id="insert_id"><br>
					<h4>아이디*</h4><br>
					<input type="text" id="user_id" class="insert_inputext_b" name="user_id">
					<input type="button" id="idCheck" value="중복 확인" class="insert_insert_b">
				</div><br>
				
				<div id="insert_pw"><br>
					<h4>비밀번호*</h4><br>
					<input type="text" id="user_pw" class="insert_inputext" name="user_pw">
				</div><br>
				
				<div id="insert_pwcheck"><br>
					<h4>비밀번호 확인*</h4><br>
					<input type="text" id="user_repw" class="insert_inputext">
				</div><br>
				
				<div id="insert_name"><br>
					<h4>이름*</h4><br>
					<input type="text" id="user_name" class="insert_inputext" name="user_name">
				</div><br>
				
				<div class="insert_addrbox"><br>
					<h4>주소*</h4><br>
					<div class="insert_addr">
						<button type="button" class="btn btn-default" onclick="PostCode();">주소 찾기</button>
						<input class="insert_ad" placeholder="우편번호" name="user_zip" id="user_zip" type="text" readonly="readonly">                      
						<input class="insert_ad" placeholder="도로명 주소" name="user_addr1" id="user_addr1" type="text" readonly="readonly">
						<input class="insert_ad" placeholder="상세주소" name="user_addr2" id="user_addr2" type="text">
					</div>    
					<!-- <input type="button" id="user_add" class="insert_add" name="user_add" value="주소 검색"> -->
					
				</div><br>
				
				<div class="insert_gender"><br>
					<h4>성별</h4>	<br>
					<div class="insert_gender_in">
						<div><input type = "radio" id="user_male" name="user_gender" value="male">남자</div>
						<div><input type = "radio" id="user_female" name="user_gender" value="female">여자</div>
						<div><input type = "radio" id="user_none" name="user_gender" value="none">선택안함</div>
					</div>
				</div><br>
				
				<div id="insert_birth"><br>
					<h4>생년월일</h4><br>
					<input type="text" id="user_birth" class="insert_inputext" name="user_birth" placeholder="생년월일을 숫자만 입력해주세요. 예)19801205">
				</div><br>
				
				<div id="insert_phone"><br>
					<h4>휴대폰 번호*</h4><br>
					<input type="text" id="user_phone" class="insert_inputext" name="user_phone" placeholder=" '-' 없이 숫자만 입력해주세요. 예)01012345678"><br><br>
					<input type="button" id="insert_cellph" value="인증번호 받기">
				</div><br>
				
				<div id=insert_term><br>
				<h4>이용 동의사항*</h4><br>
					<div id=insert_term_in>
						<div><input type ="checkbox"></div>
						<div>전체 동의</div><br>
						<div><input type ="checkbox" id="user_term_1"></div>
						<div>(필수)본인은 만 14세 이상입니다.</div><br>
						<div><input type ="checkbox" id="user_term_2"></div>
						<div>(필수)이용 약관에 동의합니다.<a href="">약관 보기</a></div><br>
						<div><input type ="checkbox" id="user_term_3"></div>
						<div>(필수)개인정보 수집 및 이용에 동의합니다.<a href="">약관 보기</a></div><br>
						<div><input type ="checkbox"></div>
						<div>(선택)개인정보 수집 및 이용에 동의합니다.<a href="">약관 보기</a></div><br>
						<div><input type ="checkbox"></div>
						<div>(선택)SMS로 혜택 및 정보를 수신하겠습니다.<a href="">약관 보기</a></div><br>
						<div><input type ="checkbox"></div>
						<div>(선택)휴대폰으로 혜택 및 정보를 수신하겠습니다.<a href="">약관 보기</a></div><br><br>
					</div>
				</div><br>
				
				<div id="insert_submit"><br>
				<input type="submit" id = "insert_insert" value="가입하기">
				<!-- <input type="submit" id = "insert_insert" value="가입하기"> -->
				</div><br>
		
			</div>		
	
		</div>
		
		
	
	</form>
</div>
