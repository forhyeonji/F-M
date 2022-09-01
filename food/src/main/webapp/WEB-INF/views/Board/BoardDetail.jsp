<%@ include file="../Header/Header.jsp" %>
<%@ page contentType="text/html; charset=UTF-8" language="java"  pageEncoding="UTF-8"%>
    <div id="container">
        <div id="content">
<%--            <form method="get" action="/community/modify" accept-charset="UTF-8" id="bwrite_form">--%>
                <input type="text" id="bno" name="bno" readonly>
                <input type="text" id="user_id" name="user_id" readonly>
                <table class="b_table">
                    <thead>
                    <tr>
                        <th>글 상세보기</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td><input type="text" id="title" class="b_title" maxlength="50" name="title" readonly>
                        </td>
                    </tr>
                    <tr>
                        <td><textarea class="b_text"
                                      maxlength="2048" id="context" name="context" readonly></textarea></td>
                    </tr>
                    <tr>
                        <td id="b_file"><input type="file" name="fileName" readonly></td>
                    </tr>
                    </tbody>
                </table>
                <div id="bw_foot">
<%--                    <c:if test="${customer != null}">--%>
                        <button type="button" id="btn_modify" class="btn_write btn_modify">수정하기</button>
                        <button type="button" class="btn_write btn_delete">삭제하기</button>
<%--                    </c:if>--%>
                    <a href="/community/bread"><button type="button" class="btn_write btn_cancel">목록</button></a>
                </div>
<%--            </form>--%>
        </div>
    </div>
</div>

<script>
    let bno = '${bno}';
    let mode = '[[${mode}]]';
</script>
<script src="${pageContext.request.contextPath}/resources/JS/Board/BoardDetail.js"></script>
</body>
</html>
