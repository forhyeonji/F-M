"use strict"
$(function () {
    const columns = ["bno", "title", "cnt", "reg_dt", "user_id", "vote"];
    const pagination = {
        page: 1,
        size: 10,
        count: 0,
        total: 0,
        groupSize: 3,
        title: '',
        cd: '01'
    }
    const onNormalCss = () => {
        $('.cm-menus').css({
            "color": "black",
            "font-weight": "normal",
            "background":"none"
        })
    }
    const onBoldCss = (e) => {
        $(e).css({
            "color": "orange",
            "font-weight": "bold",
            "background":"#FFEBC1"
        })
    }
    const onMenus = () => {
        $('.cm-nav').click((e) => {
            const $this = $(e.target);
            pagination.cd = $this.data("cd");

            $("#cm-category").empty();
            $("#cm-category").append($this.text())
            $('#cm_popular').css({
                "text-decoration": "none",
                "color": "black"
            })

            onNormalCss();
            onBoldCss(e.target);
            onCommunityList();
        })
    }


    const isCommunityListBody = (data = []) => {
        $('#cm-tbody').empty();

        let html = ``;
        if (data.length === 0) {
            html += `<tr style="height:40px;"><td>데이터 없음</td></tr>`
        } else {
            data.map((value) => {
                html += `<tr class="detail" id="detail-${value['bno']}">`
                columns.map((key) => html += `<td class="cm-content">${value[key]}</td>`);
                html += `</tr>`
            });
        }

        $('#cm-tbody').append(html);

        $('.detail').click((e) => {
            const bno = $(e.target).parent()[0].id.split("-")[1];
            location.href = `/detail/${bno}`;
        })
    };

    const isCommunityRankListBody = (data = []) => {
        $('#cm-tbody').empty();

        let html = ``;
        if (data.length === 0) {
            html += `<tr><td>데이터 없음</td></tr>`
        } else {
            data.map((value) => {
                html += `<tr class="detail" id="detail-${value['bno']}">`
                columns.map((key) => html += `<td>${value[key]}</td>`);
                html += `</tr>`
            });
        }

        $('#cm-tbody').append(html);

        $('.detail').click((e) => {
            const bno = $(e.target).parent()[0].id.split("-")[1];
            location.href = `/detail/${bno}`;
        })
    };

    const onCommunityRankList = () => {
        $.ajax({
            type: 'POST',
            url: "/community/rank",
            contentType: "application/json; charset=utf-8",
            data: JSON.stringify(pagination),
            success: (response) => {
                if (response.code !== 'SUCCESS')
                    return;
                isCommunityRankListBody(response.result.data);
                isPagination(response.result.count);
            },
            error: (error) => {
                console.log(error)
            }
        });
    }
    const onPopular = () => {
        $('#cm_popular').click(() => {
            $('#cm-home').css({
                "text-decoration": "none",
                "color": "black"
            })
            $('#cm_popular').css({
                "text-decoration": "underline",
                "color": "darkorange"
            });
            onCommunityRankList();
        })
    }

    const isPagination = (count) => {
        if (pagination.count === count)
            return;
        pagination.count = count;

        $('#pagination').empty();

        let html = ``;
        const total = Math.floor(count / pagination.size) + (count % pagination.size !== 0 && 1);
        pagination.total = total;

        html += `<div class="page" id="page-pre">이전</div>`
        for (let i = 0; i < pagination.total; i++) {
            html += `<div class="page ${pagination.groupSize >= i + 1 ? '' : 'page-hide'}" id="page-${i + 1}">${i + 1}</div>`
        }
        html += `<div class="page" id="page-next">다음</div>`

        $('#pagination').append(html);

        $('.page').click((e) => {
            const temp = e.target.id.split("-")[1];
            let page;
            if (temp == 'pre')
                page = pagination.page - 1;
            else if (temp == 'next')
                page = pagination.page + 1;
            else
                page = +e.target.id.split("-")[1];

            if (page < 1 || page > pagination.total)
                return;

            onPagination(page);
        });
        $(`#page-1`).addClass("select");
    }

    const onPagination = (page) => {
        $(`#page-${pagination.page}`).removeClass("select");
        $(`#page-${page}`).addClass("select");

        for (let i = 1; i <= pagination.total; i++) {
            if ((i >= page - pagination.groupSize / 2) && (i <= page + pagination.groupSize / 2))
                $(`#page-${i}`).removeClass("page-hide");
            else
                $(`#page-${i}`).addClass("page-hide");
        }
        pagination.page = page;
        onCommunityList();
        onPopular();
    }

    const onCommunityList = () => {
        $.ajax({
            type: 'POST',
            url: "/community/",
            contentType: "application/json; charset=utf-8",
            data: JSON.stringify(pagination),
            success: (response) => {
                if (response.code !== 'SUCCESS')
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
        $('#search_btn').click(() => {
            pagination.title = $('#b_so').val();
            pagination.page = 1;

            onCommunityList();
            onPopular();
        });
    }
    const onHomeClick = () => {
        $('#cm_home').click(() => {
            $('#cm_popular').css({
                "text-decoration": "none",
                "color": "black"
            })
            onCommunityList();
        })
    }

    onMenus();
    onHomeClick();
    onPopular();
    onCommunityList();
    onSearch();
});