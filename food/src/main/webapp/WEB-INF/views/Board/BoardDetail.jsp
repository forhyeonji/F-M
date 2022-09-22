<%@ include file="../Header/CommunityHeader.jsp" %>
<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<div id="container">
    <div id="content">
        <input type="text" id="user_id" name="user_id" hidden>
        <input type="text" id="bno" name="bno" hidden>
        <table class="b_table">
            <thead id="write_head">
            <tr>
                <th>글 상세보기</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td><input type="text" id="title" class="form-control mb-2 b_title" name="title" readonly="ture">
                </td>
            </tr>
            <tr>
                <td>
                    <%--                            <textarea id="context" class="b_text" name="context" readonly></textarea>--%>
                    <div class="click2edit b_text" name="context" id="context">${board.context}</div>
                </td>

            </tr>
            </tbody>
        </table>
        <div id="cm_vote_session">
            <div id="cm_vote">
                <span id="vote_cnt"></span>
                <input type="button" disabled="disabled" id="vote_btn" class="material-icons" value="favorite">
            </div>
        </div>
        <div id="bw_foot">
            <c:if test="${sessionScope.user_id == board.user_id || sessionScope.user_id == 'root' || sessionScope.user_id == 'manager'}">
                <button type="button" id="btn_modify" class="btn_write btn_modify">수정하기</button>
                <button id="save" class="btn_write" type="button">저장</button>
                <button type="button" id="btn_delete" class="btn_write">삭제하기</button>
            </c:if>
            <a href="/community/bread">
                <button type="button" class="btn_write btn_cancel">목록</button>
            </a>
        </div>
        <div id="cm_reply">
            <div id="cm_reply_textarea">
                <div id="cm_editor" contenteditable="true" name="context" aria-placeholder="댓글을 입력하세요">
                </div>
            </div>
            <div id="reply_body"></div>
            <div id="pagination">
            </div>
        </div>
    </div>
    <script src="/resources/JS/Board/BoardDetail.js"></script>
    <script src="/resources/JS/Board/ReplyPage.js"></script>
    <script>
        let bno = '${bno}';
        let session_id = '<%=session.getAttribute("user_id")%>'
    </script>
    <%@ include file="../Footer/footer.jsp" %>

