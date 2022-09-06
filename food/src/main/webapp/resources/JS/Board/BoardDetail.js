$(function () {
    const dColumns = ["bno", "title", "context", "user_id"];
    const boardDetail = () => {
        $.ajax({
            type: 'GET',
            url: `/api/detail/${bno}`,
            success: (response) => {
                if (response.code !== 'SUCCESS')
                    return;

                dColumns.map((key) => $(`#${key}`).val(response.result.data[key]));
                console.log(response);
            },
            error: (error) => {
                console.error(error)
            }
        });
    }
    const onModify = () => {
        $("#btn_modify").click(() => {
            location.href = `/write/${bno}`;
        });
    }

    const onDelete = () => {
        $("#btn_delete").click(() => {
            let chk = confirm("진짜 삭제할건가요");

            if (chk) {
                $.ajax({
                    type: 'delete',
                    url: `/api/delete/${bno}`,
                    data: JSON.stringify({"data": $("#bno").val()}),
                    contentType: "application/json; charset=utf-8",
                    success: (data) => {
                        alert("삭제되었습니다.");
                        location.href = "/community/bread";
                    }
                })
            } else {
                location.href = `/detail/${bno}`
            }
        })
    }

    boardDetail();
    onModify();
    onDelete();
})
