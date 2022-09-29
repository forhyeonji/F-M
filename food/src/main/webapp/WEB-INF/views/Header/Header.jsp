<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko"> 
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>

    <link rel="stylesheet" type="text/css"
	href="../../../resources/CSS/shop_CSS/shop.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/CSS/footer.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/CSS/header.css">
    
    <!-- Notice Css -->
    <link rel="stylesheet" type="text/css"
    href="${pageContext.request.contextPath}/resources/CSS/Notice_CSS/NoticeCss.css">

    <!-- Board -->
    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath}/resources/CSS/Board_CSS/boardList.css" />
    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath}/resources/CSS/Board_CSS/BoardWrite.css" />


    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

	<!-- notice script -->
	<script src="/resources/JS/Notice/NoticeList.js" type="text/javascript"></script>
	<script src="/resources/JS/Notice/DirectSelect.js" type="text/javascript"></script>


</head>
<body>
<div id="wrap">
    <div id="header">
        <div id="header_main">
             <div class="h_loginbox">
	                 <!--<a href="/login"><button>로그인</button></a> -->
	                <c:if test="${empty sessionScope.user_id}">
	                 	<a href="/insert" class="h_but">회원가입</a>
	                 	<a href="/login" class="h_but">로그인</a>
	                </c:if>
					<c:if test="${not empty sessionScope.user_id}">
			            <span class="h_loginmsg">${sessionScope.user_id}님 환영합니다.</span>
						<a href="/logout" class="h_but">로그아웃</a>
						<a href="/shopRegistration" class="h_but">상품등록</a>
						<a href="/mypage" class="h_but">마이페이지</a>
					</c:if>
             </div><!-- h_logoBox -->
             
             
             
            <div id="h_s1">
             
                <div id="h_logoBox">
                    <a href="/"><img src="../../../resources/image/HeaderImg/푸렌드2.png" id="h_banner"></a>
                </div> <!-- logoBox -->
                                
            </div><!-- h_s1 -->
            <div class="h_navBox">
           
                <table frame="void" id="h_menu">
                    <tr>
                        <td class="h_nav"><a href="/shop">쇼핑</a></td>
                        <td class="h_nav"><a href="/community">커뮤니티</a></td>
                        <td class="h_nav"><a href="/notice?sep=noti">고객센터</a></td>
                    </tr>
                </table>
            </div> <!-- navBox -->
        </div> <!-- header_main -->
    </div> <!-- header -->
