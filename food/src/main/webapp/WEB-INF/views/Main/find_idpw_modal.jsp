<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<script src="http://code.jquery.com/jquery-latest.js"></script> 
 
 <div class="card o-hidden border-0 shadow-lg my-5">
        
               
                    
<div class="jumbotron">
	<h2> 아이디는 : </h2><br/>
  		<ul>
  		<c:forEach items="${member}" var="member">
  		  	
  		  	<li>${member.memberId} </li><br/>
  		
  		</c:forEach>
  		</ul>
  	<h2>입니다</h2>
  <button type="button" class="btn btn-primary" onclick="location.href='/member/loginView'">로그인페이지</button>
  <button type="button" class="btn btn-primary" onclick="location.href='/board/list'">메인페이지</button>
  
  
</div>