<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<link rel="stylesheet" href="../../../resources/CSS/Main_CSS/login.css">


<div id="login_outborder">
	<form method="post" action="/login" accept-charset="UTF-8">

	<div id="login_homelogo">
		<a href="http://localhost:8080"><img src="../../../resources/image/main_image/home_logo_ex.png"></a>	
	</div>

	<div id="login_border">
		
		<div id="login_inborder">
		
			<div>
				<div>
					<h3 id="login_sub">SNS계정으로 간편 로그인/회원가입</h3>
				</div>
				<div id="login_link">
					<div>
						<a href="네이버"><img src="../../../resources/image/main_image/icon_logo_ex.png"></a>
					</div>
					<div>
						<a href="카카오톡"><img src="../../../resources/image/main_image/icon_logo_ex.png"></a>
					</div>
					<div>
						<a href="인스타그램"><img src="../../../resources/image/main_image/icon_logo_ex.png"></a>
					</div>
				</div>
			</div>
			
			<div>
				<h3 id="login_sub2">ID 로그인</h3>
			</div>
		
			<div>
				<input type="text" id="login_id" placeholder="아이디">				
			</div>
				
			<div>
				<input type="text" id="login_pw" placeholder="비밀번호">
			</div>
			<div>
				<input type="submit" value="로그인" id="login_now">
			</div>
			
			<div>
				<div id="login_search">
					<div class="login_search_d"><a href="http://localhost:8080/join">회원가입</a></div>
					<div class="login_search_d"><a href="">아이디 찾기</a></div>
					<div class="login_search_d"><a href="">비밀번호 찾기</a></div>
				</div>
			</div>
			
		</div>

	</div>
	</form>

</div>

