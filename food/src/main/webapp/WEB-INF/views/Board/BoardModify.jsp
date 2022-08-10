<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>
<div id="container">
    <div id="content">
        <form method="post">
            <table class="table table-striped" style="text-align: center; border: 1px solid #dddddd">
                <thead>
                <tr>
                    <td><input type="text" class="form-control" name="title"
                               maxlength="50" value="${detail.title}"></td>
                    <td><input type="text" name="bno" value="${detail.bno}">
                    </td>
                </tr>
                </thead>
                <tbody>
                <tr>
                     <td><textarea style="resize:none" class="form-control"
                        name="content" maxlength="2048" rows="20" cols="60">${detail.content}</textarea>
                    </td>
                </tr>
                </tbody>
            </table>
            <div class="board_btn">
                <input type="submit" value="수정" formaction="bread">
                <input type="submit" value="취소" formaction="boardDetail">
            </div>
        </form>
    </div>
</div>
</body>
</html>
