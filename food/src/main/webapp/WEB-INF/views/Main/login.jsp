<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<link rel="stylesheet" href="../../../resources/CSS/Main_CSS/login.css">
<script src="http://code.jquery.com/jquery-latest.js"></script> 
<script src="/resources/JS/Main/login_kakao.js"></script>

<script src="https://t1.kakaocdn.net/kakao_js_sdk/2.0.0/kakao.min.js"  integrity="sha384-PFHeU/4gvSH8kpvhrigAPfZGBDPs372JceJq3jAXce11bVA6rMvGWzvP4fMQuBGL" crossorigin="anonymous"></script>


<div id="login_outborder">
	<form method="post" action="/login" accept-charset="UTF-8">

	<div id="login_homelogo">
		<a class="login_a" href="http://localhost:8080"><img class="login_img" src="../../../resources/image/main_image/home_logo_ex.png"></a>	
	</div>

	<div id="login_border">
		
		<div id="login_inborder">
		
			<div>
				<div>
					<h3 id="login_sub">SNS계정으로 간편 로그인/회원가입</h3>
				</div>
				<div id="login_link">
					<div>
						<a class="login_a" href="https://developers.naver.com/products/login/userguide/userguide.md"><img class="login_img" src="../../../resources/image/main_image/icon_logo_ex.png"></a>
					</div>
					<div>
						<a class="login_a" href="https://developers.kakao.com/"><img class="login_img" src="../../../resources/image/main_image/icon_logo_ex.png"></a>
					</div>
					<div>
						<a class="login_a" href="https://developers.facebook.com/products/instagram/?locale=ko_KR"><img class="login_img" src="../../../resources/image/main_image/icon_logo_ex.png"></a>
					</div>
					
					
					<a id="kakao-login-btn" href="javascript:loginWithKakao()">
						<img src="https://k.kakaocdn.net/14/dn/btroDszwNrM/I6efHub1SN5KCJqLm1Ovx1/o.jpg" width="222"
							alt="카카오 로그인 버튼" />
					</a>
					<button class="api-btn" onclick="kakaoLogout()">로그아웃</button>
					<p id="token-result"></p>


				</div>
			</div>
			
			<div>
				<h3 id="login_sub2">ID 로그인</h3>
			</div>
		
			<div>
				<input type="text" id="login_id" name="user_id" placeholder="아이디">				
			</div>
			<div>
				<span class="login_idNone">아이디를 입력하세요.</span>
			</div>
				
			<div>
				<input type="text" id="login_pw" name="user_pw" placeholder="비밀번호">
			</div>
			<div>
				<span class="login_pwNone">비밀번호를 입력하세요.</span>
			</div>
			
			<div>
				<input type="submit" value="로그인" id="login_login">
			</div>
			
			<c:if test = "${session.setAttribute != result} ">
				<div class = "login_warn"><p>사용자 ID 또는 비밀번호를 잘못 입력하셨습니다.</p></div>
			</c:if>
			<div>
				<div id="login_search">
					<div class="login_search_d"><a class="login_a" href="http://localhost:8080/insert">회원가입</a></div>
					<div class="login_search_d"><a class="login_a" href="" id="login_find_id">아이디 찾기</a></div>
					<div class="login_search_d"><a class="login_a" href="">비밀번호 찾기</a></div>
				</div>
			</div>
			
		</div>

	</div>
	</form>

</div>


<script src="/resources/JS/Main/login.js"></script>
 