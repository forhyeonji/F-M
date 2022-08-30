<%@ include file="../Header/Header.jsp" %>
<%@ page contentType="text/html; charset=UTF-8" language="java"  pageEncoding="UTF-8"%>
    <div id="container">
        <div id="content">
            <form method="get" action="/community/modify" accept-charset="UTF-8" id="bwrite_form">
                <input type="text" id="b_bno" name="bno" value="${detail.bno}" readonly>
                <table class="b_table">
                    <thead>
                    <tr>
                        <th>글 상세보기</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td><input type="text" class="b_title" maxlength="50" name="title" value="${detail.title}" readonly>
                        </td>
                    </tr>
                    <tr>
                        <td><textarea class="b_text"
                                      maxlength="2048" name="context" readonly>${detail.context}</textarea></td>
                    </tr>
                    <tr>
                        <td id="b_file"><input type="file" name="fileName" readonly></td>
                    </tr>
                    </tbody>
                </table>
                <div id="bw_foot">
<%--                    <c:if test="${customer != null}">--%>
                        <button type="submit" class="btn_write">수정하기</button>
                        <button type="button" class="btn_write btn_delete">삭제하기</button>
<%--                    </c:if>--%>
                    <a href="/community/bread"><button type="button" class="btn_write btn_cancel">목록</button></a>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>
