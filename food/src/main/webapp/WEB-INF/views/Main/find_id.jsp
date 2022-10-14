<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<script src="http://code.jquery.com/jquery-latest.js"></script> 

<div class="findId_outborder">

	<div id="login_homelogo">
		<a class="login_a" href="/"><img class="login_img" src="../../../resources/image/HeaderImg/푸렌드2.png"></a>	
	</div>
	<br><br><br><br>
	
	<form method="post" class="findId_form" >
	
		<div class="findId_namewrap">
			<input type="text" name="user_name" class="findId_name" placeholder="이름을 입력하세요."/>
		</div>
			
		<div class="findId_phonewrap">
			<input type="text" name="user_phone" class="findId_phone" placeholder="전화번호를 숫자만 입력하세요."/>
		</div>	
	
		<div class="findId_buttonwrap">
			<input class="findId_button" type="submit" value="아이디 찾기">
		</div>
	
		<!-- 이름과 전화번호가 일치하지 않을 때-->
		<c:if test="${check == 1}">
			<label>일치하는 정보가 없습니다. 이름 혹은 전화번호를 다시 확인해주세요.</label>
		</c:if>
	
		<!-- 이름과 전화번호가 일치할 때 -->
		<c:if test="${check == 0}">
			<label>찾으시는 아이디는 ' ${user.user_id}' 입니다.</label>
		</c:if>
	</form>
	
	<div class="findId_link">
		<div class="findId_search"><a class="findId_a" href="/insert">회원가입</a></div>
		<div class="findId_search"><a class="findId_a" href="/login">로그인</a></div>
		<div class="findId_search"><a class="findId_a" href="/find_pw">비밀번호 찾기</a></div>
	</div>

</div>
	
<!--<script src="/resources/JS/Main/find_id.js"></script>-->