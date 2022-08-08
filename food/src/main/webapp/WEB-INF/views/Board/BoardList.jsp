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
                    <div class="board_title header">
                        <h1>
                            빵
                        </h1>
                    </div>
                    <div>
                        <table class="tb_nav">
                            <tr>
                                <td id="home"><a href="#"><span>🏠</span></a></td>
                                <td id="best"><a href="#"><span>인기</span></a></td>
                                <td class="show_view"><a href="#"><span>🐱</span></a></td>
                                <td class="show_view"><a href="#"><span>🐉</span></a></td>
                            </tr>
                        </table>
                    </div>
                </div>
<%--            <form>--%>
                <div id="board_main">
                    <div id="board_list">
                        <table class="tb_nav list">
                            <thead>
                                <tr>
                                    <th class="list_title">제목</th>
                                    <th class="list_user">글쓴이</th>
                                    <th class="list_cnt">조회수</th>
                                    <th class="list_date">날짜</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td class="list_title" id="lt">a</td>
                                    <td class="list_user">a</td>
                                    <td class="list_cnt">a</td>
                                    <td class="list_date">a</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div id="sb_btn">
                        <input type="submit" value="글쓰기" formaction="boardWrite">
                    </div>
                </div>
                <div id="board_footer">
                    <div id="serch">
                        <div>
                            <form action="#">
                                <rect>🔍</rect>
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
<%--            </form>--%>
        </div>
    </div>
</div>
</body>
</html>