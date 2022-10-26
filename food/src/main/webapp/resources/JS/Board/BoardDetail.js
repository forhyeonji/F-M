$(function () {
    $('#save').hide();
    const dColumns = ["vote", "bno", "title", "user_id"];
    const boardDetail = () => {
        $.ajax({
            type: 'GET',
            url: `/api/detail/${bno}`,
            success: (response) => {
                if (response.code !== 'SUCCESS')
                    return;

                dColumns.map((key) => $(`#${key}`).val(response.result.data[key]));
                $('.b_title').val(ChangeOutputValue($('.b_title').val()));
                loginCheck();
            },
            error: (error) => {
                console.error(error)
            }
        });
    }
    $('#cm-back-list').click(() => {
        location.href=`/community`
    })
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
                ]
            });

            $("#title").attr("readOnly", false);
            $('#save').show();
            $("#btn_modify").hide();
            $(`#btn_delete`).hide();
            $(`.btn_cancel`).hide();
            $('#cm_vote').hide();
            $('#cm_reply').hide();
            $('#footer').hide();
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

                $("#title").attr("readOnly", true);
                $(`#btn_delete`).show();
                $(`.btn_cancel`).show();
                $("#btn_modify").show();
                $('#save').hide();
                $('#cm_vote').show();
                $('#cm_reply').show();
                $('#footer').show();
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
                        location.href = "/community";
                    }
                })
            } else {
                location.href = `/detail/${bno}`
            }
        })
    }

    const onCheckVote = () => {
        let voteCheck;
        $.ajax({
            type: `post`,
            url: `/api/vote/check`,
            data: JSON.stringify({"user_id": session_id, "bno": bno}),
            async:false,
            contentType: "application/json; charset=utf-8",
            success: (data) => {
                if (data.result.check == 1) {
                    $('#vote_btn').attr("value", "favorite");
                } else {
                    $('#vote_btn').attr("value", "favorite_border");
                }

                voteCheck = data.result.check;
            }
        })
        return voteCheck;
    }

    const onClickVote = () => {
        $('.material-icons').click(() => {
            if(onCheckVote() == 0) {
                $.ajax({
                    url: `/api/vote/add`,
                    type: `put`,
                    data: JSON.stringify({"user_id": session_id, "bno": bno}),
                    contentType: "application/json; charset=utf-8",
                    success: (data) => {
                        onVote();
                        votePlus()
                    }
                })
            }else{
                $.ajax({
                    url: `/api/vote/remove`,
                    type: `delete`,
                    data: JSON.stringify({"user_id": session_id, "bno": bno}),
                    contentType: "application/json; charset=utf-8",
                    success: (data) => {
                        onEmptyVote();
                        voteMinus()
                    }
                })
                onVoteCount();
            }
            onCheckVote();
            onVoteCount();
        })
    }

    const onVoteCount = () => {
        $.ajax({
            url:`/api/vote/count/${bno}`,
            type:`post`,
            data:JSON.stringify({"bno":bno}),
            contentType: "application/json; charset=utf-8",
            success: (data) => {
                $('#vote_cnt').text(data.result.count);
            }
        })
    }

    const onVote = () => {
        $('#vote_btn').attr("value", "favorite")
        $(':focus').blur();
    }
    const onEmptyVote = () => {
        $('#vote_btn').attr("value", "favorite_border")
        $(':focus').blur();
    }
    const loginCheck = () => {
        if(session_id !== 'null'){
            $('#vote_btn').removeAttr("disabled");
        }
    }

    const votePlus = () => {
        $.ajax({
            url:`/api/vote/cntup`,
            type:`post`,
            data:JSON.stringify({"bno":bno}),
            contentType: "application/json; charset=utf-8",
            success: (data) => {

            }
        })
    }
    const voteMinus = () => {
        $.ajax({
            url:`/api/vote/cntdown`,
            type:`post`,
            data:JSON.stringify({"bno":bno}),
            contentType: "application/json; charset=utf-8"
        })
    }

    onCheckVote();
    onVoteCount();
    onClickVote();
    boardDetail();
    onModify();
    onDelete();
})
