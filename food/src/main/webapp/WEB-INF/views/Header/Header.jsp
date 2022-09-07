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
<%--    <script src="${pageContext.request.contextPath}/resources/JS/Board/BoardList.js" type="text/javascript"></script>--%>
<%--    <script src="${pageContext.request.contextPath}/resources/JS/Board/BoardWrite.js" type="text/javascript"></script>--%>


	<!-- notice script -->
	<script src="/resources/JS/Notice/NoticeList.js" type="text/javascript"></script>
	<script src="/resources/JS/Notice/listAjax.js" type="text/javascript"></script>


</head>
<body>
<div id="wrap">
    <div id="header">
        <div id="header_main">
            <div id="h_s1">
                <div id="h_logoBox">
                    <a href="/"><img src="../../../resources/image/HeaderImg/코카콜라.jpg" id="h_banner"></a>
                </div> <!-- logoBox -->
                <div id="h_search">
                            <div class="h_searchTd">
                                <input type="text" id="h_searchBar" placeholder="검색어를 입력해주세요.">
                                <img src="../../../resources/image/HeaderImg/돋보기.jpg" id="h_mag">
                            </div>
                </div>
                <div>
                    <!--<a href="/login"><button>로그인</button></a> -->
                    <c:if test="${empty sessionScope.user_id}"><a href="/login"><button>로그인</button></a></c:if>
					<c:if test="${not empty sessionScope.user_id}"><a href="/logout"><button>로그아웃</button></a></c:if>
                </div>
            </div>
            <div class="h_navBox">
                <table frame="void" id="h_menu">
                    <tr>
<%--                        <td class="h_nav"><a href="/community/bread">레시피</a></td>--%>
                        <td class="h_nav"><a href="/shop">쇼핑</a></td>
                        <td class="h_nav"><a href="/community/bread">커뮤니티</a></td>
                        <td class="h_nav"><a href="/notice">고객센터</a></td>
                    </tr>
                </table>
            </div> <!-- navBox -->
        </div> <!-- header_main -->
    </div> <!-- header -->
