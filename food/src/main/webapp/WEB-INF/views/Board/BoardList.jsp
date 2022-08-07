<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <link rel="stylesheet" href="<c:url value="../../../resources/CSS/CSS.css" />" type="text/css" />
</head>
<body>
<div id="wrap">
    <div id="container">
        <div id="content">
            <form>
                <div id="board_menu">
                    <ul class="b_ul">
                        <li><a href="#">레시피
                            <ul>
                                <li><a href="#">면</a></li>
                                <li><a href="#">빵</a></li>
                                <li><a href="#">고기</a></li>
                            </ul>
                        </a></li>
                        <li><a href="#">요리
                            <ul>
                                <li><a href="#">양식</a></li>
                                <li><a href="#">중식</a></li>
                                <li><a href="#">한식</a></li>
                            </ul>
                        </a></li>
                        <li><a href="#">커뮤니티</a></li>
                        <li><a href="#">그림판</a></li>
                        <li><a href="#">실시간 채팅</a></li>
                    </ul>
                </div>
                <div class="board_title">
                    <div class="">
                        <h1>
                            빵
                        </h1>
                    </div>
                    <div>
                        <ul class="b_ul">
                            <li><a href="#">홈</a></li>
                            <li><a href="#">인기</a></li>
                        </ul>
                        <ul class="b_ul">
                            <li><a href="#">asdasd</a></li>
                        </ul>
                    </div>
                </div>
                <br>
                <div id="board_main">
                    <div class="board_list">
                        <div>
                            aaaaaa1
                        </div>
                        <div>
                            aaaaaa2
                        </div>
                        <div>
                            aaaaaa3
                        </div>
                    </div>
                    <div>
                        <input type="submit" value="글쓰기">
                    </div>
                </div>
                <div id="board_footer">
                    <div id="serch">
                        <div>
                            <form action="#">
                                <rect>돋보기</rect>
                                <input type="text" size="10">
                                <input type="submit" value="검색">
                                <select>
                                    <option>닉네임</option>
                                    <option>제목</option>
                                </select>
                            </form>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>