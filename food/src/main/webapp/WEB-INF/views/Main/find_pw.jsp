<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<link rel="stylesheet" href="../../../resources/CSS/Main_CSS/find_pw.css">
<script src="http://code.jquery.com/jquery-latest.js"></script>

<div class="findpw_outborder">    
          
	<div id="findpw_homelogo">
		<a class="findpw_a" href="/"><img class="login_img" src="../../../resources/image/HeaderImg/푸렌드2.png"></a>	
	</div>
	<br><br><br><br><br>

	<div class="findpw_wrap">
	
		<div>
			<h3 class="findpw_sub2">비밀번호 찾기</h3>
		</div>
	
		<form method="post" class="findpw_form">

			<div class="findpw_namewrap">
				<input type="text" name="user_name" class="findpw_name" placeholder="이름을 입력하세요."/>
			</div>
			
			<div class="findpw_idwrap">
				<input type="text" name="user_id" class="findpw_name" placeholder="아이디를 입력하세요."/>
			</div>
			
			<div class="findpw_emailwrap">
				<input type="text" name="user_email" class="findpw_email" placeholder="이메일을 입력하세요."/>
			</div>	
	
			<div class="findpw_buttonwrap">
				<input class="findpw_button" type="submit" value="비밀번호 찾기">
			</div>
	
			<!-- 이름과 전화번호가 일치하지 않을 때-->
			<c:if test="${check == 1}">
				<label>일치하는 정보가 존재하지 않습니다~~</label>
			</c:if>
	
			<!-- 이름과 전화번호가 일치할 때 -->
			<c:if test="${check == 0}">
				<label>찾으시는 비밀번호는' ${user.user_pw}' 입니다.</label>
			</c:if>

		</form>
	
		<div class="findpw_link">
			<div class="findpw_search"><a class="findpw_a" href="/insert">회원가입</a></div>
			<div class="findpw_search"><a class="findpw_a" href="/login">로그인</a></div>
			<div class="findpw_search"><a class="findpw_a" href="/find_id">아이디 찾기</a></div>
		</div>
	
	</div>

</div>        
	
	
<script src="/resources/JS/Main/find_pw.js"></script>