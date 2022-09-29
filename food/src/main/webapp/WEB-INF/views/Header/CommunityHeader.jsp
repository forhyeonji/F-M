<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>

    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/CSS/header.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/CSS/footer.css">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

    <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.js"></script>
    <script src="/resources/JS/Board/Common.js"></script>

    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath}/resources/CSS/Board_CSS/BoardWrite.css" />
    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath}/resources/CSS/Board_CSS/BoardDetail.css" />
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons"
          rel="stylesheet">
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
                    <c:if test="${empty sessionScope.user_id}">
                        <a href="/insert"><button>회원가입</button></a>
                        <a href="/login"><button>로그인</button></a>
                    </c:if>
                    <c:if test="${not empty sessionScope.user_id}">
                        <span id="session_id">${sessionScope.user_id}</span>
                        <span>님 환영합니다.</span>
                        <a href="/logout"><button>로그아웃</button></a>
                        <a href="/shopRegistration"><button>상품등록</button></a>
                        <a href="/mypage"><button>마이페이지</button></a>
                    </c:if>
                </div>
            </div>
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
