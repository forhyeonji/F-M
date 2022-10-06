<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Find ID</title>
<style>
</style>

<script src="http://code.jquery.com/jquery-latest.js"></script> 
</head>
  
<body>                
          
<div id="login_homelogo">
		<a class="login_a" href="/"><img class="login_img" src="../../../resources/image/main_image/home_logo_ex.png"></a>	
	</div>
	
<form method="post" class="form-signin" action="find_pw" name="findpwform">
		<div class="form-label-group">
			<input type="text" id="user_name" name="user_name" class="form-control"/>
			<label for="name">이름</label>
		</div>
		
		<div class="form-label-group">
			<input type="text" id="user_id" name="user_id" class="form-control"/>
			<label for="id">아이디</label>
		</div>
		
		<div class="form-label-group">
			<input type="text" id="user_email" name="user_email" class="form-control"/>
			<label for="email">이메일</label>
		</div>	

		<div class="form-label-group">
			<input class="btn btn-lg btn-secondary btn-block text-uppercase"
				type="submit" value="check">
		</div>

		<!-- 이름과 전화번호가 일치하지 않을 때-->
		<c:if test="${check == 1}">
			<label>일치하는 정보가 존재하지 않습니다~~</label>
		</c:if>

		<!-- 이름과 전화번호가 일치할 때 -->
		<c:if test="${check == 0}">
		<label>찾으시는 비밀번호는' ${user.user_pw}' 입니다.</label>
		<div class="form-label-group">
				<input class="find_pw_btn"
					type="button" value="OK" onclick="closethewindow()">
			</div>
		</c:if>

	</form>
	
	<script type="text/javascript">
		function closethewindow(){
			self.close();
		}
	</script>
	
	</body>   
	 
	</html>

	
<!-- <script src="/resources/JS/Main/find_pw.js"></script> -->