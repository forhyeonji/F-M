<%@ include file="../Header/Header.jsp" %>
<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<div id="container">
    <div id="content">
        <form method="get" action="/community/modify" accept-charset="UTF-8" id="bModify_form">
            <input type="text" id="b_bno" name="bno" value="${detail.bno}" readonly>
            <table class="b_table">
                <thead>
                <tr>
                    <th>글 수정하기</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td><input type="text" id="modify_title" class="b_title" maxlength="50" name="title" value="${detail.title}">
                    </td>
                </tr>
                <tr>
                    <td><textarea class="b_text" id="modify_context"
                                  maxlength="2048" name="context">${detail.context}</textarea></td>
                </tr>
                <tr>
                    <td id="b_file"><input type="file" name="fileName"></td>
                </tr>
                </tbody>
            </table>
            <div id="bw_foot">
                <%--                    <c:if test="${customer != null}">--%>
                <a href="/community/detail?bno=${detail.bno}&title=${detail.bno}&context=${detail.context}">
                    <button type="button" class="btn_write btn_modify">글쓰기</button>
                </a>
                <%--                    </c:if>--%>
                <a href="/community/detail?bno=${detail.bno}&title=${detail.bno}&context=${detail.context}">
                    <button type="button" class="btn_write btn_cancel">취소</button>
                </a>
            </div>
        </form>
    </div>
</div>
</div>
</body>
</html>
