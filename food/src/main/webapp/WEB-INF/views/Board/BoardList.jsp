<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="resources/CSS/boardList.css" type="text/css"/>

</head>
<body>
<div id="wrap">
    <div id="container">
        <div id="content">
            <form>
                <div id="navigation">
                    <ul>
                        <li class="dropdown">
                            <a href="#" class="dropdownbutton">레시피</a>
                            <div class="dropdown-content">
                                <a href="#">빵</a>
                                <a href="#">면</a>
                                <a href="#">고기</a>
                            </div>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdownbutton">요리</a>
                            <div class="dropdown-content">
                                <a href="#">한식</a>
                                <a href="#">중식</a>
                                <a href="#">양식</a>
                            </div>
                        </li>
                        <li><a href="#">잡담</a></li>
                        <li><a href="#">실시간채팅</a></li>
                    </ul>
                </div>

                <div class="board_title" id="board_title">
                    <div class="">
                        <h1>
                            빵
                        </h1>
                    </div>
                    <div class="board_title nav">
                        <ul>
                            <li><a href="#">홈</a></li>
                            <li><a href="#">인기</a></li>
                        </ul>
                    </div>
                    <div class="board_title nav show">
                        <ul>
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
                        <input type="submit" value="글쓰기" formaction="boardWrite">
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