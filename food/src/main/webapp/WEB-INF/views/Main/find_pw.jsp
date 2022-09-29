<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<script src="http://code.jquery.com/jquery-latest.js"></script> 
 
 <div class="card o-hidden border-0 shadow-lg my-5">
        
<div class="w3-container w3-card-4">
		<!-- 
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
			
	</div>   -->              
                    
<!--  <div class="jumbotron">
	<h2> 아이디는 : </h2><br/>
  		<ul>
  		<c:forEach items="${user_id}" var="member">
  		  	
  		  	<li>${user_id} </li><br/>
  		
  		</c:forEach>
  		</ul>
  	<h2>입니다</h2>
  <button type="button" class="btn btn-primary" onclick="location.href='/member/loginView'">로그인페이지</button>
  <button type="button" class="btn btn-primary" onclick="location.href='/board/list'">메인페이지</button>
  -->
  
  

<form method="post" class="form-signin" action="find_password" name="findform">
<div class="form-label-group">
			<input type="text" id="id" name="id" class="form-control"/>
			<label for="id">ID</label>
		</div>
		
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

		<!-- 정보가 일치하지 않을 때-->
		<c:if test="${check == 1}">
			<script>
			opener.document.findform.id.value = "";
				opener.document.findform.name.value = "";
				opener.document.findform.phone.value = "";
			</script>
			<label>일치하는 정보가 존재하지 않습니다.</label>
		</c:if>

		<!-- 이름과 비밀번호가 일치하지 않을 때 -->
		<c:if test="${check == 0 }">
		<div>
			<label>비밀번호를 변경해주세요.</label>
		</div>
		<div class="form-label-group">
		<input type="hidden" id="id" name="updateid" value="${updateid }">
		
			<input type="password" id="password" name="pwd" class="form-control"/>
			<label for="password">password</label>
		</div>
		
		<div class="form-label-group">
			<input type="password" id="confirmpassword" name="confirmpwd" class="form-control"/>
			<label for="confirmpassword">confirm password</label>
		</div>
		
		<div class="form-label-group">
				<input class="btn btn-lg btn-secondary btn-block text-uppercase"
					type="button" value="update password" onclick="updatePassword()">
			</div>
		</c:if>

	</form>
  

  
</div>