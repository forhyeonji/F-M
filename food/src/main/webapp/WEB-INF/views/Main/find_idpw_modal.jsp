<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<script src="http://code.jquery.com/jquery-latest.js"></script> 

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div id="modal" class="modal-overlay">
        <div class="modal-window">
            <div class="title">
                <h2>아이디 조회 결과</h2>
            </div>
            <div class="close-area">X</div>
            <div class="content" id="id_value"></div>
        </div>
    </div>

</body>
</html>

<script src="/resources/JS/Main/find_idpw.js"></script>