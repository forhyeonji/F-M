<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script src="/resources/JS/Main/insertAdd.js"></script>


<link rel="stylesheet" href="../../../resources/CSS/Main_CSS/insert.css">


<div class="insert_homelogo">
	<a href="/"><img src="../../../resources/image/HeaderImg/푸렌드2.png"></a>
</div>

<div class="insert_border">

	<form action="/insert" method ="post" name="insert_form"  id="insert_form">
		
		<br><br>
		<div class="insert_top">
			<h2 class="insert_h2">회원가입</h2>
		</div>
	
		<div class="insert_wrap">
		
			<div class="insert_inWrap">
		
				<div id="insert_email">
					<div class="insert_h4">
						<h4>이메일</h4><br>
					</div>
					<div class="email_check_wrap">
						<input type="text" id="user_email" class="insert_inputext" name="user_email" placeholder="이메일을 입력하세요.">
					</div><br>
					<div id="insert_emailNumber_box">
						<input type="text" id="insert_emailNumber" class="insert_inputext" disabled="disabled" placeholder="인증번호를 입력하세요.">
					</div>
					<br>
					<div>
						<button type="button" id="insert_emailbtn" class="insert_add">인증번호 받기</button>
					</div>
					<br>
					<div>
						<span class="insert_emailNone">이메일을 입력하세요.</span>
					</div>
					<br>
					<div>
						<span class="insert_emailHave">이메일이 이미 존재합니다.</span>
					</div>
					<br>
					<div>
						<span class="insert_emailFalse">이메일 양식을 다시 확인하세요.</span>
					</div>
					<br>
					<div>
						<span class="insert_emailTrue">사용 가능한 이메일입니다.</span>
					</div>
					<div>
						<span class="insert_emailNumber_TF"></span>
					</div>
				</div><br>
				
				
				<div id="insert_phone"><br>
					<div>
						<h4>휴대폰 번호</h4><br>
					</div>
					<div>
						<input type="text" id="user_phone" class="insert_inputext" name="user_phone" placeholder=" "-" 없이 숫자만 입력해주세요. 예)01012345678"><br><br>
					</div>
					<br>
					<div>
						<span class="insert_phoneNone">휴대폰 번호를 입력하세요.</span>
					</div>
					<div>
						<span class="insert_phoneHave">번호가 이미 존재합니다.</span>
					</div>
					<div>
						<span class="insert_phoneFalse">휴대폰 번호에는 숫자와 하이픈(-)만을 입력해주세요.</span>
					</div>
					<div>
						<span class="insert_phoneTrue">사용 가능한 휴대폰 번호입니다.</span>
					</div>
				</div><br>
				
				
				<div id="insert_id"><br>
					<div>
						<h4>아이디</h4><br>
					</div>
					<div>
						<input type="text" id="user_id" class="insert_inputext" name="user_id">
					</div>
					<br>
					<div>
						<span class="insert_idNone">아이디를 입력하세요.</span>
					</div>
					<br>
					<div>
						<span class="insert_idHave">아이디가 이미 존재합니다.</span>
					</div>
					<br>
					<div>
						<span class="insert_idFalse">아이디로는 영문과 숫자가 혼합된 8~16자만 허용합니다.</span>
					</div>
					<br>
					<div>
						<span class="insert_idTrue">사용 가능한 아이디입니다.</span>
					</div>
					<br>
				</div><br>
				
				
				<div id="insert_pw"><br>
					<div>
						<h4>비밀번호</h4><br>
					</div>
					<div>
						<input type="password" id="user_pw" class="insert_inputext" name="user_pw">
					</div>
					<br>
					<div>
						<span class="insert_pwNone">비밀번호를 입력하세요.</span>
					</div>
					<br>
					<div>
						<span class="insert_pwFalse">8~16자의 영문자에 대문자, 특수기호, 숫자 중 하나 이상을 사용하세요.</span>
					</div>
					<br>
					<div>
						<span class="insert_pwTrue">사용 가능한 비밀번호입니다.</span>
					</div>
					<br>
				</div><br>
				

				<div id="insert_pwcheck"><br>
					<div>
						<h4>비밀번호 확인</h4><br>
					</div>
					<div>
						<input type="password" id="user_repw" class="insert_inputext">
					</div>
					<br>
					<div>
						<span class="insert_repwNone">비밀번호 중복 확인을 하세요.</span>
					</div>
					<br>
					<div>
						<span class="insert_repwFalse">비밀번호가 일치하지 않습니다.</span>
					</div>
					<div>
						<span class="insert_repwTrue">비밀번호 중복 확인을 완료했습니다.</span>
					</div>
					<br>
				</div><br>
				
				
				<div id="insert_name"><br>
					<div>
						<h4>이름</h4><br>
					</div>
					<div>
						<input type="text" id="user_name" class="insert_inputext" name="user_name">
					</div>
					<br>
					<div>
						<span class="insert_nameNone">이름을 입력하세요.</span>
					</div>
					<br>
					<div>
						<span class="insert_nameFalse">이름에는 한글과 영문 대소문자만을 사용하세요.</span>
					</div>
					<br>
					<div>
						<span class="insert_nameTrue">사용 가능한 이름입니다.</span>
					</div>
					<br>
				</div><br>
				
				
				<div class="insert_addrbox"><br>
					<h4>주소</h4><br>
					<div class="insert_addr">
						<div>
							<input class="insert_inputext" placeholder="우편번호" name="user_zip" id="user_zip" type="text" readonly="readonly">
						</div><br>
						<div>
							<input class="insert_inputext" placeholder="도로명 주소" name="user_addr1" id="user_addr1" type="text" readonly="readonly">
						</div><br>
						<div>
							<input class="insert_inputext" placeholder="상세주소" name="user_addr2" id="user_addr2" type="text">
						</div><br>
						<div>
							<button type="button" class="insert_add" onclick="PostCode();">주소 찾기</button>
						</div>
					</div> 
					<span class="insert_addrNone">주소를 입력하세요.</span>   
				</div><br>
				
				
				<div class="insert_gender"><br>
					<h4>성별</h4>	<br>
					<div class="insert_gender_in">
						<div>
							<input type = "radio" id="user_male" name="user_gender" value="male">남자
						</div>
						<div>
							<input type = "radio" id="user_female" name="user_gender" value="female">여자
						</div>
						<div>
							<input type = "radio" id="user_none" name="user_gender" value="none" checked>선택안함
							</div>
					</div>
				</div><br><br>
				
				
				
				<!-- 동의사항 함수 -->
				<script type="text/javascript">
					$(document).ready(function() {
						$("#insert_allAgree").click(function() {
							if($("#insert_allAgree").is(":checked")) $("input[class=insert_agreeChk]").prop("checked", true);
							else $("input[class=insert_agreeChk]").prop("checked", false);
						});
						
						$("input[class=insert_agreeChk]").click(function() {
							var total = $("input[class=insert_agreeChk]").length;
							var checked = $("input[class=insert_agreeChk]:checked").length;
							
							if(total != checked) $("#insert_allAgree").prop("checked", false);
							else $("#insert_allAgree").prop("checked", true); 
						});
					});
				</script>
				
				<div class="insert_agree_border">
					<div>
						<h4>동의사항</h4>
					</div>
					<table class="insert_agreeZone">
							<tr>
								<td><input type="checkbox" id="insert_allAgree" /></td>
								<td>전체 동의</td>
							</tr>
							<tr>
								<td><input type="checkbox" name="insert_agree" class="insert_agreeChk"></td>
								<td>(필수)본인은 만 14세 이상입니다</td>
							</tr>
							<tr>
								<td><input type="checkbox" name="insert_agree" class="insert_agreeChk"></td>
								<td>(필수)이용 약관 동의</td>
							</tr>
							<tr>
								<td><input type="checkbox" name="insert_agree" class="insert_agreeChk"></td>
								<td>(필수)개인정보 수집 및 이용 동의</td>
							</tr>
							<tr>
								<td><input type="checkbox" class="insert_agreeChk"></td>
								<td>(선택)개인정보 마케팅 활용 동의</td>
							</tr>
							<tr>
								<td><input type="checkbox" class="insert_agreeChk"></td>
								<td>(선택)이메일으로 혜택 및 정보 수신</td>
							</tr>
							<tr>
								<td><input type="checkbox" class="insert_agreeChk"></td>
								<td>(선택)휴대폰으로 혜택 및 정보 수신</td>
							</tr>
					</table>
					<table class="insert_agreeLink">
						<tr>
							<td>&nbsp;</td>
						</tr>
						<tr>
							<td>&nbsp;</td>
						</tr>
						<tr>
							<td><a href="">약관</a></td>
						</tr>
						<tr>
							<td><a href="">약관</a></td>
						</tr>
						<tr>
							<td><a href="">약관</a></td>
						</tr>
						<tr>
							<td><a href="">약관</a></td>
						</tr>
						<tr>
							<td><a href="">약관</a></td>
						</tr>
					</table>
					<span class="insert_agreeNone">동의사항을 확인하세요.</span>
				</div>
				<br>
				<br>
				<br>
				
				<div id="insert_submit" class="insert_submit"><br>
					<input type="button" id = "insert_insert" value="가입하기">
				</div><br>
		
			</div>			
		</div>
		
	
	</form>
</div>



<script src="/resources/JS/Main/insert.js"></script>