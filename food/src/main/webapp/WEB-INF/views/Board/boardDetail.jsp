<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>
<div id="container">
    <div id="content">
        <form method="get" encType="multipart/form-data">
            <table class="table table-striped" style="text-align: center; border: 1px solid #dddddd">
                <thead>
                <tr>
                    <td><input type="text" readonly class="form-control" name="bbsTitle"
                               maxlength="50" style="width:443px;"></td>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td><textarea style="resize : none;" readonly class="form-control"
                                  name="bbsContent" maxlength="2048" rows="20" cols="60"></textarea></td>
                </tr>
                </tbody>
            </table>
            <div class="board_btn">
                <input type="submit" value="목록" formaction="bread">
                <input type="submit" value="수정" formaction="boardModify">
                <input type="submit" value="삭제">
            </div>
        </form>
    </div>
</div>
</body>
</html>
