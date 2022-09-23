"use strict"
$(function (){
    const columns = ["bno", "title", "cnt", "reg_dt", "user_id", "vote"];
    const pagination = {
        page : 1,
        size: 10,
        count: 0,
        title: ''
    }

    const isCommunityListBody = (data = []) => {
        $('#b_tbody').empty();

        let html = ``;
        if(data.length === 0){
            html += `<tr><td>데이터 없음</td></tr>`
        } else{
            data.map((value) => {
                html += `<tr class="detail" id="detail-${value['bno']}">`
                columns.map((key) => html += `<td class="cmList-${value[key]}">${value[key]}</td>`);
                html += `</tr>`
            });
        }

        $('#b_tbody').append(html);

        $('.detail').click((e) => {
            const bno = $(e.target).parent()[0].id.split("-")[1];
            location.href = `/detail/${bno}`;
        })
    };

    const isCommunityRankListBody = (data = []) => {
        $('#b_tbody').empty();

        let html = ``;
        if(data.length === 0){
            html += `<tr><td>데이터 없음</td></tr>`
        } else{
            data.map((value) => {
                html += `<tr class="detail" id="detail-${value['bno']}">`
                columns.map((key) => html += `<td>${value[key]}</td>`);
                html += `</tr>`
            });
        }

        $('#b_tbody').append(html);

        $('.detail').click((e) => {
            const bno = $(e.target).parent()[0].id.split("-")[1];
            location.href = `/detail/${bno}`;
        })
    };

    const onCommunityRankList = () => {
        $.ajax({
            type: 'POST',
            url: "/community/bread/rank",
            contentType: "application/json; charset=utf-8",
            data: JSON.stringify(pagination),
            success: (response) => {
                console.log(response)
                if(response.code !== 'SUCCESS')
                    return;
                isCommunityRankListBody(response.result.data);
                isPagination(response.result.count);
            },
            error: (error) => {
                console.log(error)
            }
        });
    }
    const onPopular =() =>{
        $('#cm_popular').click(() => {
            onCommunityRankList();
        })
    }

    const isPagination = (count) => {
        if(pagination.count === count)
            return;
        pagination.count = count;

        $('#pagination').empty();

        let html = ``;
        const total = Math.floor(count / pagination.size) + (count % pagination.size !== 0 && 1);

            for(let i=0; i<total; i++){
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
        $(`#page-${pagination.page}`).removeAttr("class", "select");
        $(`#page-${page}`).attr("class", "select");

        pagination.page = page;
        onCommunityList();
        onPopular();
    }

    const onCommunityList = () => {
        $.ajax({
            type: 'POST',
            url: "/community/bread",
            contentType: "application/json; charset=utf-8",
            data: JSON.stringify(pagination),
            success: (response) => {
                if(response.code !== 'SUCCESS')
                    return;
                isCommunityListBody(response.result.data);
                isPagination(response.result.count);
            },
            error: (error) => {
                console.log(error)
            }
        });
    }

    const onSearch = () => {
        $('#search_btn').click(()=> {
            pagination.title = $('#b_so').val();
            pagination.page = 1;

            onCommunityList();
            onPopular();
        });
    }
    const onHomeClick = () =>{
        $('#cm_home').click(() => {
            onCommunityList();
        })
    }

    onHomeClick();
    onPopular();
    onCommunityList();
    onSearch();
});