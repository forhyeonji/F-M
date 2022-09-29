$(function () {
    const sColumns = ["cd_nm"];
    const menu = {
        cd_grp: `CM004`
    }

    const isSelectBox = (data = []) => {
        $('#menu').empty();

        let str = ``;
        str += `<select name="menus" id="menus">`
        data.map((value) => {
            sColumns.map((key) => str += `<option value="${value[`cd`]}">${value[`cd_nm`]}</option>`);
        })
        str += `</select>`
        console.log(str);

        $('#menu').append(str);
    }

    const onLode = () => {
        $.ajax({
            url:`/api/community/selectMenu`,
            type:`post`,
            contentType: "application/json; charset=utf-8",
            data: JSON.stringify(menu),
            success:(e) => {
                if(e.code !== 'SUCCESS')
                    return;
                isSelectBox(e.result.data)
                console.log(e.result.data);
            }
        })
    }

    const onForm = () => {
        if (!confirm('등록하시겠습니까'))
            return;

        let title = $("#title").val();
        let context = $("#summernote").val();
        let id = $("#user_id").val();
        let menus = $("#menus").val();
        $.ajax({
            url: "/community/write",
            type: "post",
            data: JSON.stringify({"title": title, "context": context, "user_id": id, "menus":menus}),
            contentType: "application/json; charset=utf-8",
            success: (data) => {
                if (data.code !== 'SUCCESS')
                    return;

                alert("등록되었습니다.");
                location.href = `/detail/${bno}`;
            },
            error: (error) => {
                console.log(error)
            }
        });
    }

    const isDefault = () => {
        $('#summernote').summernote({
            placeholder: '내용을 입력해주세요.',
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

        $('#btn_write_cancel').click(() => location.href = '/community');
        $('#b_write_btn').click(() => onForm());
    }

    onLode();
    isDefault();
});
