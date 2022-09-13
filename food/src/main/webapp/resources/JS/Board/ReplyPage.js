"use strict"
$(function (){
    const rColumns = ["context", "reg_dt", "user_id","bno"];
    const replyPagination = {
        page : 1,
        size: 10,
        count: 0,
        context: ''
    }

    const isCommunityReplyListBody = (data = []) => {
        $('#reply_body').empty();

        let html = ``;
        data.map((value) => {
            html += `<div class="cm_reply" id="reply-${value['bno']}">`
            rColumns.map((key) => html += `<div>${value[key]}</div>`);
            html += `</div>`
        });

        $('#reply_body').append(html);
    };

    const isPagination = (count) => {
        if(replyPagination.count === count)
            return;
        replyPagination.count = count;

        $('#pagination').empty();

        let html = ``;
        const replyTotal = Math.floor(count / replyPagination.size) + (count % replyPagination.size !== 0 && 1);

        for(let i=0; i<replyTotal; i++){
            html += `<div class="page" id="page-${i+1}">${i+1}</div>`
        }

        $('#pagination').append(html);

        $('.page').click((e)=> {
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
            type:`POST`,
            url:`/api/reply/${bno}`,
            contentType: "application/json; charset=utf-8",
            data: JSON.stringify(replyPagination),
            success: (data) => {
                console.log(data);
                isCommunityReplyListBody(data.result.data);
                isPagination(data.result.count);
            }
        })
    }
    onReply();
});