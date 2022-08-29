<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../Header/Header.jsp" %>
 
<link rel="stylesheet" href="../../../resources/CSS/Main_CSS/login.css">
<div>
	<form method ="get">
	
		<header>
		<h2>로그인</h2>
		</header>
	
		<container>
		<div>
			<div>
			<h4>아이디</h4>
			<input type="text" id="" class="login_login">
			</div>
			
			<div>
			<h4>비밀번호</h4>
			<input type="text" id="" class="login_login">
			</div><br><br>
			
			<div>
			<input type="button" value="로그인" id="" class="login_button">
			</div><br>
			
			<div>
			<input type="button" value="회원가입" id="login_to_insert" class="login_button">
			</div>
		</div>
		</container>
		
	
	</form>
</div>
<%@ include file="../Footer/footer.jsp"%>