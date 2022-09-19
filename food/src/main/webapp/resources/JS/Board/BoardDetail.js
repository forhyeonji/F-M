$(function () {
    $('#save').hide();
    const dColumns = ["bno", "title", "user_id"];
    const boardDetail = () => {
        $.ajax({
            type: 'GET',
            url: `/api/detail/${bno}`,
            success: (response) => {
                if (response.code !== 'SUCCESS')
                    return;

                dColumns.map((key) => $(`#${key}`).val(response.result.data[key]));
                $('.b_title').val(ChangeOutputValue($('.b_title').val()));

            },
            error: (error) => {
                console.error(error)
            }
        });
    }
    //특수문자 함수
    function ChangeOutputValue(pValue) {
        var strReturenValue = "";
        strReturenValue = pValue.replace(/&amp;/gi, '&').replace(/&lt;/gi, '<').replace(/&gt;/gi, '>').replace(/&quot;/gi, '"').replace(/&apos;/gi, '\'').replace(/&nbsp;/gi, ' ');
        return strReturenValue;
    }

    const onModify = () => {
        $("#btn_modify").click(() => {
            $('.click2edit').summernote({
                height: 300,
                minHeight: 300,
                maxHeight: 500,
                toolbar: [
                    ['style', ['style']],
                    ['font', ['bold', 'underline', 'clear']],
                    ['color', ['color']],
                    ['para', ['ul', 'ol', 'paragraph']],
                    ['table', ['table']],
                    ['insert', ['picture']],
                ]});

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
