<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>
<div id="container">
    <div id="content">
        <form method="post" encType="multipart/form-data">
            <table class="table table-striped" style="text-align: center; border: 1px solid #dddddd">
                <thead>
                <tr>
                    <td><input type="text" class="form-control" name="bbsTitle"
                               maxlength="50" style="width:443px;"></td>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td><textarea style="resize : none;" class="form-control"
                                  name="bbsContent" maxlength="2048" rows="20" cols="60"></textarea></td>
                </tr>
                </tbody>
            </table>
            <div class="board_btn">
                <input type="submit" value="수정" formaction="BoardModifyServer">
                <input type="submit" value="취소" formaction="BoardDetail">
            </div>
        </form>
    </div>
</div>
</body>
</html>
