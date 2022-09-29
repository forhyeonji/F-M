<%@ include file="../Header/Header.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<div id="container">
    <div id="content" class="d-flex pt-3 pd-3">
        <div class="p-2" style="width : 250px; border-right: 1px solid #dddddd">
            <div class="p-2">
                <p class="font-weight-bold" style="font-size: 1.7rem">커뮤니티</p>
            </div>
            <div class="p-2 cm-nav">
                <div class="p-2 mt-2 cm-menus" id="bread" data-cd="01" style="color:orange; font-weight:bold;">빵</div>
                <div class="p-2 mt-2 cm-menus" id="noodle" data-cd="02">면</div>
                <div class="p-2 mt-2 cm-menus" id="meat" data-cd="03">고기</div>
                <div class="p-2 mt-2 cm-menus" id="korean-food" data-cd="04">한식</div>
                <div class="p-2 mt-2 cm-menus" id="chinese-food-food" data-cd="05">중식</div>
                <div class="p-2 mt-2 cm-menus" id="western-food" data-cd="06">양식</div>
            </div>
        </div>
        <div class="p-4">
            <div class="p-2" style="height:85px;">
                <p class="font-weight-bold" style="font-size: 1.7rem">
                    <span id="cm_home" class="cm-table-nav cursorPoint">🏠</span>
                    <span id="cm_popular" class="cm-table-nav cursorPoint">인기</span>
                </p>
            </div>
            <div>
                <div class="p-2 cm-search">
                    <div id="cm-category" style="font-size:1.56em; font-weight:bold">빵</div>
                    <div class="search_inside">
                        <input type="text" size="10" id="b_so" name="keyword">
                        <input type="button" value="🔍" id="search_btn">
                        <span id="b_select">제목 검색</span>
                    </div>
                </div>
            </div>
            <div id="cm-table-session">
                <table class="cm-table">
                    <thead class="cm-table cm-thead">
                    <tr>
                        <th class="cm-table cm-thead cm-bno">글번호</th>
                        <th class="cm-table cm-thead cm-title">제목</th>
                        <th class="cm-table cm-thead cm-cnt">조회수</th>
                        <th class="cm-table cm-thead cm-date">날짜</th>
                        <th class="cm-table cm-thead cm-id">아이디</th>
                        <th class="cm-table cm-thead cm-vote">추천수</th>
                    </tr>
                    </thead>
                    <tbody id="cm-tbody">
                    </tbody>
                </table>
            </div>
            <div>
                <c:if test="${user_id != null}">
                    <div class="p-2" id="cm-table-foot">
                        <div id="cm-btn">
                            <a href="/community/write"><input type="button" value="글쓰기" id="btn_write"></a>
                        </div>
                    </div>
                </c:if>
            </div>
            <div id="pagination" class="p-2">
            </div>
        </div>
    </div>
</div>
<script src="/resources/JS/Board/BoardList.js"></script>
<%@ include file="../Footer/footer.jsp" %>
