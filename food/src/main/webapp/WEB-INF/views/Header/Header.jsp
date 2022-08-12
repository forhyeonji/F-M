<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>

    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath}/resources/CSS/BoardList_CSS/boardList.css?4" type="text/css"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="resources/CSS/footer.css">
    <link rel="stylesheet" href="resources/CSS/header.css">
</head>
<body>
<div id="wrap">
    <div id="header">
        <div id="header_main">
            <div id="h_s1">
                <div id="h_logoBox">
                    <a href="/main"><img src="../../../resources/image/HeaderImg/코카콜라.jpg" id="h_banner"></a>
                </div> <!-- logoBox -->
                <div id="h_search">
                            <div class="h_searchTd">
                                <input type="text" id="h_searchBar" placeholder="검색어를 입력해주세요.">
                                <img src="../../../resources/image/HeaderImg/돋보기.jpg" id="h_mag">
                            </div>
                </div>
            </div>
            <div class="h_navBox">
                <table frame="void" id="h_menu">
                    <tr>
                        <td class="h_nav"><a href="/bread">레시피</a></td>
                        <td class="h_nav"><a href="/shop">쇼핑</a></td>
                        <td class="h_nav"><a href="/bread">커뮤니티</a></td>
                        <td class="h_nav"><a href="/notice">고객센터</a></td>
                    </tr>
                </table>
            </div> <!-- navBox -->
        </div> <!-- header_main -->
    </div> <!-- header -->
