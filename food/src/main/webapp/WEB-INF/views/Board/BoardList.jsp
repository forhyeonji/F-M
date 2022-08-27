<%@ include file="../Header/Header.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<div id="container">
    <div id="content">
        <div id="b_navigation">
            <ul id="b_ul">
                <li class="b_dropdown">
                    <a href="#" class="b_dropdownbutton">레시피</a>
                    <div class="b_dropdown-content">
                        <a href="#">빵</a>
                        <a href="#">면</a>
                        <a href="#">고기</a>
                    </div>
                </li>
                <li class="b_dropdown">
                    <a href="#" class="b_dropdownbutton">요리</a>
                    <div class="b_dropdown-content">
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
                <table class="tb_nav" id="b_table">
                    <tr>
                        <td id="b_home"><a href="#" class="b_tag"><span class="b_span">🏠</span></a></td>
                        <td id="b_best"><a href="#" class="b_tag"><span class="b_span">인기</span></a></td>
                        <td class="b_show_view"><a href="###">👍</a>
                            <a href="###">👍</a>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
        <form action="/boardWrite" method="get">
            <div id="board_main">
                <div id="board_list">
                    <table class="tb_nav blist">
                        <thead class="b_thead">
                        <tr>
                            <th class="blist_date">글번호</th>
                            <th class="blist_title">제목</th>
                            <th class="blist_cnt">조회수</th>
                            <th class="blist_user">날짜</th>
                            <th class="blist_date">아이디</th>
                        </tr>
                        </thead>
                        <tbody id="b_tbody">
                        </tbody>
                    </table>
                </div>
                <div id="board_footer">
                    <div id="b_search">
                        <div class="search_inside">
                            <input type="text" size="10" id="abc">
                            <input type="submit" value="🔍" id="search_btn" formaction="#">
                            <select id="b_select">
                                <option id="b_option">닉네임</option>
                                <option>제목</option>
                            </select>
                        </div>
                    </div>
                    <div id="b_list_btns">
                        <input type="submit" value="글쓰기" id="btn_write">
                    </div>
                </div>
                <div id="b_paging">
                    <div id="b_ps">
                        <div class="b_pagingBtn">
                            <c:if test="${paging.prevBtn}">
                                <a href="/bread?pageNum=${paging.startPage-1}&amount=${paging.criteriaVO.amount}">이전</a>
                            </c:if>
                        </div>
                        <div id="b_pagingNum">
                            <c:forEach begin="${paging.startPage}" end="${paging.endPage}" var="num">
                                <c:choose>
                                    <c:when test="${num == paging.startPage}">
                                        <a href="/bread?pageNum=${num}&amount=${paging.criteriaVO.amount}"><span
                                                class="b_pageNum">${num}</span></a>
                                    </c:when>
                                    <c:when test="${num != paging.startPage}">
                                        <a href="/bread?pageNum=${num}&amount=${paging.criteriaVO.amount}"><span
                                                class="b_pageNum">${num}</span></a>
                                    </c:when>
                                </c:choose>
                            </c:forEach>
                        </div>
                        <div class="b_pagingBtn">
                            <c:if test="${paging.nextBtn}">
                                <a href="/bread?pageNum=${paging.endPage+1}&amount=${paging.criteriaVO.amount}">다음</a>
                            </c:if>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </div>
</div>
<%@ include file="../Footer/footer.jsp" %>