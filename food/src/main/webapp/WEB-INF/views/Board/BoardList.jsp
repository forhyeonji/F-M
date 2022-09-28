<%@ include file="../Header/Header.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<div id="container">
    <div id="content" class="d-flex pt-3 pd-3">
        <div class="p-2" style="width : 250px; border-right: 1px solid black">
            <div class="p-2">
                <p class="font-weight-bold" style="font-size: 1.7rem">커뮤니티</p>
            </div>
            <div>
                <div class="mt-2">123</div>
                <div class="mt-2">123</div>
                <div class="mt-2">123</div>
                <div class="mt-2">123</div>
            </div>
        </div>
        <div class="p-2">
            <div>
                검색
            </div>
            <div>
                리스트
            </div>
        </div>


<%--        <div id="b_navigation">--%>
<%--            <div id="navi-cover">--%>
<%--                <div id="ul-cover">--%>
<%--                    <ul id="b_ul">--%>
<%--                        <div class="li-cover">--%>
<%--                            <li class="b_dropdown">--%>
<%--                                <div class="b_dropdownbutton">레시피</div>--%>
<%--                                <div class="b_dropdown-content">--%>
<%--                                    <div class="b_menu" id="bread">빵</div>--%>
<%--                                    <div class="b_menu" id="noodle">면</div>--%>
<%--                                    <div class="b_menu" id="meat">고기</div>--%>
<%--                                </div>--%>
<%--                            </li>--%>
<%--                        </div>--%>
<%--                        <div class="li-cover">--%>
<%--                            <li class="b_dropdown">--%>
<%--                                <div class="b_dropdownbutton" class="b_menu">요리</div>--%>
<%--                                <div class="b_dropdown-content">--%>
<%--                                    <div class="b_menu" id="korean-food">한식</div>--%>
<%--                                    <div class="b_menu" id="chinese-food">중식</div>--%>
<%--                                    <div class="b_menu" id="western-food">양식</div>--%>
<%--                                </div>--%>
<%--                            </li>--%>
<%--                        </div>--%>
<%--                    </ul>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>

<%--        <div class="board_title" id="board_title">--%>
<%--            <div class="board_title header">--%>
<%--                <h1>--%>
<%--                    <span id="cm-title">빵</span>--%>
<%--                </h1>--%>
<%--            </div>--%>
<%--            <div>--%>
<%--                <table class="tb_nav" id="b_table">--%>
<%--                    <tr>--%>
<%--                        <td id="b_home">--%>
<%--                            <button id="cm_home" class="b_span cursorPoint">🏠</button>--%>
<%--                        </td>--%>
<%--                        <td id="b_best">--%>
<%--                            <button id="cm_popular" class="b_span cursorPoint">인기</button>--%>
<%--                        </td>--%>
<%--                    </tr>--%>
<%--                </table>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--        <div id="board_main">--%>
<%--            <div id="board_list">--%>
<%--                <table class="tb_nav blist">--%>
<%--                    <thead class="b_thead">--%>
<%--                    <tr>--%>
<%--                        <th class="blist_bno">글번호</th>--%>
<%--                        <th class="blist_title">제목</th>--%>
<%--                        <th class="blist_cnt">조회수</th>--%>
<%--                        <th class="blist_date">날짜</th>--%>
<%--                        <th class="blist_user">아이디</th>--%>
<%--                        <th class="blist_vote">추천수</th>--%>
<%--                    </tr>--%>
<%--                    </thead>--%>
<%--                    <tbody id="b_tbody">--%>
<%--                    </tbody>--%>
<%--                </table>--%>
<%--            </div>--%>
<%--            <div id="pagination">--%>
<%--            </div>--%>
<%--            <div id="board_footer">--%>
<%--                <div id="b_search">--%>
<%--                    <div class="search_inside">--%>
<%--                        <input type="text" size="10" id="b_so" name="keyword">--%>
<%--                        <input type="button" value="🔍" id="search_btn">--%>
<%--                        <span id="b_select">제목 검색</span>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <c:if test="${user_id != null}">--%>
<%--                    <div id="b_list_btns">--%>
<%--                        <a href="/community/write"><input type="button" value="글쓰기" id="btn_write"></a>--%>
<%--                    </div>--%>
<%--                </c:if>--%>
<%--            </div>--%>
<%--        </div>--%>
    </div>
</div>
<script src="/resources/JS/Board/BoardList.js"></script>
<%@ include file="../Footer/footer.jsp" %>
