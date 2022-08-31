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
                        <a href="#" class="b_menu">빵</a>
                        <a href="#" class="b_menu">면</a>
                        <a href="#" class="b_menu">고기</a>
                    </div>
                </li>
                <li class="b_dropdown">
                    <a href="#" class="b_dropdownbutton" class="b_menu">요리</a>
                    <div class="b_dropdown-content">
                        <a href="#" class="b_menu">한식</a>
                        <a href="#" class="b_menu">중식</a>
                        <a href="#" class="b_menu">양식</a>
                    </div>
                </li>
                <li><a href="#" class="b_menu">잡담</a></li>
                <li><a href="#" class="b_menu">실시간채팅</a></li>
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
        <form action="/community/write" method="get">
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
                <div id="pagination">
                </div>
                <div id="board_footer">
                    <div id="b_search">
                        <div class="search_inside">
                            <input type="text" size="10" id="b_so">
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
            </div>
        </form>
    </div>
</div>
<%@ include file="../Footer/footer.jsp" %>