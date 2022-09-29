<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<script src="http://code.jquery.com/jquery-latest.js"></script> 
  
                    
                    
<div id="login_homelogo">
		<a class="login_a" href="http://localhost:8080"><img class="login_img" src="../../../resources/image/main_image/home_logo_ex.png"></a>	
	</div>
	
	
<!--  
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
</div>   

-->


<form method="post" class="form-signin" action="find_id" name="findform">
		<div class="form-label-group">
			<input type="text" id="name" name="name" class="form-control"/>
			<label for="name">name</label>
		</div>
		
		<div class="form-label-group">
			<input type="text" id="phone" name="phone" class="form-control"/>
			<label for="phone">phone</label>
		</div>

		<div class="form-label-group">
			<input class="btn btn-lg btn-secondary btn-block text-uppercase"
				type="submit" value="check">
		</div>

		<!-- 이름과 전화번호가 일치하지 않을 때-->
		<c:if test="${check == 1}">
			<script>
				opener.document.findform.name.value = "";
				opener.document.findform.phone.value = "";
			</script>
			<label>일치하는 정보가 존재하지 않습니다.</label>
		</c:if>

		<!-- 이름과 비밀번호가 일치하지 않을 때 -->
		<c:if test="${check == 0 }">
		<label>찾으시는 아이디는' ${id}' 입니다.</label>
		<div class="form-label-group">
				<input class="btn btn-lg btn-secondary btn-block text-uppercase"
					type="button" value="OK" onclick="closethewindow()">
			</div>
		</c:if>

	</form>


<script src="/resources/JS/Main/find_id.js"></script>


