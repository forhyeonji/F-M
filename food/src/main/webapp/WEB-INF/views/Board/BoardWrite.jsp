<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div id="container">
    <div id="content">
        <form method="post" encType = "multipart/form-data">
            <table class="table table-striped" style="text-align: center; border: 1px solid #dddddd">
                <thead>
                <tr>
                    <th>게시판 글쓰기 양식</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td><input type="text" class="form-control" placeholder="글 제목" name="bbsTitle" maxlength="50"></td>
                </tr>

<%--                <tr>--%>
<%--                    <td><input type="text" class="form-control" placeholder="주소" name="map" maxlength="50"></td>--%>
<%--                </tr>--%>
                <tr>
                    <td><textarea style="resize : none;"  class="form-control" placeholder="글 내용" name="bbsContent" maxlength="2048"></textarea></td>
                </tr>
                <tr>
                    <td><input type="file" name="fileName"></td>
                </tr>
                </tbody>
            </table>
            <input type="submit" value="글쓰기">
        </form>
    </div>
</div>
</body>
</html>
