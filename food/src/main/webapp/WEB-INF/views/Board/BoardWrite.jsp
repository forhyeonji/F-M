<%@ include file="../Header/Header.jsp" %>
<%@ page contentType="text/html; charset=UTF-8" language="java"  pageEncoding="UTF-8"%>
    <div id="container">
        <div id="content">
                <input type="text" name="uesr_id" id="user_id" value="${user_id}" readonly>
                <input type="text" name="bno" id="bno" value="${bno}" readonly>
                <table class="b_table">
                    <thead>
                    <tr>
                        <th>게시물 작성</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td><input type="text" id="title" class="b_title" placeholder="글 제목" maxlength="50" name="title">
                        </td>
                    </tr>
                    <tr>
                        <td><textarea class="b_text" id="context" placeholder="글 내용"
                                      maxlength="2048" name="context"></textarea></td>
                    </tr>
                    <tr>
                        <td id="b_file"><input type="file" name="fileName"></td>
                    </tr>
                    </tbody>
                </table>
                <div id="bw_foot">
                    <button type="button" id="b_write_btn" class="btn_write">글쓰기</button>
                    <button type="button" id="btn_write_cancel" class="btn_write">취소</button>
                </div>
        </div>
    </div>
</div>
<script>
    let bno='${bno}';
</script>
</body>
</html>
