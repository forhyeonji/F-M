<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div id="searchid_outborder">

	<div>
		<input type="radio" name="id_find" id="id_byemail" onclick = find_idemail() checked="checked">
		<p>이메일로 찾기 </p>
	</div>
	
	<div>
		<input type="radio" name="id_find" id="id_byphone" onclick = find_idemail() checked="checked">
		<p>전화번호로 찾기</p>
	</div>
	
	<div>
	</div>
	
	<div>
		<div class="find_toin"><a href="http://localhost:8080/join">회원가입</a></div>
		<div class="find_tohome"><a href="http://localhost:8080/login">로그인으로 돌아가기</a></div>
		
	</div>
</div> 