"use strict"
$(function () {
    if(session_id == 'null'){
        $('#cm_editor').html('로그인하세요');
        $('#cm_editor').attr("contenteditable","false");

        $('#cm_reply_add').disabled= true;
    }

    const rColumns = ["user_id", "reg_dt", "context", "rno"];
    const replyPagination = {
        page: 1,
        size: 10,
        count: 0,
        context: ''
    }

    const isCommunityReplyListBody = (data = []) => {
        $('#reply_body').empty();

        let html = ``;
        data.map((value) => {
            html += `<div class="cm_reply" id="reply-${value['rno']}">`
            rColumns.map((key) => html += `<div class="cm_reply-${key}" id="cm_reply-${key}-${value['rno']}">${value[key]}</div>`);
            html += `<div id="cm_reply_btn"><div id="cm_reply_delete-${value['rno']}" style="display:block"><input type="button" id="cm_reply_delete_btn-${value['rno']}" value="삭제"></div></div>`
            html += `</div>`
        });

        $('#reply_body').append(html);

        data.map((value) => {
            if( value[`user_id`] != session_id){
                $(`#cm_reply_delete-${value[`rno`]}`).hide();
            }
        })
        data.map((value) => {
            $(`#cm_reply-rno-${value[`rno`]}`).hide();
            $(`#cm_reply_delete_btn-${value['rno']}`).click(() => {
                let rno = `${value['rno']}`
                onReplyDelete(rno)
            })
        })
    };

    const onReplyOption = () => {
        let str = ``;
        str += `<div class="cm_reply_option">`
        str += `<div class="cm_reply_option cm_reply_bottom">`;
        str += `<span>3000/3000</span><input type="button" id="cm_reply_add" class="btn_write" value="작성">`;
        str += `</div></div>`;

        $('#cm_reply_textarea').append(str);

        $('#cm_reply_add').click(function () {
            if (document.getElementById("cm_editor").innerText === '') {
                alert("댓글을 입력하세요");

            } else {
                onReplyWrite();
            }
        });
    };

    const isPagination = (count) => {
        if (replyPagination.count === count)
            return;
        replyPagination.count = count;

        $('#pagination').empty();

        let html = ``;
        const replyTotal = Math.floor(count / replyPagination.size) + (count % replyPagination.size !== 0 && 1);

        for (let i = 0; i < replyTotal; i++) {
            html += `<div class="page" id="page-${i + 1}">${i + 1}</div>`
        }

        $('#pagination').append(html);

        $('.page').click((e) => {
            const page = +e.target.id.split("-")[1];
            onPagination(page);
        });
        $(`#page-1`).attr("class", "select");
    }

    const onPagination = (page) => {
        $(`#page-${replyPagination.page}`).removeAttr("class", "select");
        $(`#page-${page}`).attr("class", "select");

        replyPagination.page = page;
        onReply();
    }

    const onReply = () => {
        $.ajax({
            type: `post`,
            url: `/api/reply/${bno}`,
            contentType: "application/json; charset=utf-8",
            data: JSON.stringify(replyPagination),
            success: (data) => {
                isCommunityReplyListBody(data.result.data);
                isPagination(data.result.count);
            }
        })
    };

    const onReplyWrite = () => {
        let text = document.getElementById("cm_editor").innerText;
        let id = document.getElementById("session_id").innerText;
        let bno = document.getElementById("bno").value;
        $.ajax({
            type: `post`,
            url: `/api/reply/write`,
            contentType: "application/json; charset=utf-8",
            data: JSON.stringify({context: text, bno: bno, user_id: id}),
            success: (data) => {
                document.getElementById("cm_editor").innerText = '';

                onReply();
            }
        })
    }

    const onReplyDelete = (rno) => {
        $.ajax({
                type:`delete`,
                url:`/api/reply/delete`,
                contentType: "application/json; charset=utf-8",
                data:JSON.stringify(rno),
                success:() => {
                    onReply();
                }
            })
    }

    onReplyOption();
    onReply();
});