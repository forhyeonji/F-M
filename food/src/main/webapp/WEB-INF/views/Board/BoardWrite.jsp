<%@ include file="../Header/Header.jsp" %>
<%@ page contentType="text/html; charset=UTF-8" language="java"  pageEncoding="UTF-8"%>
    <div id="container">
        <div id="content">
            <form method="get" action="/community/bread" accept-charset="UTF-8" id="bwrite_form">
                <input type="text" name="id" id="userId" value="${id.user_id}">
                <table class="b_table">
                    <thead>
                    <tr>
                        <th>게시물 작성</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td><input type="text" class="b_title" placeholder="글 제목" maxlength="50" name="title">
                        </td>
                    </tr>
                    <tr>
                        <td><textarea class="b_text" placeholder="글 내용"
                                      maxlength="2048" name="context"></textarea></td>
                    </tr>
                    <tr>
                        <td id="b_file"><input type="file" name="fileName"></td>
                    </tr>
                    </tbody>
                </table>
                <div id="bw_foot">
                    <button type="submit" class="btn_write">글쓰기</button>
                    <a href="http://localhost:8080/bread"><button type="button" class="btn_write btn_cancel">취소</button></a>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>
