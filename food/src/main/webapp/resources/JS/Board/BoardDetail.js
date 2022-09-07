$(function () {
    $('#save').hide();
    const dColumns = ["bno", "title", "context", "user_id"];
    const boardDetail = () => {
        $.ajax({
            type: 'GET',
            url: `/api/detail/${bno}`,
            success: (response) => {
                if (response.code !== 'SUCCESS')
                    return;

                dColumns.map((key) => $(`#${key}`).val(response.result.data[key]));
                // console.log(response);
            },
            error: (error) => {
                console.error(error)
            }
        });
    }
    const onModify = () => {
        $("#btn_modify").click(() => {
            $('.click2edit').summernote({focus: true});

            $("#title").attr("readOnly",false);
            $('#save').show();
            $("#btn_modify").hide();
            $(`#btn_delete`).hide();
            $(`.btn_cancel`).hide();
        });
    }

    $('#save').click(() => {
        let jsondata = {
            "title": $("#title").val(),
            "context": $(".card-block").html()
        }
        $.ajax({
            type: 'put',
            url: `/modify/${bno}`,
            data: JSON.stringify(jsondata),
            contentType: "application/json; charset=utf-8",
            success: () => {
                $('.click2edit').summernote('destroy');

                $("#title").attr("readOnly",true);
                $(`#btn_delete`).show();
                $(`.btn_cancel`).show();
                $("#btn_modify").show();
                $('#save').hide();
            }
        })


    })

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
