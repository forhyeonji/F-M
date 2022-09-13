<%@ include file="../Header/CommunityHeader.jsp" %>
<%@ page contentType="text/html; charset=UTF-8" language="java"  pageEncoding="UTF-8"%>
    <div id="container">
        <div id="content">
            <form id="form_register">
                <input type="text" name="uesr_id" id="user_id" value="${user_id}" hidden>
                <input type="text" name="bno" id="bno" value="${bno}" hidden>
                <div class="click2edit">${context}</div>
                <table class="b_table">
                    <thead id="write_head">
                    <tr>
                        <th>게시물 작성</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td><input type="text" id="title" class="form-control mb-2 .b_title"  placeholder="제목을 입력하세요." name="title">
                        </td>
                    </tr>
                    <tr>
                        <td><textarea id="summernote"
                                      name="context"></textarea></td>
                    </tr>
                    </tbody>
                </table>
                <div id="bw_foot">
                    <button type="button" id="b_write_btn" class="btn_write">글쓰기</button>
                    <button type="button" id="btn_write_cancel" class="btn_write">취소</button>
                </div>
            </form>
        </div>
    </div>
</div>
<script>
    let bno='${bno}';
</script>
<script src="/resources/JS/Board/BoardWrite.js"></script>
</body>
</html>
