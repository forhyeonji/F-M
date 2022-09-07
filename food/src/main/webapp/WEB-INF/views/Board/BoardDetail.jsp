<%@ include file="../Header/CommunityHeader.jsp" %>
<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<div id="container">
    <div id="content">
        <input type="text" id="user_id" name="user_id" readonly>
        <input type="text" id="bno" name="bno" readonly>
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
            <div id="bw_foot">
                <button type="button" id="btn_modify" class="btn_write btn_modify">수정하기</button>
                <button id="save" class="btn_write" type="button">저장</button>
                <button type="button" id="btn_delete" class="btn_write">삭제하기</button>
                <a href="/community/bread">
                    <button type="button" class="btn_write btn_cancel">목록</button>
                </a>
            </div>
    </div>
</div>
</div>

<script>
    let bno = '${bno}';
    let mode = '[[${mode}]]';
</script>
<script src="/resources/JS/Board/BoardDetail.js"></script>
</body>
</html>
