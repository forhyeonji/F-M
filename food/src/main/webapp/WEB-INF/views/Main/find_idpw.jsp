<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="/WEB-INF/views/Main/find_idpw_modal.jsp" %>

<script src="http://code.jquery.com/jquery-latest.js"></script> 
  
                    

<div class="w3-content w3-container w3-margin-top">
	<div class="w3-container w3-card-4">
			
		<div class="w3-center w3-large w3-margin-top">
			<h3>아이디 찾기</h3>
		</div>
		<div>
			<p>
			<label>name</label>
			<input class="w3-input" type="text" id="user_name" name="user_name" placeholder="이름을 입력해주세요." required>
			</p>
					
			<p>
			<label>Tel</label>
			<input class="w3-input" type="text" id="user_phone" name="user_phone" placeholder="핸드폰 번호를 입력해주세요." required>
			</p>
					
			<p class="w3-center">
			<button type="button" id='find_id' onclick="findId_click()" class="">아이디 찾기</button> 
			<button type="button" onclick="history.go(-1);" class=" ">로그인</button> 
			</p>
		</div>
			
	</div>
	<div class="w3-container w3-card-4">
			
		<div class="w3-center w3-large w3-margin-top">
			<h3>비밀번호 찾기</h3>
		</div>
		<div>
			<p>
			<label>아이디</label>
			<input class="w3-input" type="text" id="user_name" name="user_name" placeholder="아이디를 입력해주세요." required>
			</p>
					
			<p>
			<label>이메일</label>
			<input class="w3-input" type="text" id="user_email" name="user_email" placeholder="이메일 입력해주세요." required>
			</p>
					
			<p class="w3-center">
			<button type="button" id='find_pw' onclick="findpw_click()" class="">비밀번호 찾기</button> 
			<button type="button" onclick="history.go(-1);" class=" ">로그인</button> 
			</p>
		</div>
			
	</div>
</div>   

<script src="/resources/JS/Main/find_idpw.js"></script>


